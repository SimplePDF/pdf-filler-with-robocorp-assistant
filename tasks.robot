*** Settings ***
Documentation       Fill PDF documents and send them for processing to Control Room.

Library             OperatingSystem
Library             RPA.Assistant
Library             Collections
Library             RPA.Browser.Playwright


*** Variables ***
##################################################
########### MODIFY THE VALUES BELOW ##############
${COMPANY_IDENTIFIER}    yourcompany
&{FILES}=
...    Bill Example=https://cdn.simplepdf.eu/simple-pdf/assets/invoices/minimalistic-template.pdf
...    Customer Service Report Example=https://cdn.simplepdf.eu/simple-pdf/assets/customer-service-report-robocorp-assistant.pdf
##################################################

*** Tasks ***
Main
    Display Main Menu
    ${result}=    RPA.Assistant.Run Dialog
    ...    title=PDF Filler with SimplePDF.eu
    ...    on_top=False
    ...    height=480


*** Keywords ***
Display Main Menu
    Clear Dialog

    Add Image    ${CURDIR}${/}header.png

    ${filesList}=    Get Dictionary Keys    ${FILES}
    ${files}=    Catenate    SEPARATOR=,    @{filesList}

    ${dropdownResult}=    Add drop-down
    ...    name=file
    ...    label=Choose a PDF document to fill
    ...    options=PDF on computer,${files}
    ...    default=PDF on computer

    Add Next Ui Button    Start filling    Display SimplePDF
    Add Button    Read more about SimplePDF.eu    Read More About Simple PDF
    Add Submit Buttons    buttons=Close    default=Close

Display SimplePDF
    [Arguments]    ${results}={}

    ${simplePDFURL}=    Get SimplePDF URL    ${results}

    New Browser    chromium    headless=false
    New Context     acceptDownloads=${TRUE}    viewport={'width': 1366, 'height': 768}

    New Page    url=${simplePDFURL}

Read More About Simple PDF
    New Browser    chromium    headless=false
    New Context     acceptDownloads=${TRUE}    viewport={'width': 1366, 'height': 768}

    New Page    url=https://simplePDF.eu

Get SimplePDF URL
    [Arguments]    ${results}={}

    ${fileToOpen}=    Set Variable    ${results}[file]
    ${companyPortalURL}=    Set Variable    https://${COMPANY_IDENTIFIER}.simplePDF.eu

    IF    "${fileToOpen}" == "PDF on computer"
        ${fileURL}=    Set Variable    /editor
    ELSE
        ${fileURL}=    Set Variable    /editor?open\=${FILES}[${fileToOpen}]
    END

    ${finalURL}=    Set Variable    ${companyPortalURL}${fileURL}

    [Return]    ${finalURL}



