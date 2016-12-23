require 'open3'
require 'json'

module Vitalsigns
  class Command
    def execute(command, options={})
      Open3.popen3(command) do |stdin, stdout, stderr, wait_thr|
        puts stdout
        return stdout
      end
    end

    def self.parse(output)
      puts output
    end
  end
end