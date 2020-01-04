test_raw_mail = paste0("Message-ID: <25828831.1075855376669.JavaMail",
".evans@thyme>\nDate: Mon, 26 Nov 2001 07:25:16 -0800(PST)\nFrom: k..allen",
"@enron.com\nTo: jsmith@austintx.com\nSubject: RE: Additional properties in ",
"San Antonio\nMime-Version: 1.0\nContent-Type: text/plain; charset=us-ascii",
"\nContent-Transfer-Encoding: 7bit\nX-From: Allen, Phillip K. </O=ENRON/",
"OU=NA/CN=RECIPIENTS/CN=PALLEN>\nX-To: '\"JEFF SMITH\" <jsmith@austintx.com>",
"@ENRON'\nX-cc: \nX-bcc: \nX-Folder: \\Phillip_Allen_Jan2002_1\\Allen, Phillip",
" K.\\Sent Items\nX-Origin: Allen-P\nX-FileName: pallen (Non-Privileged).pst",
"\n\nJeff, \n\nCan you resend the info on the three properties you mailed and",
" the one you faxed on Tuesday.  I was out of the office last week.\n\n",
"Phillip\n\n -----Original Message-----\nFrom: \t\"JEFF SMITH\" ",
"<jsmith@austintx.com>@ENRON  \nSent:\tTuesday, November 20, 2001 3:43 PM",
"\nTo:\tAllen, Phillip K.\nSubject:\tAdditional properties in San Antonio",
"\n\nPhillip,\n\nI am waiting to get info. on two more properties in San ",
"Antonio. The broker\nwill be faxing info. on Monday.  One is 74 units for ",
"$1,900,000, and the\nother is 24 units for $550,000.\n\nAlso, I have mailed ",
"you info. on three other properties in addition to the\n100 unit property ",
"that I faxed this AM.\n\nLet me know if you have any questions.\n\nJeff ",
"Smith\nThe Smith Company\n9400 Circle Drive\nAustin, TX  78736\n512-394-0908 ",
"office\n512-394-0913 fax\n512-751-9728 mobile\njsmith@austintx.com")

parsed_mail = parse.raw.email(test_raw_mail)

testthat::expect_equal(nchar(parsed_mail$body),824)
