return {
  default_config = {
    cmd = { 'neocmakelsp', '--stdio' },
    filetypes = { 'cmake' },
    root_markers = { 'CMakeLists.txt', '.git', 'build', 'cmake' },
    single_file_support = true,
  },
}
