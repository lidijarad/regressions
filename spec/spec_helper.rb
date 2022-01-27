# frozen_string_literal: true

#spec_helper.rb
require 'rspec/autorun'
Dir["#{File.dirname(__FILE__)}/**/**/*.rb"].each { |f| require f }
Rails.backtrace_cleaner.remove_silencers!

binding.pry
RSpec.configure do |config|
 config.mock_with :rspec
 config.order = "random"
end
