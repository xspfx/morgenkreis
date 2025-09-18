*** Variables ***
${val_1}        ${3}


*** Keywords ***
Logge Information
    [Documentation]    The first line creates the short doc.
    ...
    ...                This is the body of the documentation.
    ...                It is not shown in Libdoc outputs but only
    ...                the short doc is shown in logs.
    [Arguments]        ${message}
    Log To Console     \n${message}
    ${val_2} =         Set Variable     ${2}
    ${result} = 	   Evaluate 	    ${val_1} + ${val_2}
    Should Be Equal    ${result}        ${5}
    Log To Console     Success - ${result} is equal to 5
