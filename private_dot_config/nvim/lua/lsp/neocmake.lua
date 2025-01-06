local util = require 'lspconfig.util'

return {
  default_config = {
    cmd = { 'neocmakelsp', '--stdio' },
    filetypes = { 'cmake' },
    root_dir = function(fname)
      return util.root_pattern(unpack({ 'CMakeLists.txt', '.git', 'build', 'cmake' }))(fname)
    end,
    single_file_support = true,
  },
}
