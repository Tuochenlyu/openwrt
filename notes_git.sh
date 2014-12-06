#set golbal name
git config --global user.name "Tuochenlyu"
#set golbal email
git config --global user.email "YOUR EMAIL ADDRESS"

#list .SSH in directory
ls -al ~/.ssh


#clone from original
git clone git://git.openwrt.org/14.07/openwrt.git barrier_breaker
#enter forked directory
cd barrier_breaker
#List the current configured remote repository for your fork
git remote -v
#Specify a new remote upstream repository that will be synced with the fork.
git remote add upstream git://git.openwrt.org/14.07/openwrt.git
#remove original location
git remote remove origin
#add your forked location
git remote add origin git@github.com:Tuochenlyu/openwrt_14.07_fork.git
#Verify the new upstream repository (original is yourself, upstream is original repository)
git remote -v
#fetch from original repository
git fetch upstream
# Switch to local branch 'master'
git checkout master
#merge from [upstream/master] into your local [master] branch. Local changes won't be lost.
git merge upstream/master

#get changes from original
git fetch upstream master

#delete a remote branch
  git push <remote> :<remote-branch>

#creat global gitignore
  git config --global core.excludesfile ~/.gitignore_global
  
# untrack files after updating gotignore
  git rm --cached 
  
# untrack files to be submitted,edit the following
  .git/info/exclude
