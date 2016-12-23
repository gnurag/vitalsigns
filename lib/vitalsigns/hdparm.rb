module Vitalsigns
  class Hdparm < Command
    def hdparm(device, options={})
      cmd = "hdparm -t"
      execute(cmd)
    end
  end
end