class TimeEntryActivityIssueStatus < ActiveRecord::Base
  unloadable
  belongs_to :time_entry_activity
  belongs_to :issue_status
end
