require_relative "parser"

module Writer
    def write_id(id)
        "[MJOLL-#{id}]:"
    end

    def write_title(title)
        "#{title}"
    end

    def write_assignee(engineer)
        "(#{engineer})"
    end

    # just like "unplanned" task
    def write_special_flag
       "unplanned" 
    end

    def write_comment(comment)
        "#{comment}"
    end
end

class Textwriter
    include Writer
    def initialize(filename)
        @ofile = File.open(filename, "w")
    end

    def write(data)
        puts "sleep..."
    end

end


reader = JiraReader.new
reader.read_title
reader.read_status
reader.read_last_update
reader.test_reader

txt = Textwriter.new("mail.txt")
for i in 0..reader.get_jira_count
    txt.write(reader.get_one_jira(i))
end



