local dap, dapui =require("dap"), require("dapui")
-- open DAP UI on start, close on terminate
dap.listeners.before.event_initialized["dapui_config"] = function() dapui.open() end
dap.listeners.before.event_terminated["dapui_config"]   = function() dapui.close() end
dap.listeners.before.event_exited["dapui_config"]       = function() dapui.close() end
