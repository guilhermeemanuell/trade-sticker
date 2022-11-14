*** Settings ***
Documentation       Arquivo principal do projeto

Library             Browser
Resource            pages/login.resource
Resource            pages/dash.resource


*** Keywords ***
Do Login
    Go To Login Page
    Submit Credentials    papito@gmail.com    vaibrasil
    User Logged In

Start Test
    New Browser    headless=False    browser=${BROWSER}

Finish Test
    #Thinkin Time (como se fosse o usuário pensando, demorando um certo tempo - utilizando por causa do toaster)
    Sleep    1
    Take Screenshot

