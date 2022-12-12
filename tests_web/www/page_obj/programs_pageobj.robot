*** Variables ***
${txt_PrgmDescTitle_xpath}      //h2[@class="h3" and contains(text(),"Program description")]
${txt_PrgmDesc_xpath}           ${txt_PrgmDescTitle_xpath}/../p[2]
${link_Prgm_xpath}              //*[contains(@class,"list-unstyled")]/li[<replace>]
${btn_ApplyFilters_xpath}       //button/span/span[contains(text(),"Apply ")]
${lbl_PrgmTitle_xpath}          //*[contains(@class,"list-unstyled")]/li[<replace>]/a/span/span

${txt_SinglePgm_xpath}
...                             //*[starts-with(text(),"Showing ") and contains(text()," results")]/../ul/li/a/span/span[contains(@class,'text-truncate')]
${lnk_PgmDescTitle_xpath}       //a[contains(@class,"description active")]
${txt_PgmDesc_xpath}            //h2[contains(text(),'Program description')]/parent::div/p
${txt_PgmTitle_xpath}           //h1

${txt_singlePrgm_xpath}         //*[contains(text(),"<placeholder>")]
${div_Accred_xpath}
...                             //h2[contains(text(),"Accreditations")]/..//div[contains(@class,"active")]/div
${div_LogoBG_class}             bg-transperent

${lbl_404Error_xpath}           //h1[contains(text(),"An Error Occurred")]
