Welcome! this is provisioning system which sets up developmnet instance of petclinic grails application 

Host requirements:
  Vagrand 
  Virtualbox
  optional ansible

HOW TO USE:

git clone https://github.com/good-code/ansible-bootstrap-grails.git

cd ansible-bootstrap-grails

vagrand up

vagrand provision 

vagrand ssh

vagrand destroy


after provisioning is compleated installation continues on ubuntu vm.  this may take up to 20 min before app is available.  


hint:  if something went wrong try to run vagrand provision again.
       still no dice?  vagrand destroy and try again 


