module EventNotificationOverride
  module Patches
    module UserPreferencePatch

      def self.included(base)
        base.class_eval do

          define_method '[]_with_override' do |attr_name|
            if attr_name.to_sym == :no_self_notified &&
                Setting.plugin_redmine_event_notification_override['enabled'].to_s == '1'
              return Setting.plugin_redmine_event_notification_override['notify_users_of_their_own_changes'] != 'all'
            else
              send('[]_without_override', attr_name)
            end
          end
          
          alias_method_chain :[], :override


        end
      end
      
    end
  end
end
