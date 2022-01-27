# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'regressions/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'regressions'
  spec.version     = Regressions::VERSION
  spec.authors     = ['lidijarad']
  spec.email       = ['test@gmail.com']
  spec.homepage    = 'https://github.com/lidijarad/regressions'
  spec.summary     = 'Summary of Regressions.'
  spec.description = 'A Rails engine to help you track regressions to ApplicationRecord models leveraging paper_trail'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.test_files = Dir["spec/**/*"]


  spec.add_dependency 'rails', '~> 6.0.4', '>= 6.0.4.1'
  spec.add_dependency 'paper_trail'
  spec.add_development_dependency 'rubocop'

  spec.add_dependency 'sass-rails', '>= 5.0'
  spec.add_dependency 'jquery-rails', '>= 4.3.0'
  spec.add_dependency 'bootstrap-sass', '>= 3.4.0'
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency 'pry-rails'

  spec.add_development_dependency 'sqlite3'
end
