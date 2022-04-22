*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}  http://127.0.0.1:5000/

*** Test Cases ***
signup test case
    [Documentation]  Filling register page
    [Tags]  Harman Stories
    Open Browser  ${url}  chrome
    maximize browser window
    sleep  2s
    click element  xpath=/html/body/div[2]/div[1]/div/p/a
    sleep  2s
    input text  name:name  Tapan
    sleep  2s
    input text  name:username  tapan____45
    sleep  2s
    input text  name:email  tapansawant456@gmail.com
    sleep  2s
    input text  name:pswd  123
    sleep  2s
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep  2s
    Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
    sleep  2s
    click element  xpath=/html/body/div[2]/div[1]/div/form/input[5]
    sleep  3s



Login test case
    [Documentation]  Sign in
    [Tags]  Harman Stories
    click button  xpath=/html/body/div[1]/button
    sleep  1s
    input text  name:email  tapansawant456@gmail.com
    sleep  2s
    input text  name:pswd  123
    sleep  2s
    click element  xpath=/html/body/div[2]/div[1]/div/form/input[3]
    sleep  2s


home page test case
    [Documentation]  navigating home
    [Tags]  Harman Stories
    click button  xpath=/html/body/div[1]/button
    sleep  2s
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep  2s
    Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
    sleep  2s


Create Post test case
    [Documentation]  Creating post
    [Tags]  Harman Stories
    input text  name:text  Ooo Sheth....
    sleep  1s
#    click element  xpath=/html/body/div/div[2]/div[1]/div[2]/form/div/input C:\Users\Tapan\Desktop\shethmanus
    choose file  id=fileToUpload  C://Users/Tapan/Desktop/shethmanus.jpg
    sleep  1s
    click button  xpath=/html/body/div/div[2]/div[1]/div[2]/form/div/button
    sleep  3s
    click button  xpath=/html/body/div[1]/button
    sleep  1s
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep  5s
    Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
    sleep  5s

Check my Profile and edit profile test case
    [Documentation]  Checking profile and editing
    [Tags]  Harman Stories
    click element  xpath=/html/body/nav/div/div/div/a[3]
    sleep  5s
    click button  xpath=/html/body/div/div/div/div[2]/div[1]/button
    sleep  3s
    input text  name:Name  Tapan Sawant
    sleep  1s
    input text  name:email  tapansawant45@gmail.com
    sleep  1s
    input text  name:username  tapan____45
    sleep  1s
    input text  name:dob  2122000
    sleep  1s
    choose file  id=fileToUpload  C://Users/Tapan/Desktop/Resume/RT987558.jpg
    sleep  1s
    click button  xpath=/html/body/div/div/div/div[2]/div[1]/div[3]/form/div/button
    sleep  5s
    click element  xpath=/html/body/nav/div/div/div/a[2]
    sleep  3s


Like and Comment test case
    [Documentation]  Like and Comment
    [Tags]  Harman Stories
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep  3s
    click element  xpath=/html/body/div/div[2]/div[5]/div[2]/div/div[1]/a
    sleep  3s
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep  3s
    click element  xpath=/html/body/div/div[2]/div[5]/div[2]/div/div[2]/a
    sleep  3s
    input text  name:text  Comment keli hoooo
    sleep  2s
    click button  xpath=/html/body/div/form/div/button
    sleep  3s
    click button  xpath=/html/body/div[1]/button
    sleep  3s
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep  3s
    click element  xpath=/html/body/div/div[2]/div[5]/div[2]/div/div[3]/a
    sleep  3s
    click element  xpath=/html/body/nav/div/div/div/a[2]
    sleep  2s

check my post test case
    [Documentation]  check my post
    [Tags]  Harman Stories
    click element  xpath=/html/body/nav/div/div/div/a[4]
    sleep  3s
    click element  xpath=/html/body/nav/div/div/div/a[2]
    sleep  2s

check friends and there profile test case
    [Documentation]  check Friends and profile
    [Tags]  Harman Stories
    click element  xpath=/html/body/div/div[1]/div/a[2]
    sleep  3s
    click element  xpath=/html/body/div/div/div/div/div/a
    sleep  5s
    click element  xpath=/html/body/nav/div/div/div/a[2]
    sleep  3s


chat with friends test case
    [Documentation]  chatting
    [Tags]  Harman Stories
    click element  xpath=/html/body/nav/div/div/div/a[5]
    sleep  2s
    input text  class:username  tapan_45
    input text  class:message   hii
    click button  xpath=/html/body/div/div/div/form/input[3]
    sleep  1s
    input text  class:username  tapan_45
    input text  class:message   heyy
    click button  xpath=/html/body/div/div/div/form/input[3]
    sleep  1s
    click element  xpath=/html/body/nav/div/div/div/a[2]
    sleep  3s

Delete post test case
    [Documentation]  deleting
    [Tags]  Harman Stories
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep  3s
    click button  xpath=/html/body/div/div[2]/div[5]/div[2]/div/div[4]/div/button
    sleep  1s
    click element  xpath=/html/body/div/div[2]/div[5]/div[2]/div/div[4]/div/ul/li/a[2]
    sleep  3s
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep  4s
    Execute JavaScript    window.scrollTo(document.body.scrollHeight, 0)
    sleep  4s

Log out test case
    [Documentation]  logging out
    [Tags]  Harman Stories
    click element  xpath=/html/body/nav/div/div/div/a[6]
    sleep  3s
    close browser
*** Keywords ***