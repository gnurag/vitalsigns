module Vitalsigns
  # customize Df command output
  class Df < Command
    def df(path = '/', _options = {})
      fetch_col_list = '{printf "%-35s %10s %6s %6s %4s %s\n",$1,$2,$3,$4,$5,$6}'
      cmd = 'df -ka'
      cmd += ' ' + path if path
      cmd += "| awk '#{fetch_col_list}'"
      execute(cmd)
    end

    def parse(output)
      result = {}
      col_list = []
      output.each_with_index do |line, index|
        splitted_values = line.split(' ')
        if index.zero?
          col_list = splitted_values
        else
          splitted_values.each_with_index do |val, i|
            result[:"#{col_list[i].downcase}"] = val
          end
        end
      end
      result
    end
  end
end
