if is_macos() then
    packages("brew", {"git", "fd", "ripgrep"}, {
        state = "present"
    })
end
