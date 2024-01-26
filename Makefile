render:
	yaml-readme -p 'items/*.md'

init-env:
	curl https://linuxsuren.github.io/tools/install.sh|bash
	hd i yaml-readme
	hd i cli/cli
	gh repo fork --remote
	gh repo set-default devops-ws/learn-code
