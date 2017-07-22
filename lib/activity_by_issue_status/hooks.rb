module ActivityByIssueStatus
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_issues_edit_notes_bottom,
      :partial => 'hooks/activity_by_issue_status/view_issues_edit_notes_bottom'
  end
end
