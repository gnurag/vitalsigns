require 'test_helper'

# Test Vitalsigns::Command
class CommandTest < Minitest::Test
  def test_execute_accepts_agruments_command
    assert_equal '', Vitalsigns::Command.new.execute('cat /dev/null')
  end
end
