module Regressions
  module Helpers

    def check_for_changes
      if self.saved_changes.present? &&
         (self.saved_changes.keys &
          self.tracked_columns).present? &&
         self.respond_to?(:notify_change)

        self.notify_change
      end
    end
  end
end
