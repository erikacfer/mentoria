# frozen_string_literal: true

require 'hi_httparty'
require 'rspec/retry'
require 'json'
require 'yaml'
require 'factory_bot'
require 'require_relative'
require 'securerandom'
require 'faker'

$env = YAML.load_file("#{Dir.pwd}/lib/settings/set_environment.yml")['environment']
ENVDATA = YAML.load_file("#{Dir.pwd}/lib/settings/data/#{$env}.yml")

include HiHttparty::RequestsType
HiHttparty.configure do |config_hihttparty|
  config_hihttparty.timeout_value = 20
end

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  FactoryBot.definition_file_paths = %w[./spec/supports/models]
  config.formatter = :documentation
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.before(:suite) { FactoryBot.find_definitions }

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.verbose_retry = true
  config.display_try_failure_messages = false
end
