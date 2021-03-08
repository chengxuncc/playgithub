set -x
version=0."$(date +%s)"
echo -e "## [$version](../../releases/tag/v$version)\n\n### Changed\n - Auto update\n" >>CHANGELOG.md
git add .
git commit -m "auto commit"
git tag v"$version"
git push
git push --tags
