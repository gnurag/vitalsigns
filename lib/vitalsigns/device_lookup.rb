module Vitalsigns
  # Find device/fileSystem path
  class DeviceLookup
    class << self
      def default
        find_by_dir
      end

      def find_by_dir(dire_path = '/var')
        cmd = "df -h #{dire_path} | sed -n '2p'| awk '{ print $1}'"
        line = Vitalsigns::Command.new.execute(cmd)
        line.strip
      end
    end
  end
end
