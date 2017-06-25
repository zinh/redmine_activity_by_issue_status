require_dependency 'timelog_helper'

module ActivityByIssueStatusTimelogHelperPatch
  def self.included(base)
    base.send(:include, InstanceMethods)
    base.class_eval do
      alias_method_chain :activity_collection_for_select_options, :issue_status
    end
  end

  module InstanceMethods
    def activity_collection_for_select_options_with_issue_status(time_entry=nil, project=nil)
      if time_entry.present?
        activities = time_entry.issue.status.time_entry_activities
        collection = []
        if time_entry && time_entry.activity && !time_entry.activity.active?
          collection << [ "--- #{l(:actionview_instancetag_blank_option)} ---", '' ]
        end
        activities.each { |a| collection << [a.name, a.id] }
        collection
      else
        activity_collection_for_select_options_without_issue_status(time_entry, project)
      end
    end
  end
end

TimelogHelper.send(:include, ActivityByIssueStatusTimelogHelperPatch)
