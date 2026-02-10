if is_macos() then
    packages("brew", {"git", "fd", "ripgrep", "rustup"}, {
        state = "present"
    })
end
