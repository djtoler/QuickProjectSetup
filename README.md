![](https://github.com/djtoler/QuickProjectSetup/blob/main/Green%20Best%20Day%20Ever%20Wedding%20Banner%20Print.gif)

# Automated Project Setup Workflow
|Linux/Bash Project Scripting Automation|Vehicle Frame Building Automation|
|:-:|:-:|
|![put text here](https://linuxbashscripts1.s3.amazonaws.com/833e83be1b99e5f801118bc30d58642e.gif) |![7 Forms of Waste Explained](https://linuxbashscripts1.s3.amazonaws.com/HelplessSimpleAdmiralbutterfly-size_restricted.gif )|
<br> 
<img align="right" width="200" height="200" src="https://linuxbashscripts1.s3.amazonaws.com/giphy.gif">

During my 9 years of working in the automotive industry, I was unwittingly groomed into a "automate everything" way of thinking. 

If a result can be produced, then theres a set of steps that happen within that production process to produce that result. Those steps can always be identified, usually can be optimized and hopefully automated.
<br> 
<br> 
Part of my job everyday as a Team Coordinator was to monitor a job operation, document the tasks within that particular operations build process and find opportunities to improve efficiency. 
 
<br> 

In automotive manufacturing, one of the main drivers of production level efficency is automation. Theres a methodology called "Lean Manufacturing" and a concept within that called the <ins>_**"7 Forms Of Waste"**_</ins>. 

During my coding bootcamp in February 2022, the way I learned to deploy a project development envoiornment was in violation of a few of these principles I'd grown accustomed to abiding by. 

|7 Forms of Waste Explained|Project Setup Wasteful Actions |
|:-:|:-:|
|![7 Forms of Waste Explained](https://linuxbashscripts1.s3.amazonaws.com/poster_9_Web_-01__81207.jpg) |![Project Setup Wasteful Actionsd](https://linuxbashscripts1.s3.amazonaws.com/7wasteviolation.PNG )|

Learning Linux Bash Scripting has drastically improved my productivity. 

Simple thing such as deploying a project developement enviornment which used to take up to 12 minutes or more, now takes about 5 seconds of actual manual labor from me. 

I copy file name into the command line followed by a single argument and I automatically have a backend infastructure deployed into a Github repository, along with multiple pre-configured database connections and a UI to send some data to.

<img src="https://linuxbashscripts1.s3.amazonaws.com/setupauto.PNG">

|Automated Server & Database Deployment | Automated User Interface & GitHub Repo Deployment |
|:-:|:-:|
|![Automated Server & Database Deployment](https://linuxbashscripts1.s3.amazonaws.com/automatedserverdbs.PNG) |![Automated GitHub Repo Deployment ](https://linuxbashscripts1.s3.amazonaws.com/gianduiauto.PNG)|
|Automated Dependency Installation and package.JSON configuration | Automated Development Infastructure Deployment |
|:-:|:-:|
|![Automated Dependency Installation and package.JSON configuration](https://linuxbashscripts1.s3.amazonaws.com/createjsonpackages.PNG) |![Automated Development Infastructure Deployment  ](https://linuxbashscripts1.s3.amazonaws.com/infrastructureauto.PNG)| 

|Automated Project Successfully Built and Deployed to Github | Ready to Start Coding |
|:-:|:-:|
|![Automated Project Successfully Built and Deployed to Github](https://linuxbashscripts1.s3.amazonaws.com/finished.PNG) |![Ready to Start Coding](https://github.com/djtoler/QuickProjectSetup/blob/main/startcoding.gif)|

My next step in building out these automated project workflow scripts for my development tool-kit, I will address the inventory/over-production aspects of waste that are produced in this particular automation script. 

Currently, there are several database connections automatically made with each automated deployment of a project, which may not be necessary. I can address this in at least 2 ways.

<br>
1. I can use some bash conditional expressions to make connections to only the databases passed into my script arguments
<br>
2. I can create an additional automated script that I can run when I get to a point in my project when I've made a final decision of what databse I will be using. The "rm -r" command can be used to recursively delete the particular database directories that arent necessary, along with conditional expressions and arguments to automate the job.
