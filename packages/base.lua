packages = {"git", "fd", "ripgrep", "rustup"}

if is_macos() then
    packages("brew", packages, {
        state = "present"
    })
end
