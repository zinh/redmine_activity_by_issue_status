require_dependency 'issue_status'

module ActivityByIssueStatusIssueStatusPatch
  def self.included(base)
    base.class_eval do
      has_many :time_entry_activity_issue_statuses
      has_many :time_entry_activities, through: :time_entry_activity_issue_statuses
    end
  end
end

IssueStatus.send(:include, ActivityByIssueStatusIssueStatusPatch)
