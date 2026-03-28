#!/bin/bash
cd "$(dirname "$0")"
echo ""
echo "         ______________"
echo "        /             /|"
echo "       /             / |"
echo "      /____________ /  |"
echo "     | ___________ |   |"
echo "     ||           ||   |"
echo "     || r/MacApps ||   |"
echo "     ||   Audit   ||   |"
echo "     ||___________||   |"
echo "     |   _______   |  /"
echo "    /|  (_______)  | /"
echo "   ( |_____________|/"
echo "    \\"
echo " .=======================."
echo " | ::::::::::::::::  ::: |"
echo " | ::::::::::::::[]  ::: |"
echo " |   -----------     ::: |"
echo " \`-----------------------'"
echo "   u/TheMagicianGamerTMG"
echo ""
read -p "Enter app name to audit: " appname
echo ""

if [ -z "$appname" ]; then
  echo "No app name entered. Exiting."
  echo ""
  read -p "Press Enter to close..."
  exit 1
fi

./macapps-audit "$appname"

echo ""
echo "Done! CSV files saved to: $(pwd)"
echo ""
read -p "Press Enter to close..."
