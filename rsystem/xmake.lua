add_requires("cargo::rsystem", {
    configs = {
        std = false,
        main = false,
        cargo_toml = path.join(os.projectdir(), "rsystem", "Cargo.toml"),
    }
})

target("rsystem")
    set_kind("static")
    add_files("src/lib.rs")
    set_values("rust.cratetype", "staticlib")
    add_packages("cargo::rsystem")