set REPORT_TIME=%DATE:~7,2%_%DATE:~4,2%_%DATE:~-4%-%TIME:~0,2%_%TIME:~3,2%_%TIME:~6,2%

echo %REPORT_TIME%
echo "java -jar ./apache-jmeter-5.5/bin/ApacheJMeter.jar -n -f -t Petstore_Performance_Testing.jmx -l ./result.jtl -e -o ./report"
echo "!!!__TO RUN IN GUI MODE REMMOVE -n FLAG__!!!"

java -jar ./apache-jmeter-5.5/bin/ApacheJMeter.jar -n -f -t ./Petstore_Performance_Testing.jmx -l ./result.jtl -e -o ./report/%REPORT_TIME% -Jemail=$test@mail.com -Jpassword=$testpass12