local status_ok, autosession = pcall(require, "auto-session")
if not status_ok then
  return
end

autosession.setup({
  log_level = 'info',
  auto_session_enable_last_session = false,
  auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
  auto_session_enabled = true,
  auto_save_enabled = true,
  auto_restore_enabled = true,
  auto_session_suppress_dirs = nil,
  auto_session_use_git_branch = true,
  -- the configs below are lua only
  bypass_session_save_file_types = nil
})