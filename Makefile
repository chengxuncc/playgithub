upgrade:
	set -x
	set version=$(date +%s)
	echo -e "## [$version]\n\n### Changed\n - Auto update\n" >> CHANGELOG.md
	git add .
	git commit -m "auto commit"
	git tag v$(date +%s)
	git push --tags