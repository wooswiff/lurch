# instructions for adding cucumber to gem found here: https://gist.github.com/ramontayag/1045123

ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../../spec/dummy/config/environment.rb",  __FILE__)

require 'simplecov'

module SimpleCov::Configuration
  def clean_filters
    @filters = []
  end
end

SimpleCov.configure do
  clean_filters
  load_profile 'test_frameworks'
end

ENV["COVERAGE"] && SimpleCov.start do
  add_filter "/.rvm/"
end
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
require 'lurch'

require 'rspec/expectations'

require File.expand_path("../../../spec/dummy/config/environment.rb",  __FILE__)
ENV["RAILS_ROOT"] ||= File.dirname(__FILE__) + "../../../spec/dummy"
require 'cucumber/rails'
