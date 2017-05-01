*** Settings ***
Documentation  MySQL Keywords
Library  DatabaseLibrary
Library  String
Library  Dialogs

*** Variables ***
${DB_NAME} =  framework
${DB_USER_NAME} =  root
${DB_USER_PW} =  root
${DB_HOST} =  localhost
${DB_PORT} =  3306
${PREV_ROW_COUNT}

*** Keywords ***
Connect
    Connect To Database  pymysql  ${DB_NAME}  ${DB_USER_NAME}  ${DB_USER_PW}  ${DB_HOST}  ${DB_PORT}

Disconnect
    Disconnect from Database

Save Current Row Count
    ${current_row_count} =  Row Count  SELECT * FROM person;
    Set Suite Variable  ${PREV_ROW_COUNT}  ${current_row_count}
    Log  ${current_row_count}

Get Input Data
    # from dialogs library
    ${name} =  Get Value From User  Enter a First Name

    # save it at the suite scope so subsequent test can use it
    Set Suite Variable  ${FIRST_NAME}  ${name}

Insert Record
    Execute SQL String  INSERT INTO person (firstname, lastname, age) VALUES ('Sarah', 'Fitzgerald', 37);

Verify New Record Added
    ${new_row_count} =  Row Count  SELECT * FROM person;
    Log  ${new_row_count}
    Should be Equal as Numbers  ${new_row_count}  ${PREV_ROW_COUNT + 1}

Verify First Record
    ${queryResults} =  Query  SELECT * FROM person LIMIT 1
    Should be Equal as Strings  ${queryResults[0][0]}  Luke
    Log  ${queryResults[0][0]}

Log All Rows
    ${queryResults} =  Query  SELECT * FROM person;
    Log Many  ${queryResults}