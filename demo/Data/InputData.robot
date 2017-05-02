*** Variables ***
${BROWSER} =  chrome
${ENV} =  prod
${LOGIN_URL} =  profile/secure/login

&{BASE_URL}  qa=http://qa.cars.com  staging=http://staging.cars.com  prod=http://www.cars.com

# Input Data
&{UNREGISTERED_USER}  Email=luke.fitzgerald@blueacorn.com  Password=TestPassword!  ExpectedErrorMessage=You haven't signed up yet. Try a different email address or
&{INVALID_PASSWORD_USER}  Email=lukefitz1@gmail.com  Password=TestPassword!  ExpectedErrorMessage=Please double check your password. It should be 6 or more characters
&{BLANK_CREDENTIALS_USER}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=Please enter your email address and password.