[user]
	name = {{ name }}
	email = {{ email }}

[init]
	defaultBranch = main

[pull]
	rebase = true

[push]
	default = current
	autoSetupRemote = true

[fetch]
	prune = true

[rebase]
	autoStash = true

[diff]
	algorithm = histogram
	colorMoved = default

[merge]
	conflictStyle = zdiff3

[color]
	ui = auto
