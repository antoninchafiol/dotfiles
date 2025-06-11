local mason_registry = require('mason-registry')
local codelldb = mason_registry.get_package("codelldb")
local ext = codelldb:get_install_path() .. "/extension/"
local adapter = ext .. "adapter/codelldb"
local lib = ext .. "lldb/lib/"
local cfg = require('rustaceanvim.config')
vim.g.rustaceanvim = {
    dap = { adapter = cfg.get_codelldb_adapter(adapter, lib) },
}
