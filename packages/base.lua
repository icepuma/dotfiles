packages = {"git", "fd", "ripgrep", "rustup"}

if is_macos() then
    install_packages("brew", packages, {
        state = "present"
    })
end
