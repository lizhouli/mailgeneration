require_relative "parser"

class Writer
end


reader = JiraReader.new
reader.read_title
reader.read_status
reader.read_last_update
reader.test_reader