*** Variables ***
### Home Page
${lbl_curStuHeader_xpath}       //h1[contains(text(),"Current students")]
${lnk_studentMenu_xpath}        //a[contains(text(),"<placeholder>")]
${lbl_studentHeader_xpath}      //h1[contains(text(),"<placeholder>")]
${lbl_announcList_xpath}        //h2[contains(text(),"Announcements")]/../a
${lbl_announcPlcHld_xpath}      //h2[contains(text(),"Announcements")]/../a[<placeholder>]
${lbl_announcHeader_xpath}      /h3
${txt_announcContent_xpath}     /div
${lnk_viewAcDates_xpath}        //a[contains(text(),"View Academic Dates")]

### New Students Page
${lbl_newStuTitle_xpath}        //h2[contains(text(),"What you do here, counts out there")]
${lnk_orientation_xpath}
...                             //a[@class="btn btn-block btn-primary text-uppercase" and text()="Orientation"]
${lnk_dueDates_xpath}
...                             //a[@class="btn btn-block btn-primary text-uppercase" and text()="Student Fees & Due Dates"]
${lnk_stuEmail_xpath}
...                             //a[@class="btn btn-block btn-primary text-uppercase" and text()="STUDENT Email"]

${lbl_newStuSection_xpath}      //h2[text()="<placeholder>"]/../details
${txt_sectionCont_xpath}        /*[self::p or self::b or self::ul or self::ol]

### Returning Students Page
${lnk_crseReg_xpath}
...                             //a[@class="btn btn-block btn-primary text-uppercase" and text()="COURSE-BASED REGISTRATION"]
${lnk_electives_xpath}
...                             //a[@class="btn btn-block btn-primary text-uppercase" and text()="ELECTIVES"]
${lnk_crseChanges_xpath}
...                             //a[@class="btn btn-block btn-primary text-uppercase" and text()="COURSE CHANGES"]
${txt_details_xpath}            //details[<placeholder>]
${lbl_details_xpath}            //details
