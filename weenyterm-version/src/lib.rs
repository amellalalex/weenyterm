pub fn weenyterm_version() -> &'static str {
    // See build.rs
    env!("WEZTERM_CI_TAG")
}

pub fn weenyterm_target_triple() -> &'static str {
    // See build.rs
    env!("WEZTERM_TARGET_TRIPLE")
}
