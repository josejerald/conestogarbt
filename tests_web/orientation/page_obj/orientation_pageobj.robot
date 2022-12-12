*** Variables ***
### Home page ###
${lbl_ortnHeader_xpath}         //h2[contains(text(),"Your journey begins here.")]
${btn_ortVwChklist_xpath}       //a[contains(text(),"View checklist")]
${lnk_ortEmail_xpath}           //a[contains(text(),"orientation@conestogac.on.ca")]
${btn_ortnHeader_xpath}
...                             //div[contains(@class,"toggle_wrap")]/a[contains(text(),"<placeholder>")]
${drpdown_ortnSubmenu_xpath}    //li[@class="menu-item"]/a[contains(text(),"<placeholder>")]

### My checklist ###
# Complete registration checklist page
${lbl_cardTitle_xpath}
...                             //h3[contains(@class,"card-title") and contains(text(),"<placeholder>")]
${txt_cardData_xpath}           /../../div/div/*//p
${txt_cardAction_xpath}         /../../div/a

# Additional Events Page
${img_eventCard_xpath}          //img[@class="card-img-top"]
${txt_eventCardHeader_xpath}    (//img[@class="card-img-top"]/../div/h3)[<placeholder>]
${txt_eventCardData_xpath}      (//img[@class="card-img-top"]/../div/div[3])[<placeholder>]
${txt_cardContent_xpath}        //div[contains(@class,"card")]

# Calendar Page
${txt_legend_xpath}             //table[@title="Legend for calendar"]/tbody/tr/td[1]
${txt_legendText_xpath}         //table[@title="Legend for calendar"]/tbody/tr/td[2]
${tbl_schedule_xpath}           //h2[contains(text(),"Schedule")]/../table
${txt_scheduleHeader_xpath}     //h2[contains(text(),"Schedule")]/../table[<placeholder>]/thead
${txt_scheduleBody_xpath}       //h2[contains(text(),"Schedule")]/../table[<placeholder>]/tbody
