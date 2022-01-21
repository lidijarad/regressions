# frozen_string_literal: true

module Regressions
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
