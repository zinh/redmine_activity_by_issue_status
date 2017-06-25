require_dependency 'time_entry_activity'

module ActivityByIssueStatusTimeEntryPatch
  def self.included(base)
    base.class_eval do
      has_many :time_entry_activity_issue_statuses
      has_many :issue_statuses, through: :time_entry_activity_issue_statuses
    end
  end
end

TimeEntryActivity.send(:include, ActivityByIssueStatusTimeEntryPatch)
