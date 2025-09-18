*** Settings ***
Library    ../libs/helloWorld.py

*** Test Cases ***
Use Custom Keywords
    ${base64}    Encode As Base64    This is a Test String
    Log    ${base64}
    ${decoded}    Decode From Base64    ${base64}
    Log    ${decoded}
    Hello World Version Number Two    Stefan
    Hello World Version Number Two    Anna
