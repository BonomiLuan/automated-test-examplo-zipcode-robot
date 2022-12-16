## End to End tests 

Developed using Robot Framework and selenium to take a address in Brazil

### Requirements

1. Install Python
2. Install Pip
3. Install Selenium, Robot Framework and it's libraries:

'pip install -r requirements.txt'   

Or run each command separately:

'pip install robotframework'    
'pip install robotframework-seleniumlibrary'
'pip install robotframework-requests'
'pip install robotframework-jsonlibrary'

### Running using command line:

To run the test use the following command line inside tests folder:

'robot .\ValidateAddressPaulinia.robot'

### Running using a batch or bash profile:

To run with a batch file (Windows), you can use it by double clicking on the file (execute.bat) or use the following command line inside the project test:

'execute.bat'

This command line to make this file executable (macOS or linux):

'chmod u+x execute.sh'

And to run on macOS or Linux:

'sh execute.sh'

Or just:

'./execute.sh'
