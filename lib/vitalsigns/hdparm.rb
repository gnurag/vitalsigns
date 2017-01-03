module Vitalsigns
  class Hdparm < Command
    def hdparm(device, options={})
      cmd = "hdparm -t #{device}"
      execute(cmd)
    end
  end
end