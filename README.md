# tomcat-project

https://www.fosstechnix.com/deploy-war-file-in-tomcat-2-steps/

https://stackoverflow.com/questions/36703856/access-tomcat-manager-app-from-different-host

readlink -f $(which java)
<role rolename="admin-gui,manager-gui,manager-script,manager-jmx,manager-status"/>
<user username="admin" password="admin123" roles="admin-gui,manager-gui,manager-script"/>

https://www.jenkins.io/doc/book/installing/linux/ - In EC2

https://medium.com/@ranjith_99360/how-to-install-jenkins-on-ubuntu-22-04-17b99fd41678 - In Virtualbox Machine

https://stackoverflow.com/questions/28340877/how-to-change-port-number-for-jenkins-installation-in-ubuntu-12-04

====================================================================================================================
tomcat user.xml add using echo [ google search ]

https://www.unix.com/shell-programming-and-scripting/159054-code-insert-user-into-tomcat-config-file.html

sed -i '/<\/tomcat-users>/ i\<role rolename="admin-gui,manager-gui,manager-script,manager-jmx,manager-status"/>' tomcat-users.xml

sed -i '/<\/tomcat-users>/ i\<user username="admin" password="admin123" roles="admin-gui,manager-gui,manager-script"/>' tomcat-users.xml
