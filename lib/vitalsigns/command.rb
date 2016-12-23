require 'open3'
require 'json'

module Vitalsigns
  class Command
    def execute(command, options={})
      Open3.popen3(command) do |stdin, stdout, stderr, wait_thr|
        return stdout.read
      end
    end

    def parse(output)
      puts output
    end
  end
end