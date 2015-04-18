
require_relative "parser"

module Htmformat
    def write_head
        <<HEAD
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=us-ascii">
<style>
<!--
@font-face
    {font-family:Wingdings}
@font-face
    {font-family:SimSun}
@font-face
    {font-family:Gulim}
@font-face
    {font-family:Gulim}
@font-face
    {font-family:Calibri}
@font-face
    {font-family:Tahoma}
@font-face
    {font-family:"\@Gulim"}
p.MsoNormal, li.MsoNormal, div.MsoNormal
    {margin:0in;
    margin-bottom:.0001pt;
    font-size:11.0pt;
    font-family:"Calibri","sans-serif"}
a:link, span.MsoHyperlink
    {color:blue;
    text-decoration:underline}
a:visited, span.MsoHyperlinkFollowed
    {color:purple;
    text-decoration:underline}
p
    {margin-right:0in;
    margin-left:0in;
    font-size:12.0pt;
    font-family:"Gulim","sans-serif"}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
    {margin:0in;
    margin-bottom:.0001pt;
    font-size:8.0pt;
    font-family:"Tahoma","sans-serif"}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
    {margin-top:0in;
    margin-right:0in;
    margin-bottom:0in;
    margin-left:.5in;
    margin-bottom:.0001pt;
    font-size:11.0pt;
    font-family:"Calibri","sans-serif"}
span.BalloonTextChar
    {font-family:"Tahoma","sans-serif"}
span.EmailStyle21
    {font-family:"Calibri","sans-serif";
    color:windowtext}
span.EmailStyle22
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle23
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle24
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle25
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle26
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle27
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle28
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle29
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle30
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle31
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle32
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle33
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle34
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle35
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle36
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle37
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle38
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.apple-converted-space
    {}
span.EmailStyle40
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle41
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle42
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle43
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle44
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle45
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle46
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle47
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle48
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle49
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle50
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle51
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle52
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle53
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle54
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle55
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle56
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle57
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle58
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle59
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle60
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle61
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle62
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle63
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle64
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle65
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle66
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle67
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle68
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle69
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle70
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle71
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle72
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle73
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle74
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle75
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle76
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle77
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle78
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle79
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle80
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle81
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle82
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle83
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle84
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle85
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle86
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle87
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle88
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle89
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle90
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle91
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle92
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle93
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle94
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle95
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle96
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle97
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle98
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle99
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle100
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle101
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle102
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle103
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle104
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle105
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle106
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
span.EmailStyle107
    {font-family:"Calibri","sans-serif";
    color:#1F497D}
.MsoChpDefault
    {font-size:10.0pt}
@page WordSection1
    {margin:1.0in 1.25in 1.0in 1.25in}
div.WordSection1
    {}
ol
    {margin-bottom:0in}
ul
    {margin-bottom:0in}
-->
</style>
</head>
<body lang="EN-US" link="blue" vlink="purple" style="">
<div class="WordSection1">
HEAD
    end

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
        flag == "unplanned" ? "(#{flag})\n" : "\n"
    end

    def write_indent_1(desc)
<<IND1
        <p class="MsoListParagraph" style="margin-left:.25in; text-indent:-.25in"><span style="font-family:Symbol; color:#1F497D"><span style="">&middot;<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></span></span><span style="color:#1F497D">#{desc}</span></p>
IND1
    end

    def write_indent_2(desc)
<<IND2
        <p class="MsoListParagraph" style="margin-left:.75in; text-indent:-.25in"><span style="font-family:&quot;Courier New&quot;; color:#1F497D"><span style="">o<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
        </span></span></span><span style="color:#1F497D">#{desc}</span></p>
IND2
    end

    def write_indent_3(desc)
<<IND3
        <p class="MsoListParagraph" style="margin-left:1.25in; text-indent:-.25in"><span style="font-family:Wingdings; color:#1F497D"><span style="">&sect;<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;
        </span></span></span><span style="color:#1F497D">#{desc}</span></p>
IND3
    end

    def write_end
<<END
        </div>
        </html>
END
    end
end

class Htmwriter
    include Htmformat 
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
        @ofile.write write_head
        @ofile.write write_indent_1("Jira")
        headstr = write_id(id) + write_title(title) + write_assignee(assignee) + write_special_flag(label)
        @ofile.write write_indent_2(headstr)         
        @ofile.write write_indent_3(comment)
        @ofile.write write_indent_3(status)
        @ofile.write write_end
    end
end


reader = JiraReader.new("jira.txt")

txt = Htmwriter.new("mail.htm")
for i in 0..reader.get_jira_count-1
    txt.write(reader.get_one_jira(i))
end

