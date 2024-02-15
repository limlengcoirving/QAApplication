# QAApplication
1. Install PyCharm Coomunity Version. Please go to https://www.jetbrains.com/pycharm/download/other.html for the list of versions. Used the 2023.3.3 - Windows ARM64 (exe) in writing and running the test (https://download.jetbrains.com/python/pycharm-community-2023.3.3-aarch64.exe?_ga=2.75459922.1580542391.1708030033-1569568379.1707917207&_gl=1*12g7euk*_ga*MTU2OTU2ODM3OS4xNzA3OTE3MjA3*_ga_9J976DJZ68*MTcwODAzMDAzMi40LjAuMTcwODAzMDAzMi42MC4wLjA.)
2. After installing the PyCharm. Create a new project
3. Go to File > Settings > Plugins
4. Install Robot Framework Language Server (Please refer to /howto/InstalledPlugins.jpg for the version used
5. Go to File > Settings > Project:(Project Name) > Python Interpreter
6. Please refer to /howto/PythonInterpreterPackages.jpg for the packages to be installed
7. Go to File > Settings > Language & Frameworks > Robot Framework (Project)
8. Go to Language Server Python and enter the python exe file to be used. Please refer to /howto/RobotFrameworkPythonLocation.jpg for details
9. Go to Pythonpath and enter the project to be added to the PYTHONPATH. Please refer to /howto/RobotFrameworkPythonPath.jpg for details
10. You may use any of the 3 files in running the test
11. AutomationExam.robot -> basic writing of the code that uses RobotFramework
12. AutomationExamBDD.robot -> RobotFramework that is BDD but uses ids and classes for the elements and buttons for the tests
13. AutomationExamBDDCSS.robot -> RobotFramework that is BDD but uses ids, classes and some are in CSS for the elements and buttons for the tests
