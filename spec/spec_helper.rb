# frozen_string_literal: true

require "factory_bot"
require "faker"
require "pry"
require "rack/test"

require_relative "../lib/transformer"
require_relative "../api/api"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.find_definitions
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
