require 'open3'
require 'json'

module Vitalsigns
  # Base class for commands
  class Command
    def execute(command)
      Open3.popen3(command) do |_stdin, stdout, _stderr, _wait_thr|
        parse(stdout)
      end
    end

    def parse(output)
      output.read
    end
  end

  def self.find_device(dire_path = '/var')
    cmd = "df -h #{dire_path} | awk '{ print $1}'"
    line = Vitalsigns::Command.new.execute(cmd)
    split_values = line.split(' ')
    return '' if split_values.empty?
    split_values[1].strip
  end
end
