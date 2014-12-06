
#push local branch to dest branch (dest branch will be named l_branch)
#git push [dest repo] [dest branch]
#git pull <origin-repo-name> <origin-repo-branch-name>
#git push -f <dest-repo-name> <local-branch-name>:<dest-branch-name>




# clone my openwrt git
	git clone git@github.com:Tuochenlyu/openwrt.git

	cd openwrt

# add remote repos
	git remote add buildroot git://git.openwrt.org/openwrt.git
	git remote add buildroot_12.09 git://git.openwrt.org/12.09/openwrt.git
	git remote add buildroot_14.07 git://git.openwrt.org/14.07/openwrt.git
	git remote add packages git@github.com:openwrt/packages.git
	git remote add pkg_management git@github.com:openwrt-management/packages.git
	git remote add pkg_routing git@github.com:openwrt-routing/packages.git
	git remote add pkg_luci git@github.com:openwrt/luci.git
	git remote add pkg_abandoned git@github.com:openwrt/packages-abandoned.git
	git remote add pkg_telephony http://git.openwrt.org/feed/telephony.git

# check remote repos
	git remote -v

# check branches
	git branch -a
	git branch

# fetch all repos
	git fetch --all

## fetch specified repos
#	git fetch --multiple buildroot_trunk buildroot_12.09 buildroot_14.07 packages pkg_management pkg_routing pkg_luci pkg_abandoned


## creat and switch to branches
#	git checkout -b buildroot_12.09

# creat branches
	git branch buildroot-master
	git branch buildroot_12.09-master
	git branch buildroot_14.07-master
	git branch packages-14.07
	git branch packages-master
	git branch pkg_management-master
	git branch pkg_management-14.07
	git branch pkg_routing-master
	git branch pkg_routing-14.07
	git branch pkg_routing-12.09.x
	git branch pkg_luci-master
	git branch pkg_luci-0.12
	git branch pkg_abandoned-master
	git branch pkg_telephony-master
	git branch pkg_telephony-14.07
	

## commit changes with a message
#	git commit -a -m 'Initial branches'
	
# push branches
  git push origin buildroot-master
  git push origin buildroot_12.09-master
  git push origin buildroot_14.07-master
  git push origin packages-14.07
  git push origin packages-master
  git push origin pkg_management-master
  git push origin pkg_management-14.07
  git push origin pkg_routing-master
  git push origin pkg_routing-14.07
  git push origin pkg_routing-12.09.x
  git push origin pkg_luci-master
  git push origin pkg_luci-0.12
  git push origin pkg_abandoned-master
  git push origin pkg_telephony-master
  git push origin pkg_telephony-14.07
  
# push remote repo to my own repo
	git push -f origin buildroot/master:buildroot-master
	git push -f origin buildroot_12.09/master:buildroot_12.09-master
	git push -f origin buildroot_14.07/master:buildroot_14.07-master
	git push -f origin packages/master:packages-14.07
	git push -f origin packages/master:packages-master
	git push -f origin pkg_management/master:pkg_management-master
	git push -f origin pkg_management/for-14.07:pkg_management-14.07
	git push -f origin pkg_routing/master:pkg_routing-master
	git push -f origin pkg_routing/for-14.07:pkg_routing-14.07
	git push -f origin pkg_routing/for-12.09.x:pkg_routing-12.09.x
	git push -f origin pkg_luci/master:pkg_luci-master
	git push -f origin pkg_luci/luci-0.12:pkg_luci-0.12
	git push -f origin pkg_abandoned/master:pkg_abandoned-master
	git push -f origin pkg_telephony/master:pkg_telephony-master
	git push -f origin pkg_telephony/for-14.07:pkg_telephony-14.07
