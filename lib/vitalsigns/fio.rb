module Vitalsigns
  class Fio < Command
    def fio(directory, options={})
      cmd = "fio --directory=#{directory}"
      execute(cmd)
    end
  end
end