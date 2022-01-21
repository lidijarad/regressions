# frozen_string_literal: true

require 'active_record'
require 'regressions/core'
require 'regressions/engine'
require 'regressions/model_config'

module Regressions
  def opsbox_track_regressions(options = {})
    class_attribute :tracked_columns, instance_writer: false

    self.tracked_columns = Array.wrap(options[:only]).map(&:to_s)
    ::Regressions::ModelConfig.new(self).setup
  end
end
