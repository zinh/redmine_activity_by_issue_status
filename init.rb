Redmine::Plugin.register :activity_by_issue_status do
  name 'Activity By Issue Status plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  ActionDispatch::Callbacks.to_prepare do
    require 'time_entry_activity_patch'
    require 'issue_status_patch'
    require 'timelog_helper_patch'
  end
end
