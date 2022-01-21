require 'regressions/helpers'

module Regressions
  module Core

    def self.included(klass)
      klass.extend ClassMethods
      klass.include ::Regressions::Helpers
    end

    module ClassMethods

      def self.extended(klass)
        klass.after_commit on: :update do
          check_for_changes
        end
      end
    end
  end
end
