module Vitalsigns
  module Error
    class Error < StandardError
    end

    # Raised when command output cannot be parsed
    class Parsing < Error
    end

    # Raised when command is missing
    class CommandNotFound < Error
    end

    # Raised when command exits with error
    class CommandError < Error
    end
  end
end