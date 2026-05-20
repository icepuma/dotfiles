# Route private-key ops through gpg-agent. Default in GPG 2.x and
# silently ignored, but kept explicit for clarity and older clients.
use-agent

# Long key IDs everywhere — short IDs are trivially collidable.
keyid-format 0xlong
with-fingerprint

# Strong defaults for ciphers, digests, and compression. SHA1 is
# absent from every preference list; AES256 leads.
personal-cipher-preferences AES256 AES192 AES
personal-digest-preferences SHA512 SHA384 SHA256
personal-compress-preferences ZLIB BZIP2 ZIP Uncompressed
default-preference-list SHA512 SHA384 SHA256 AES256 AES192 AES ZLIB BZIP2 ZIP Uncompressed

# Cert + S2K hardening for new keys. `s2k-count` is intentionally
# absent — GnuPG 2.1+ auto-calibrates the iteration count to ~100ms
# on the local machine; pinning a fixed value caps that on fast
# hardware (and was the only place an outdated value would hurt).
cert-digest-algo SHA512
s2k-cipher-algo AES256
s2k-digest-algo SHA512
s2k-mode 3

# Refuse SHA1-signed material. SHA1 is already downweighted in
# modern GnuPG, but an explicit reject prevents silent acceptance
# of signatures from very old keys that still emit it.
weak-digest SHA1

# Reduce surface that leaks into signatures / output.
no-emit-version
no-comments
no-greeting

# Keyserver: keys.openpgp.org is privacy-preserving (verified
# addresses only, no third-party signatures). Override per host
# by editing the templated keyserver var.
keyserver {{ keyserver }}
