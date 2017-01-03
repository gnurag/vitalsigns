module Vitalsigns
  class Fio < Command
    def fio(directory, options={})
      cmd = "fio --name=job1 --rw=read --size=1g --output-format=json --directory=#{directory}"
      execute(cmd)
    end
  end
end