*** Variables ***
${lnk_homeAdm_xpath}                //a[contains(text(),"Home")]
${btn_admHeaderDrpMenu_xpath}       //div[@class="toggle_wrap"]/a[contains(text(),"<placeholder>")]
${drpdown_admSubmenu_xpath}         //li[@class="menu-item"]/a[contains(text(),"<placeholder>")]

### Paying your fees ###
# Tuition & fees estimator page
${drpdown_acadYear_id}              academicyear
${drpdown_stuStatus_id}             studentstatus
${btn_yearSearch_xpath}             //div[@id="yearstatusbutton"]/div/button
${btn_prgmSearch_xpath}             //div[@id="programsubmitbutton"]/div/button
${drpdown_prgmList_id}              programlist
${lbl_prgmTitle_xpath}              //*[@id="multiplefeelevels"]/div/div/h2

${lbl_intake_xpath}                 //*[@id="multiplefeelevels"]/div/div/details
${lbl_intakeDetails_xpath}          //*[@id="multiplefeelevels"]/div/div/details[<placeholder>]
${txt_termTotal_xpath}              /table/tbody/tr/td[contains(text(),"Term Total")]/../td[2]
${lbl_intakeSummary_xpath}          /summary
