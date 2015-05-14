
require_relative "parser"

module Outlookformat
    def write_head
<<HEAD
User-Agent: Microsoft-MacOutlook/14.4.8.150116
Date: Wed, 13 May 2015 21:52:24 +0800
Subject: weekly report (5/4--5/8)
From: Frank Li <frank.li@arm.com>
Message-ID: <D1797733.36BF%frank.li@arm.com>
Thread-Topic: weekly report (5/4--5/8)
References: <D176358C.34FF%frank.li@arm.com>
In-Reply-To: <D176358C.34FF%frank.li@arm.com>
Mime-version: 1.0
Content-type: multipart/alternative;
    boundary="B_3514398760_200213"

> This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

--B_3514398760_200213
Content-type: text/html;
charset="US-ASCII"
Content-transfer-encoding: quoted-printable

<html><head></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; -webkit-line-break: after-white-space; color: rgb(24, 54, 105); font-f=
amily: Calibri, sans-serif;"><div>
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
        flag == "unplanned" ? " (#{flag})\n" : "\n"
    end

    def write_indent_1(desc)
<<IND1
<li style=3D"font-size: 15px;">#{desc}</li>=
IND1
    end

    def write_indent_2(desc)
<<IND2
<li>#{desc}</li>
IND2
    end

    def write_indent_3(desc)
<<IND3
IND3
    end

    def write_ul_start
        '<ul>'
    end

    def write_ul2_start
        '<ul style=3D"font-size: 15px;">'
    end

    def write_ul_end
        '</ul>'
    end

    def write_end
<<END
<div style=3D"font-si=
ze: 15px;"><div><div><br></div><div>--&nbsp;</div></div><div>Frank</div></di=
v></div><div style=3D"font-size: 15px;"><br></div><span id=3D"OLK_SRC_BODY_SECTI=
ON" style=3D"font-size: 15px;"><div><div style=3D"word-wrap: break-word; -webkit=
-nbsp-mode: space; -webkit-line-break: after-white-space;"><style><!--
/* Font Definitions */
@font-face
{font-family:Wingdings;
    panose-1:5 0 0 0 0 0 0 0 0 0;}
    @font-face
{font-family:SimSun;
    panose-1:2 1 6 0 3 1 1 1 1 1;}
    @font-face
{font-family:Gulim;
    panose-1:2 11 6 0 0 1 1 1 1 1;}
    @font-face
{font-family:Gulim;
    panose-1:2 11 6 0 0 1 1 1 1 1;}
    @font-face
{font-family:Calibri;
    panose-1:2 15 5 2 2 2 4 3 2 4;}
    @font-face
{font-family:Tahoma;
    panose-1:2 11 6 4 3 5 4 4 2 4;}
    @font-face
{font-family:SimSun;
    panose-1:2 1 6 0 3 1 1 1 1 1;}
    @font-face
{font-family:"\@Gulim";
    panose-1:2 11 6 0 0 1 1 1 1 1;}
    /* Style Definitions */
    p.MsoNormal, li.MsoNormal, div.MsoNormal
{margin:0in;
    margin-bottom:.0001pt;
    font-size:11.0pt;
    font-family:"Calibri","sans-serif";
    mso-fareast-language:ZH-CN;}
a:link, span.MsoHyperlink
{mso-style-priority:99;
color:blue;
      text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
{mso-style-priority:99;
color:purple;
      text-decoration:underline;}
      p
{mso-style-priority:99;
    mso-margin-top-alt:auto;
    margin-right:0in;
    mso-margin-bottom-alt:auto;
    margin-left:0in;
    font-size:12.0pt;
    font-family:"Gulim","sans-serif";
    mso-fareast-language:KO;}
    p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
{mso-style-priority:99;
    mso-style-link:"Balloon Text Char";
margin:0in;
       margin-bottom:.0001pt;
       font-size:8.0pt;
       font-family:"Tahoma","sans-serif";
       mso-fareast-language:ZH-CN;}
       p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
{mso-style-priority:34;
    margin-top:0in;
    margin-right:0in;
    margin-bottom:0in;
    margin-left:.5in;
    margin-bottom:.0001pt;
    font-size:11.0pt;
    font-family:"Calibri","sans-serif";
    mso-fareast-language:ZH-CN;}
    span.BalloonTextChar
{mso-style-name:"Balloon Text Char";
    mso-style-priority:99;
    mso-style-link:"Balloon Text";
    font-family:"Tahoma","sans-serif";}
    span.EmailStyle21
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:windowtext;}
span.EmailStyle22
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle23
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle24
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle25
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle26
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle27
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle28
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle29
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle30
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle31
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle32
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle33
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle34
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle35
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle36
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle37
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle38
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.apple-converted-space
{mso-style-name:apple-converted-space;}
span.EmailStyle40
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle41
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle42
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle43
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle44
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle45
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle46
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle47
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle48
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle49
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle50
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle51
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle52
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle53
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle54
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle55
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle56
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle57
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle58
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle59
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle60
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle61
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle62
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle63
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle64
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle65
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle66
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle67
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle68
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle69
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle70
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle71
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle72
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle73
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle74
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle75
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle76
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle77
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle78
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle79
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle80
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle81
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle82
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle83
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle84
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle85
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle86
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle87
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle88
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle89
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle90
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle91
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle92
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle93
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle94
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle95
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle96
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle97
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle98
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle99
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle100
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle101
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle102
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle103
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle104
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle105
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle106
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle107
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle108
{mso-style-type:personal;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
span.EmailStyle109
{mso-style-type:personal-reply;
    font-family:"Calibri","sans-serif";
color:#1F497D;}
.MsoChpDefault
{mso-style-type:export-only;
    font-size:10.0pt;}
    @page WordSection1
{size:8.5in 11.0in;
margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
{page:WordSection1;}
/* List Definitions */
@list l0
{mso-list-id:15159004;
    mso-list-type:hybrid;
    mso-list-template-ids:-1901184608 67698691 67698693 67698693 67698689 6769=
        8691 67698693 67698689 67698691 67698693;}
        @list l0:level1
{mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:.75in;
    text-indent:-.25in;
    font-family:"Courier New";}
    @list l0:level2
{mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:1.25in;
    text-indent:-.25in;
    font-family:Wingdings;}
    @list l0:level3
{mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:1.75in;
    text-indent:-.25in;
    font-family:Wingdings;}
    @list l0:level4
{mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:2.25in;
    text-indent:-.25in;
    font-family:Symbol;}
    @list l0:level5
{mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:2.75in;
    text-indent:-.25in;
    font-family:"Courier New";}
    @list l0:level6
{mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:3.25in;
    text-indent:-.25in;
    font-family:Wingdings;}
    @list l0:level7
{mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:3.75in;
    text-indent:-.25in;
    font-family:Symbol;}
    @list l0:level8
{mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:4.25in;
    text-indent:-.25in;
    font-family:"Courier New";}
    @list l0:level9
{mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:4.75in;
    text-indent:-.25in;
    font-family:Wingdings;}
    @list l1
{mso-list-id:685910768;
    mso-list-type:hybrid;
    mso-list-template-ids:305303442 838354654 67698691 67698693 67698689 67698=
        691 67698693 67698689 67698691 67698693;}
        @list l1:level1
{mso-level-start-at:0;
    mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:1.25in;
    text-indent:-.25in;
    font-family:Wingdings;
    mso-fareast-font-family:"Times New Roman";
    mso-bidi-font-family:Calibri;
color:#1F497D;}
@list l1:level2
{mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:1.75in;
    text-indent:-.25in;
    font-family:"Courier New";}
    @list l1:level3
{mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:2.25in;
    text-indent:-.25in;
    font-family:Wingdings;}
    @list l1:level4
{mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:2.75in;
    text-indent:-.25in;
    font-family:Symbol;}
    @list l1:level5
{mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:3.25in;
    text-indent:-.25in;
    font-family:"Courier New";}
    @list l1:level6
{mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:3.75in;
    text-indent:-.25in;
    font-family:Wingdings;}
    @list l1:level7
{mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:4.25in;
    text-indent:-.25in;
    font-family:Symbol;}
    @list l1:level8
{mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:4.75in;
    text-indent:-.25in;
    font-family:"Courier New";}
    @list l1:level9
{mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:5.25in;
    text-indent:-.25in;
    font-family:Wingdings;}
    @list l2
{mso-list-id:2089382965;
    mso-list-type:hybrid;
    mso-list-template-ids:827333290 67698689 67698691 67698693 67698689 676986=
        91 67698693 67698689 67698691 67698693;}
        @list l2:level1
{mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:.25in;
    text-indent:-.25in;
    font-family:Symbol;}
    @list l2:level2
{mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:.75in;
    text-indent:-.25in;
    font-family:"Courier New";}
    @list l2:level3
{mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:1.25in;
    text-indent:-.25in;
    font-family:Wingdings;}
    @list l2:level4
{mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:1.75in;
    text-indent:-.25in;
    font-family:Symbol;}
    @list l2:level5
{mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:2.25in;
    text-indent:-.25in;
    font-family:"Courier New";}
    @list l2:level6
{mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:2.75in;
    text-indent:-.25in;
    font-family:Wingdings;}
    @list l2:level7
{mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:3.25in;
    text-indent:-.25in;
    font-family:Symbol;}
    @list l2:level8
{mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:3.75in;
    text-indent:-.25in;
    font-family:"Courier New";}
    @list l2:level9
{mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    margin-left:4.25in;
    text-indent:-.25in;
    font-family:Wingdings;}
    ol
{margin-bottom:0in;}
ul
{margin-bottom:0in;}
--></style></div></div></span></body></html>

--B_3514398760_200213--
END
    end
end

class Mailwriter
    include Outlookformat 
    def initialize(filename)
        @ofile = File.open(filename, "w+")
    end

    def write_title_1(des)
        @ofile.write write_indent_1(des)
    end

    def write_head_for_title
        @ofile.write write_head
        @ofile.write write_ul_start
    end

    def write_end_for_title
        @ofile.write write_ul_end
        @ofile.write write_end
    end

    def write_head_for_ul
        @ofile.write write_ul2_start
    end

    def write_end_for_ul
        @ofile.write write_ul_end
    end

    def write(data)
        id = data[0].to_s.gsub(/^.*MJOLL-/, "")
        title = data[1]
        assignee = data[2]
        status = data[3]
        label = data[4]
        comment = data[5]
        headstr = write_id(id) + write_title(title) + write_assignee(assignee) + write_special_flag(label)
        @ofile.write write_indent_2(headstr)         
        @ofile.write write_ul_start
        @ofile.write write_indent_2(comment)
        @ofile.write write_indent_2(status)
        @ofile.write write_ul_end
    end
end


reader = JiraReader.new
reader.read_all

txt = Mailwriter.new("report.eml")
txt.write_head_for_title
txt.write_title_1("Jira")
txt.write_head_for_ul
for i in 0..reader.get_jira_count-1
    txt.write(reader.get_one_jira(i))
end
txt.write_end_for_ul
txt.write_end_for_title
