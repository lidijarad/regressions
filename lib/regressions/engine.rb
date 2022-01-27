# frozen_string_literal: true

module Regressions
  class Engine < ::Rails::Engine
    isolate_namespace Regressions
    config.generators do |g|
      g.test_framework :rspec
      g.assets false
      g.helper false
    end
  end
end
