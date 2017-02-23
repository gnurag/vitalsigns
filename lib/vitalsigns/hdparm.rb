module Vitalsigns
  # Hdparm command
  class Hdparm < Command
    def hdparm(device = nil, _options = {})
      device = Vitalsigns::DeviceLookup.default if device.nil?
      cmd = "sudo hdparm -t #{device} | awk 'NF'"
      execute(cmd)
    end

    def parse(output)
      result = {}
      output.each_with_index do |line, index|
        splitted_val = line.split(':').first
        if index.zero?
          result[:device] = splitted_val
        else
          key_name = splitted_val.strip.downcase.tr(' ', '_')
          key_val = line.split('=')[1]
          result[:"#{key_name}"] = key_val.nil? ? nil : key_val.strip
        end
      end
      result
    end
  end
end
