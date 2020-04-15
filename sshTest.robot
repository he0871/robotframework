*** Settings ***
Documentation          This example demonstrates executing commands on a remote machine
...                    and getting their output and the return code.

Library                SSHLibrary
Suite Setup            Open Connection And Log In
Suite Teardown         Close All Connections

*** Variables ***
${HOST}                192.168.216.177
${USERNAME}            jinhe
${PASSWORD}            Bliss201119921122!

*** Test Cases ***
Execute Command And Verify Output
    [Documentation]    Execute Command can be used to ran commands on the remote machine.
    ...                The keyword returns the standard output by default.
    ${output}=         Execute Command  pwd
    Log to console     ${output}
    Should Be Equal    ${output}        /home/jinhe


*** Keywords ***
Open Connection And Log In
   Open Connection     ${HOST}
   Login               ${USERNAME}        ${PASSWORD}
