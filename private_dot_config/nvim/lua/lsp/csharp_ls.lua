return {
  default_config = {
    cmd = { 'csharp-ls' },
    root_markers = { '*.sln', '*.csproj' },
    filetypes = { 'cs' },
    init_options = {
      AutomaticWorkspaceInit = true,
    },
  }
}
