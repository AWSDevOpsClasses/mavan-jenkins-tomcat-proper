https://askubuntu.com/questions/968576/appending-a-line-to-a-file-in-the-cat-command
https://stackoverflow.com/questions/11322807/echo-multiple-lines-into-a-file
echo -e '<role rolename="admin-gui,manager-gui,manager-script,manager-jmx,manager-status"/>\n<user username="admin" password="admin123" roles="admin-gui,manager-gui,manager-script"/>' >> /opt/tomcat/conf/tomcat-users.xml

Remove line of text from multiple files in Linux
https://stackoverflow.com/questions/1182756/remove-line-of-text-from-multiple-files-in-linux
Example : if you want to remove the line containing word sleep in all the xml files

find . -name "*.xml" -type f | xargs sed -i -e '/sleep/d'
