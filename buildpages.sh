#! /bin/bash
echo "Getting lateset update to nepal.osmdown from github"
cd ~/nepal-earthquake
git stash 					#Need to stash the latest
git pull					#Update

echo "Building the page"
nodejs ~/osmdown/bin/osmdown build ~/nepal-earthquake/nepal.osmdown

echo "Building the live page"
node ~/osmdown/bin/osmdown build ~/nepal-earthquake/nepal-live.osmdown