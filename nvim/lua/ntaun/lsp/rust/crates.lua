require("crates").setup {
    completion = { cmp = { enabled = true } },
}
-- make sure crates source is active in Cargo.toml buffers
require('cmp').setup.buffer {
    sources = { { name = "crates" } }
}
