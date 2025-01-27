return {
  default_config = {
    cmd = {
        'clangd',
        "--background-index",
        "--clang-tidy",
        "--completion-style=bundled",
        "--header-insertion=iwyu"
    },
    filetypes = { 'c', 'cpp', 'cxx', 'objc', 'objcpp', 'cuda', 'proto', 'h', 'hpp' },
    root_markers = {
        '.clangd',
        '.clang-tidy',
        '.clang-format',
        'CMakeLists.txt',
        'compile_commands.json',
        'compile_flags.txt',
        'configure.ac' -- AutoTools
    },
    single_file_support = true,
    capabilities = {
      textDocument = {
        completion = {
          editsNearCursor = true,
        },
      },
      offsetEncoding = { 'utf-8', 'utf-16' },
    },
  }
}
