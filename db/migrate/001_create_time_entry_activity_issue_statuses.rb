class CreateTimeEntryActivityIssueStatuses < ActiveRecord::Migration
  def change
    create_table :time_entry_activity_issue_statuses do |t|
      t.integer :issue_status_id
      t.integer :time_entry_activity_id
    end
    add_index :time_entry_activity_issue_statuses, :issue_status_id, name: :time_entry_issue_status_id
    add_index :time_entry_activity_issue_statuses, :time_entry_activity_id, name: :time_entry_activity_id
  end
end
