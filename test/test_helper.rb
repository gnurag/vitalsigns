require 'vitalsigns'
require 'simplecov'
SimpleCov.start do
  add_filter 'test'
  add_group 'Unit', 'lib'
end

require 'minitest/autorun'
require 'minitest/reporters'

reporter_options = { color: true }
Minitest::Reporters.use! [Minitest::Reporters::ProgressReporter.new, Minitest::Reporters::DefaultReporter.new(reporter_options)]

