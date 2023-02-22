*** Settings ***
Library    SeleniumLibrary   implicit_wait=60
#Library    AppiumLibrary   - NOTE: IT'S ONLY FOR MOBILE APP TESTING
Test Setup   Open Browser  https://codexstage.azurewebsites.net/  edge
Suite Teardown   Close Browser

#---------------------------------------------------------------
#  robot LandingPages.robot

*** Test Cases ***
Testing the pages of All Esc/war, All Actions, All Open risks and All Open Internal Issues
    #[Documentation]  To Check The LOGIN & Landing Pages of CodeX Stage
    Maximize Browser Window
    Sleep   15  #Wait for Approve Authentication through Mobile


#---------------------Navigate to "ALL ESCALATION PAGE" and its Functions--------------------------#

    #Click "All Escalation" page
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[1]/ul/div/div/div[1]/div/li/div[2]/p[2]
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[1]/ul/div/div/div[1]/div/li/div[2]/p[2]
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[1]/ul/div/div/div[1]/div/li/div[2]/p[1]/span

    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\DASHBOARD.png

    Click Element  XPATH://*[@id="midContainer"]/div/div[1]/ul/div/div/div[1]/div/li/div[2]/p[2]
    #Sleep  5

    #Click New Escalation
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[2]/div[1]/ul/li[1]/div[2]/p[2]
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[2]/div[1]/ul/li[1]/div[2]/p[2]
    Sleep  4

    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\ALLOPENESC.png
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/button
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/button
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/button

    #CREATE ESCALATION
    #Sleep  2
    Wait Until Element Is Visible  XPATH://*[@id="projeclevl"]/div[1]/select
    Wait Until Element Is Enabled  XPATH://*[@id="projeclevl"]/div[1]/select
    Select From List By Value  XPATH://*[@id="projeclevl"]/div[1]/select  9453

    #Input Data
    Scroll Element Into View  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[1]/div[7]/div/ul/li[1]/input
    Click Element  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[1]/div[5]/input
    Input Text  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[1]/div[5]/input  JAYABALAJI K
    Sleep  1

    Scroll Element Into View  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[2]/div/input
    Input Text  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[2]/div/input  Testing Purpose only

    Click Element  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[2]/div/textarea
    Input Text  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[2]/div/textarea  TESTING PROJECT LEVEL ESC

    Sleep  1
    Mouse Down  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[1]/div[7]/div/ul/ul[1]/li[3]/input
    Scroll Element Into View  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[1]/div[7]/div/ul/ul[1]/li[3]/input
    Click Element  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[1]/div[7]/div/ul/li[1]/input
    Click Element  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[1]/div[7]/div/ul/ul[1]/li[1]/input

    #SUBMIT
    Click Element  XPATH://*[@id="newEsc"]/form/div/div/div[3]/div[3]/button
    Sleep  6

    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\EscalationNew.png

    #Sort in order
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/div/span[3]/i[2]
    Sleep  1
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/div/span[3]/i[1]
    Sleep  1

    #Edit Esc
    #/html/body/codex-root/div[1]/home/div/app-all-escalation/div[1]/div/div[2]/div[2]/ul/div[1]/li/div/span[5]/p
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/ul/div[1]/li/div/span[5]/span
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/ul/div[1]/li/div/span[5]/span
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/ul/div[1]/li/div/span[5]/span
    Sleep  1
    #Change ESC to Early Warning
    Click Element  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[1]/div[4]/label[2]/span
    Sleep  2
    #Update
    Click Element  XPATH://*[@id="newEsc"]/form/div/div/div[3]/div[3]/button
    Sleep  5

    #Sort in order
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/div/span[3]/i[2]
    Sleep  1
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/div/span[3]/i[1]

    #Close Esc

    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/ul/div[1]/li/div/span[3]/span
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/ul/div[1]/li/div/span[3]/span
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/ul/div[1]/li/div/span[3]/span
    Sleep  1

    Input Text  XPATH://*[@id="closeEsc"]/div/div/div[2]/div[1]/input  Closing Escalation Test
    Click Element  XPATH://*[@id="closeEsc"]/div/div/div[3]/div[3]/button[1]
    Sleep  2
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\CloseEsc.png

#CHECKING "FILTER" FUNCTIONS
    #Type and Search Check
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[1]/div/div[1]/input
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[1]/div/div[1]/input
    Click Element  XPATH://*[@id="midContainer"]/div/div[1]/div/div[1]/input
    Input Text  XPATH://*[@id="midContainer"]/div/div[1]/div/div[1]/input  Verizon Data Services India Pvt Ltd
    Sleep  2
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\AccountSearch.png

    Sleep  1
    Click Element  XPATH://*[@id="midContainer"]/div/div[1]/div/div[1]/span[1]

    #Click inside Filter
    Click Element  XPATH://*[@id="midContainer"]/div/div[1]/div/div[1]/span

    #OPEN ESC COUNT
    Click Element  XPATH://*[@id="filter-drown"]/div[1]/label/span
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\OpenEscCount.png
    Click Element  XPATH://*[@id="filter-drown"]/div[1]/label/span

    #WARNING COUNT
    Click Element  XPATH://*[@id="filter-drown"]/div[2]/label/span
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\OpenWarCount.png
    Click Element  XPATH://*[@id="filter-drown"]/div[2]/label/span

    #CLIENTPULSE COUNT(RED/AMBER)
    Click Element  XPATH://*[@id="filter-drown"]/div[3]/label/span
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\RedAmberCount.png
    Click Element  XPATH://*[@id="filter-drown"]/div[3]/label/span

    #CLOSED ESC COUNT
    Click Element  XPATH://*[@id="filter-drown"]/div[4]/label/span
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\ClosedEscCount.png
    Click Element  XPATH://*[@id="filter-drown"]/div[4]/label/span

    #WITHOUT ACTION
    Click Element  XPATH://*[@id="filter-drown"]/div[5]/label/span
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\NoActionsCount.png
    Click Element  XPATH://*[@id="filter-drown"]/div[5]/label/span

    #ACCOUNT LEVEL COUNT
    Click Element  XPATH://*[@id="filter-drown"]/div[6]/label/span
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\AccountLevelCount.png
    Click Element  XPATH://*[@id="filter-drown"]/div[6]/label/span

    #PROJECT LEVEL COUNT
    Click Element  XPATH://*[@id="filter-drown"]/div[7]/label/span
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\ProjectLevelCount.png
    Click Element  XPATH://*[@id="filter-drown"]/div[7]/label/span

    Sleep  1
    Click Element  XPATH://*[@id="midContainer"]/div/div[1]/div/div[1]/input
    Sleep  2
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\AllEsc.png


#---------------------Navigate to "ALL RISK PAGE" and its Functions--------------------------#

    #Click back to "Dashboard"
    Click Element  XPATH://*[@id="midContainer"]/div/div[1]/span
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[1]/ul/div/div/div[2]/div/li/div[2]/p[1]
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[1]/ul/div/div/div[2]/div/li/div[2]/p[1]

    Sleep  2

    #Click "Open Risk page"
    Click Element  XPATH://*[@id="midContainer"]/div/div[1]/ul/div/div/div[2]/div/li/div[2]/p[1]
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[1]/div/p
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[1]/div/p
    Sleep  3
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/div/div[4]/i[1]
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\OpenRisk.png

    #Create Action in Risk

    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/ul/div[1]/li/div[8]/p
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/ul/div[1]/li/div[8]/p
    Sleep  1
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/ul/div[1]/li/div[8]/p

    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/div[3]/div/button[2]
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/div[3]/div/button[2]
    Sleep  1
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/div[3]/div/button[2]

#Input ACTION data

#DESCRIPTION
    Click Element  Xpath://*[@id="newaction"]/div/div/div[1]/textarea
    Input Text  XPATH://*[@id="newaction"]/div/div/div[1]/textarea   TESTING
    Sleep  1
#TAG NAME
    #Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-allaction/div[4]/div/div/div[2]/input
    Input Text  XPATH://*[@id="container"]/input  @JAYABALAJI
    Sleep  3
    Wait Until Element Is Visible  XPATH://*[@id="userSearchText"]/li/p
    Wait Until Element Is Visible  XPATH://*[@id="userSearchText"]/li/p

    Click Element  XPATH://*[@id="userSearchText"]/li/p
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\ActionOpenRisk.png

#click add action
    Click Element  XPATH://*[@id="newaction"]/div/div/div[3]/div[2]/button[1]
    Sleep  3

    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\AllOpenRisk.png

    #Close Action
    Wait Until Element Is Visible  XPATH://*[@id="actionPlan2"]/div/span[1]/div/label/span
    Click Element  XPATH://*[@id="actionPlan2"]/div/span[1]/div/label/span
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/div[3]/div/button[1]
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/div[3]/div/button[1]
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/div[3]/div/button[1]

#Click back to "Landing page of risk"
    Click Element  XPATH://*[@id="midContainer"]/div/div[1]/span
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[1]/div/div[1]/span
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[1]/div/div[1]/span

#Checking FILTER Functions

#Search Filter
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[1]/div/div[1]/input
    Input Text  XPATH://*[@id="midContainer"]/div/div[1]/div/div[1]/input  Move inc.
    Sleep  2
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\Search.png
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-all-risk/div[1]/div/div[1]/div/div[1]/span[1]

#Click inside Filter
    Click Element  XPATH://*[@id="midContainer"]/div/div[1]/div/div[1]/span

    #OPEN RISK COUNT
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\OpenRiskCount.png
    Click Element  XPATH://*[@id="filter-drown"]/div[4]/label/span

    #Risk with Zero Action COUNT
    Click Element  XPATH://*[@id="filter-drown"]/div[3]/label/span
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\NoActionCount.png
    Click Element  XPATH://*[@id="filter-drown"]/div[3]/label/span

    #High Impact Risk COUNT
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-all-risk/div[1]/div/div[1]/div/div[2]/div[2]/label/span
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\ImpactCount.png
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-all-risk/div[1]/div/div[1]/div/div[2]/div[2]/label/span

    #Over Due Risk COUNT
    Click Element  XPATH://*[@id="filter-drown"]/div[1]/label/span
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\OverDueCount.png
    Click Element  XPATH://*[@id="filter-drown"]/div[1]/label/span
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[1]/div/p
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[1]/div/p

    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\AllRiskCount.png

    #Click back to "Dashboard"
    Click Element  XPATH://*[@id="midContainer"]/div/div[1]/span
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[1]/ul/div/div/div[2]/div/li/div[2]/p[1]
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[1]/ul/div/div/div[2]/div/li/div[2]/p[1]

    Sleep  2

    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\DashboardH.png


#---------------------Navigate to "ALL INTERNAL ISSUE PAGE" and its Functions--------------------------#

#Click "All Open Internal issue" page
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[1]/ul/div/div/div[3]/div/li/div[2]/p[2]
    Click Element  XPATH://*[@id="midContainer"]/div/div[1]/ul/div/div/div[3]/div/li/div[2]/p[2]
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[1]/div[1]/div/span
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[1]/div[1]/div/span

    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\OpenIssueCount.png

#Click "Edit"
    Sleep  1
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/ul/li[1]/div[7]/p
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/ul/li[1]/div[7]/p
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/ul/li[1]/div[7]/p
    Sleep  1
    #Input Data
    Wait Until Element Is Visible  XPATH://*[@id="edit-issue"]/div/div/form/div/div[2]/div/input
    Wait Until Element Is Enabled  XPATH://*[@id="edit-issue"]/div/div/form/div/div[2]/div/input
    Input Text  XPATH://*[@id="edit-issue"]/div/div/form/div/div[2]/div/textarea  EDIT CHECK BY KJB IN ALL ISSUE PAGE

    #Click UPDATE
    Click Element  XPATH://*[@id="edit-issue"]/div/div/div[2]/div[3]/button[1]
    Sleep  1
#Close Issue
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/ul/li[1]/div[7]/p
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/ul/li[1]/div[7]/p

    #Click CLOSE
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/ul/li[1]/div[6]/p
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/ul/li[1]/div[6]/p
    Sleep  4

    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/app-new-all-internal-issue/div[1]/div/div[2]/div[3]/ul/li[1]/div[6]/p
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-all-internal-issue/div[1]/div/div[2]/div[3]/ul/li[1]/div[6]/p

    #Input Closure Command
    Wait Until Element Is Visible  XPATH://*[@id="close-issue"]/div/div/div[2]/div[1]/input
    Wait Until Element Is Enabled  XPATH://*[@id="close-issue"]/div/div/div[2]/div[1]/input
    Input Text  XPATH://*[@id="close-issue"]/div/div/div[2]/div[1]/input  CLOSE TEST BY KJB IN ALL ISSUE PAGE

    #Click "CLOSE"
    Click Element  XPATH://*[@id="close-issue"]/div/div/div[3]/div[3]/button[1]

    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[1]/div[1]/p/span
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[1]/div[1]/p/span

    Sleep  3
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\IssueClosed.png






