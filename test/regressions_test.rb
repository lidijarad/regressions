# frozen_string_literal: true

require 'test_helper'

module Regressions
  class Test < ActiveSupport::TestCase
    test 'truth' do
      assert_kind_of Module, Regressions
    end
  end
end
