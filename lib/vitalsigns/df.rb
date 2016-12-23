module Vitalsigns
  class Df < Command
    def df(path=nil, options={})
      cmd = "df -ka"
      cmd += " " + path if path
      execute(cmd)
    end
  end
end