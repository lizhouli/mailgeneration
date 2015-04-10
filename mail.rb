require 'nokogiri'
require 'open-uri'

class JiraReader
	def initialize()
        @doc = Nokogiri::HTML(open('6072.html'))
        @ofile = File.open("mail.txt", "w")
        @ids = []
        @assignees = []
        @statuss = []
        @labels = []
        @titles = []
        @comments = []
	end

    def read_from_file
        idfile = File.open("jira.txt", "r")
        idfile.each { |line| @ids << ('http://jira' + line.to_s) }
        @ids.uniq!
    end

    def read_status
        items = @doc.xpath("//span")
        items.each do |item|
            @statuss << item.text.gsub(/\n/, "") if item.at_xpath("@id") && item.at_xpath("@id").text.include?('status-val') && !item.text.match("New")
            @labels << item.text if item.at_xpath("@class") && item.at_xpath("@class").text.include?('labels')
            @assignees << item.text if item.at_xpath("@id") && item.at_xpath("@id").text.include?('assignee')
        end
    end

    def read_title
        items = @doc.xpath("//h1")
        items.each do |item|
            @titles << item.text if item.at_xpath("@id") && item.at_xpath("@id").text.include?("summary-val")
        end
    end

    def read_last_update
        items = @doc.xpath("//div")
        last_update = ""
        items.each do |item|
            last_update = item.text if item.at_xpath("@class") && item.at_xpath("@class").text.include?("action-body flooded")
        end
        @comments << last_update.gsub(/\n/, "")
    end

    def read_all
        read_from_file
        @ids.each do |ticket|
        begin
            @doc = Nokogiri::HTML(open(ticket))
            read_title
            read_status
            read_last_update
        rescue OpenURI::HTTPError => e
            if e.message == '404 not found'
                puts "404 error"
            else
                raise e
            end
        end
        end
    end

    def test_reader
        puts @titles
        puts @assignees
        puts @statuss
        puts @labels
        puts @comments
    end

end

reader = JiraReader.new
#reader.read_from_file
reader.read_status
reader.read_title
reader.read_last_update
reader.test_reader



