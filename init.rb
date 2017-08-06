require_dependency 'activity_by_issue_status/hooks'

Redmine::Plugin.register :activity_by_issue_status do
  name 'Activity By Issue Status plugin'
  author 'Vinh Nguyen'
  description 'This help filter time_log activity base on issue\'s status'
  version '0.0.4'
  ActionDispatch::Callbacks.to_prepare do
#    require 'time_entry_activity_patch'
#    require 'issue_status_patch'
    require 'timelog_helper_patch'
  end
end
