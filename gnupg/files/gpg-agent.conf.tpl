# Cache passphrases for a reasonable window so common workflows
# (sign-commit, then sign-tag) don't re-prompt. 10 min default,
# 2 h ceiling — adjust if you live in `git commit -S` all day.
default-cache-ttl 600
max-cache-ttl 7200

# SSH cache uses the same shape; matches above.
default-cache-ttl-ssh 600
max-cache-ttl-ssh 7200

# GUI pinentry on macOS. pinentry-mac is a separate brew formula
# and ships at the Apple Silicon Homebrew path; change for Intel.
pinentry-program {{ pinentry_program }}
