*** Variables ***
${btn_ApplyFilters_xpath}       //button/span/span[contains(text(),"Apply ")]
${txt_SinglePgm_xpath}
...                             //*[starts-with(text(),"Showing ") and contains(text()," results")]/../ul/li/a/span/span[contains(@class,'text-truncate')]
${link_Prgm_xpath}              //*[contains(@class,"list-unstyled")]/li[<replace>]
${txt_discontPrgm_xpath}
...                             //p[contains(text(),"This program is no longer accepting new applicants.")]
${lbl_prgmSection_path}         //h2[contains(text(),"<placeholder>")]
${txt_prgmSectionData_xpath}    //h2[contains(text(),"<placeholder>")]/following-sibling::*[self::p or self::div]
