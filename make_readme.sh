#!/bin/bash
# Regenerates README.md from terminal_tutorial.qmd, so the GitHub landing
# page always shows the tutorial content. Run this after editing the .qmd.
set -euo pipefail
cd "$(dirname "$0")"

{
  echo "# Working from the terminal 101"
  echo "## Author: Pablo Baceiredo Macho"
  echo
  awk 'BEGIN{c=0} /^---$/{c++; next} c>=2{print}' terminal_tutorial.qmd
} > README.md

echo "README.md regenerated from terminal_tutorial.qmd"
