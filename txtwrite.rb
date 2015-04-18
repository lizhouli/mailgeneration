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

    def write_status(status)
        "- #{status}\n"
    end 

    # just like "unplanned" task
    def write_special_flag(flag)
        flag == "unplanned" ? "(${flag})\n" : "\n"
    end

    def write_comment(comment)
        "- #{comment}\n"
    end
end

class Textwriter
    include Writer
    def initialize(filename)
        @ofile = File.open(filename, "w+")
    end

    def write(data)
        id = data[0].to_s.gsub(/^.*MJOLL-/, "")
        title = data[1]
        assignee = data[2]
        status = data[3]
        label = data[4]
        comment = data[5]
        if (status != "new")
            @ofile.write write_id(id) + write_title(title) + write_assignee(assignee) + write_special_flag(label)
            @ofile.write write_comment(comment)
            @ofile.write write_status(status)
            @ofile.write("\n")
        end
    end

end


reader = JiraReader.new("jira.txt")
reader.read_all

txt = Textwriter.new("mail.txt")
for i in 0..reader.get_jira_count-1
    txt.write(reader.get_one_jira(i))
end



