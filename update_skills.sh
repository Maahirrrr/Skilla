#!/bin/bash
# Skilla - GitHub Skills Auto-Updater
# Fetches the latest 2,900+ verified skills from GitHub and updates the local registry.

echo "🔄 Fetching latest skills manifest from GitHub..."
TMP_FILE=$(mktemp)

if curl -sL https://raw.githubusercontent.com/sickn33/antigravity-awesome-skills/main/skills_index.json -o "$TMP_FILE"; then
  echo "✅ Downloaded latest registry index from sickn33/antigravity-awesome-skills"
  
  node -e "
    const fs = require('fs');
    const rawData = JSON.parse(fs.readFileSync('$TMP_FILE', 'utf8'));
    
    const formattedCatalog = rawData.map(item => ({
      id: item.id,
      name: item.name.replace(/^[0-9]+-/, '').replace(/-/g, ' ').replace(/\\b\\w/g, l => l.toUpperCase()),
      category: item.category || 'general',
      description: item.description || 'Verified AI Agent playbook for autonomous development.',
      author: item.author || (item.source === 'personal' ? 'community' : 'sickn33'),
      repo_url: item.repo_url || (item.path ? 'https://github.com/sickn33/antigravity-awesome-skills/tree/main/' + item.path : 'https://github.com/sickn33/antigravity-awesome-skills'),
      tags: item.tags || [item.category || 'skill'],
      risk: item.risk || 'safe',
      source: item.source || 'community',
      badge: (item.category || 'SKILL').toUpperCase()
    }));

    fs.writeFileSync('/home/maahir/Documents/skills_data.json', JSON.stringify(formattedCatalog, null, 2));
    console.log('✅ Successfully indexed ' + formattedCatalog.length + ' skills into skills_data.json');
  "
  rm "$TMP_FILE"
  echo "🚀 Skills database updated successfully!"
else
  echo "❌ Failed to fetch from GitHub. Keeping existing local cache."
  rm -f "$TMP_FILE"
  exit 1
fi
