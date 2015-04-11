require_relative "parser"

module Writer
    def write_id(id)
        "[MJOLL-#{id}]: "
    end

    def write_title(title)
        "#{title} "
    end

    def write_assignee(engineer)
        "(#{engineer})"
    end

    # just like "unplanned" task
    def write_special_flag(flag)
        flag == "unplanned" ? "(${flag})\n" : "\n"
    end

    def write_comment(comment)
        "- #{comment}"
    end
end

class Textwriter
    include Writer
    def initialize(filename)
        @ofile = File.open(filename, "w+")
    end

    def write(data)
        id = data[0]
        title = data[1]
        assignee = data[2]
        status = data[3]
        label = data[4]
        comment = data[5]
        if (status.to_s.length() > 0)
            @ofile.write write_id(id) + write_title(title) + write_assignee(assignee) + write_special_flag(label)
            @ofile.write write_comment(comment)
        end
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



