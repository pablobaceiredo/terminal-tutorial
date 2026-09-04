#!/bin/bash
# Regenerates README.md from terminal_tutorial.qmd, so the GitHub landing
# page always shows the tutorial content. Run this after editing the .qmd.
set -euo pipefail
cd "$(dirname "$0")"

{
  echo "# Working from the terminal 101"
  echo "## Author: Pablo Baceiredo Macho"
  echo
  # Only the first two "---" lines are the YAML frontmatter delimiters;
  # any later "---" (e.g. a horizontal rule before the footnotes) must
  # be passed through untouched.
  awk 'NR==1 && /^---$/{c=1; next} c==1 && /^---$/{c=2; next} c>=2{print}' terminal_tutorial.qmd
} > README.md

echo "README.md regenerated from terminal_tutorial.qmd"
