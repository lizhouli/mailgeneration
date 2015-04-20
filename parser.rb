require 'nokogiri'
require 'open-uri'

class JiraReader
	def initialize()
        @ids = []
        @assignees = []
        @statuss = []
        @labels = []
        @titles = []
        @comments = []
	end

    def read_from_file
        idfile = File.open("jira.txt", "r")
        idfile.each { |line| @ids << ('http://jira.arm.com/browse/MJOLL-' + line.to_s).chomp }
        @ids.uniq!
    end

    # not so elegant and may have bugs inside, at least it can guarantee all arrays have the same array size and 
    # for one jira, only one item will be recorded
    def read_status
        items = @doc.xpath("//span")
        status = ""
        assignee = ""
        items.each do |item|
            status = item.text.strip.gsub(/[\n\r]/, "") if item.at_xpath("@id") && item.at_xpath("@id").text.include?('status-val') 
            assignee = item.text.strip.gsub(/[\n\r]/, "") if item.at_xpath("@id") && item.at_xpath("@id").text.include?('assignee-val')
        end
        @statuss << status
        @assignees << assignee
    end

    def read_title
        items = @doc.xpath("//h1")
        title = ""
        items.each do |item|
            title << item.text.strip.gsub(/[\n\r]/, "") if item.at_xpath("@id") && item.at_xpath("@id").text.include?("summary-val")
        end
        @titles << title
    end

    def read_last_update
        items = @doc.xpath("//div")
        last_update = ""
        label = ""
        items.each do |item|
            label = item.text.strip.gsub(/[\n\r]/, "") if item.at_xpath("@class") && item.at_xpath("@class").text.include?('labels')
            last_update = item.text if item.at_xpath("@class") && item.at_xpath("@class").text.include?("action-body flooded")
        end
        @labels << (label.match(/^unplan/) ? "unplanned" : "")
        @comments << last_update.strip#.gsub(/[\n\r]/, "")
    end

    def read_all
        read_from_file
        @ids.each do |ticket|
        begin
            @doc = Nokogiri::HTML(open(ticket,
                                        :http_basic_authentication => ["name", "password"]))
            read_title
            read_status
            read_last_update
        rescue OpenURI::HTTPError => e
            if e.message == '404 not found'
                puts "404 error"
            else
                puts "#{ticket} can't be opened #{e}"
                raise e
            end
        end
        end
    end

    def get_one_jira(idx)
        [@ids[idx], @titles[idx], @assignees[idx], @statuss[idx], @labels[idx], @comments[idx]]
    end

    def get_jira_count
        @ids.size()
    end

    def test_reader
        puts "id size = #{@ids.size()}"
        puts @ids
        puts "title size = #{@titles.size()}"
        puts @titles
        puts "assignee size = #{@assignees.size()}"
        puts @assignees
        puts "status size = #{@statuss.size()}"
        puts @statuss
        puts "labels size = #{@labels.size()}"
        puts @labels
        puts "comments size = #{@comments.size()}"
        puts @comments
    end

end

