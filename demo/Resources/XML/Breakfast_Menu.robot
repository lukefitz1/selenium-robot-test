*** Settings ***
Library  XML

*** Variables ***
${XML_MENU_PATH} =  Inputs/menu.xml
${EXPECTED_MENU_COUNT} =  1
${EXPECTED_FOOD_COUNT} =  5

*** Keywords ***
Should be one menu in the file
    # since we're passing  the file name with no element, we get
    # a count of how many elements are in the file
    ${menu_count} =  Get Element Count  ${XML_MENU_PATH}
    Should Be Equal As Numbers  ${menu_count}  ${EXPECTED_MENU_COUNT}

Verify Menu Name
    ${root} =  Parse XML  ${XML_MENU_PATH}
    Should Be Equal  ${root.tag}  breakfast_menu

Verify Food Count
    ${food_count} =  Get Element Count  ${XML_MENU_PATH}  food
    Should Be Equal As Numbers  ${food_count}  ${EXPECTED_FOOD_COUNT}

Verify First Food Name
    # only pass the name of the desired element
    ${first_food_name} =  Get Element  ${XML_MENU_PATH}  food[1]/name
    Should Be Equal As Strings  ${first_food_name.text}  Belgian Waffles

Verify First Food Price
    ${first_food_price} =  Get Element  ${XML_MENU_PATH}  food[1]/price
    Should Be Equal As Strings  ${first_food_price.text}  5.95

Verify First Food Calories
    ${first_food_calories} =  Get Element  ${XML_MENU_PATH}  food[1]/calories
    Should Be Equal As Strings  ${first_food_calories.text}  650

Add New Food
    ${root} =  Parse XML  ${XML_MENU_PATH}
    Add Element  ${root}  <food></food>
    Add Element  ${root}  <name>Grilled cheese</name>
    Add Element  ${root}  <price>8.00</price>
    Add Element  ${root}  <description>Some cheesy grilled cheese</description>
    Add Element  ${root}  <calories>1000</calories>
    Save XML  ${root}  ${XML_MENU_PATH}

Verify New Food Exists
    Element Should Exist  ${XML_MENU_PATH}  food[6]