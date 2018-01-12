# .bashrc file
#----------------------------------------------------------------------------
#-----------------------------Greeting Message-------------------------------
#----------------------------------------------------------------------------

echo -e '\n \e[32m 
  _____       _      
 / ____|     (_)      
| |  __  __ _ _ _   _
| | |_ |/ _` | | | | |
| |__| | (_| | | |_| |
 \_____|\__,_| |\__,_|
            _/ |      
           |__/   

\e[97m \n'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
#----------------------------------------------------------------------------
#----------------------------------Alias-------------------------------------
#----------------------------------------------------------------------------

alias aptana='nohup $HOME/Documents/Aptana_Studio_3/AptanaStudio3 &'
alias c='clear'
alias ip='ifconfig'
alias bedit='vi ~/.bashrc'
alias .='cd ..'
alias ..='cd ../../'
alias ...='cd ../../../'
alias update='sudo dnf update'
alias globalip="curl icanhazip.com"
alias q="exit"
alias downloads='cd $HOME/Downloads'
alias docs='cd $HOME/Documents'
alias xamppdir='cd /opt/lampp'
alias project='cd /var/www/html/platform && ls'
alias secgen='cd /var/www/html/SecGen'
alias secgenp='cd /var/www/html/SecGen/projects && ls'
alias opennotes='cd $HOME/Documents/notes/'
alias univmail='google-chrome http://owa.leedsbeckett.ac.uk'
alias gmail='google-chrome https://mail.google.com/mail/u/0/#inbox'
alias drive='google-chrome https://drive.google.com'
alias ovirtapi='google-chrome https://access.redhat.com/documentation/en-US/Red_Hat_Virtualization/4.0/pdf/REST_API_Guide/Red_Hat_Virtualization-4.0-REST_API_Guide-en-US.pdf'
alias projecttest='google-chrome https://ctffrontend/platform/support/test/test.php'
alias xampppan='echo "SYSTEM_PASSWORD" | sudo -S /opt/lampp/manager-linux-x64.run'
#---------------------------------------------------------------------------
#--------------------------------function-----------------------------------
#---------------------------------------------------------------------------

extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1     ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }									

#-------------------------------------------------------------------------- 
#--------------------------------fullcustom--------------------------------
#--------------------------------------------------------------------------
openprojects(){
aptana \
ovirtapi \ 
projecttest
}

createnote () {					     #option to create note
 if [ -z $1 ]
 then
	 echo "No name supplied"
 else 
	vi $HOME/Documents/notes/$1
 fi
}


open () {					     #open to file 
 if [ -f $1 ]
 then
	 xdg-open $1
 else
        echo "No filename specified"
 fi
}

ch(){					    #visit url
 if [ -z $1 ]
 then
         echo "No name supplied"
 else
        google-chrome $1
 fi
}

chi(){                                            #visit url
 if [ -z $1 ]
 then
         echo "No name supplied"
 else
        google-chrome -incognito $1
 fi
}

chs(){                                            #visit url
 if [ -z $1 ]
 then
         echo "No name supplied"
 else
        google-chrome  https://www.google.co.uk/?q=$1
 fi
}


#-------------------------------------------------------------------------
#-----------------------------------Source--------------------------------
#-------------------------------------------------------------------------

#ZIP (extract)	=	https://serverfault.com/questions/3743/what-useful-things-can-one-add-to-ones-bashrc?page=1&tab=votes#tab-top



bhelp(){
echo "

-------------------------------------------------------------------------
				SINGLE COMMAND				
-------------------------------------------------------------------------		

aptana			:	Aptana Development Tool
c			:	Clear
q			:	Quit
bedit 			:	Edit Bashrc File
.			:	I directory up
..			:	II directory up
...			:	III directory up
update 			:	update system
globalip		:	globalip
downloads		:	open Downloads
docs 			: 	open Documents
xamppdir		:	open XAMPP proj directory
project			:	open project platform directory
secgen 			:	open secgen project
secgenp			:	open secgen genereted scenario directory
opennotes		:	open notes directory
univmail		:	open university mail
gmail			:	open gmail
drive			:	open drive
ovirtapi		:	open ovirt api pdf file (RED HAT 4.0)
projecttest		:	open local test directory (/platform/test.php)

-------------------------------------------------------------------------
                                ARGUMENT COMMAND                          
-------------------------------------------------------------------------  

extract [FILE]		:	Extract any zip file
createnote [FILENAME]	:	Create file in a documents/notes directory
open [FILENAME]		:	Open file with default application
o [URL]			:	Open url in chrome - normal mode
oi [URL]		:	Open url in chrome - incognito mode


"
}





