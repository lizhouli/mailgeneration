require 'nokogiri'
require 'open-uri'

class Jiralink 
	def initialize()
        @doc = Nokogiri::HTML(open('6072.html'))
        @ofile = File.open("mail.txt", "w")
        @ids = []
        @assignees = []
        @statuss = []
        @labels = []
	end

    def read_from_file
        idfile = File.open("jira.txt", "r")
        idfile.each { |line| @ids << ('http://jira' + line.to_s) }
        @ids.uniq!
    end

	def save_assignee
        items = @doc.xpath("//span")
        items.each do |item|
            @assignees << item.text if item.at_xpath("@id") && item.at_xpath("@id").text.include?('assignee')
        end
	end

    def save_status
        items = @doc.xpath("//span")
        items.each do |item|
            @statuss << item.text.gsub(/\n/, "") if item.at_xpath("@id") && item.at_xpath("@id").text.include?('status-val') && !item.text.match("New")
            @labels << item.text if item.at_xpath("@class") && item.at_xpath("@class").text.include?('labels')
        end
    end

    def test_read_from_file
        @ids.each { |element| puts element }
    end

    def test_save_assignee
        puts @assignees
        puts @statuss
        puts @labels
    end

end

mail = Jiralink.new
mail.read_from_file
mail.test_read_from_file
mail.save_assignee
mail.save_status
mail.test_save_assignee
