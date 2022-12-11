*** Variables ***
${url} =  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser} =  chrome
${username} =  xpath =  //*[@name='username']
${txt1} =  Admin
${password} =  xpath =  //*[@name='password']
${txt2} =  admin123
${login} =  xpath =  //*[@type='submit']
#${usp} =  xpath =  //*[@class='oxd-userdropdown-name']
${timelink} =    xpath =    //*[@href='/web/index.php/time/viewTimeModule']
${reclink} =  xpath =  //*[@href='/web/index.php/recruitment/viewRecruitmentModule']
#${test} =  Network Administrator
${jobtitle} =  xpath =  (//div[@class='oxd-select-text-input'])[1]
${nettadm} =  xpath =  //div[text()='Network Administrator']







