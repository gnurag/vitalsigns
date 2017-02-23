module Vitalsigns
  #
  class Fio < Command
    def fio(directory = '/var', _options = {})
      cmd = "fio --name=job1 --rw=read --size=1g --output-format=json --directory=#{directory}"
      execute(cmd)
    end

    def parse(output)
      output = output.read
      return JSON.parse(output) unless output.include?('error=')
      split_values = output.split('error=')
      raise Vitalsigns::Error::Error, split_values.last
    end
  end
end
