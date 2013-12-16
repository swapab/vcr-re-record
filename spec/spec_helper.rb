require 'rubygems'
require 'rspec'
require 'crawler'
require 'vcr'

VCR.configure do |c|
  c.ignore_hosts 'fake-example.com'
	c.configure_rspec_metadata!
  c.hook_into :webmock
  c.cassette_library_dir = 'spec/vcr'
  c.allow_http_connections_when_no_cassette = true
end

RSpec.configure do |config|
  config.order = :rand
  config.color_enabled = true
end
