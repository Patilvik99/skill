*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC_1

    Open Browser   https://www.oneplus.in/    Chrome 
    Maximize Browser Window
    sleep    5s
    
TC_2
    Mouse Over  Xpath = //*[@id="nav-pages-slide"]/li[1]/a/span[1]
    sleep    3s
    
    ${elem} =   Get WebElements      xpath://*[@id="nav-pages-slide"]/li[1]/nav/div/ul[1]/li/a/span
    FOR  ${item}  IN  @{elem}
    log to console  Item: ${item.text}

    END

TC_3
    Mouse Over  Xpath = //ul[@id='nav-pages-slide']/li[2]/a/span[1]
    sleep    3s
    click Element       Xpath = //ul[@id='nav-pages-slide']/li[2]/a/span[1]
    sleep    5s
    
TC_05
    

    