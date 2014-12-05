#push local branch to dest branch (dest branch will be named l_branch)
3	#git push [dest repo] [dest branch]
4	#git pull <origin-repo-name> <origin-repo-branch-name>
5	#git push -f <dest-repo-name> <local-branch-name>:<dest-branch-name>
6	
7	
8	
9	
10	# clone my openwrt git
11		git clone git@github.com:Tuochenlyu/openwrt.git
12	
13		cd openwrt
14	
15	# add remote repos
16		git remote add buildroot git://git.openwrt.org/openwrt.git
17		git remote add buildroot_12.09 git://git.openwrt.org/12.09/openwrt.git
18		git remote add buildroot_14.07 git://git.openwrt.org/14.07/openwrt.git
19		git remote add packages git@github.com:openwrt/packages.git
20		git remote add pkg_management git@github.com:openwrt-management/packages.git
21		git remote add pkg_routing git@github.com:openwrt-routing/packages.git
22		git remote add pkg_luci git@github.com:openwrt/luci.git
23		git remote add pkg_abandoned git@github.com:openwrt/packages-abandoned.git
24	
25	# check remote repos
26		git remote -v
27	
28	# check branches
29		git branch -a
30		git branch
31	
32	# fetch all repos
33		git fetch --all
34	
35	## fetch specified repos
36	#	git fetch --multiple buildroot_trunk buildroot_12.09 buildroot_14.07 packages pkg_management pkg_routing pkg_luci pkg_abandoned
37	
38	
39	## creat and switch to branches
40	#	git checkout -b buildroot_12.09
41	
42	# creat branches
43		git branch buildroot-master
44		git branch buildroot_12.09-master
45		git branch buildroot_14.07-master
46		git branch packages-14.07
47		git branch packages-master
48		git branch pkg_management-master
49		git branch pkg_management-14.07
50		git branch pkg_routing-master
51		git branch pkg_routing-14.07
52		git branch pkg_routing-12.09.x
53		git branch pkg_luci-master
54		git branch pkg_luci-0.12
55		git branch pkg_abandoned-master
56	
57	## commit changes with a message
58	#	git commit -a -m 'Initial branches'
59		
60	# push branches
61	  git push origin buildroot-master
62	  git push origin buildroot_12.09-master
63	  git push origin buildroot_14.07-master
64	  git push origin packages-14.07
65	  git push origin packages-master
66	  git push origin pkg_management-master
67	  git push origin pkg_management-14.07
68	  git push origin pkg_routing-master
69	  git push origin pkg_routing-14.07
70	  git push origin pkg_routing-12.09.x
71	  git push origin pkg_luci-master
72	  git push origin pkg_luci-0.12
73	  git push origin pkg_abandoned-master
74	
75	# push remote repo to my own repo
76		git push -f origin buildroot/master:buildroot-master
77		git push -f origin buildroot_12.09/master:buildroot_12.09-master
78		git push -f origin buildroot_14.07/master:buildroot_14.07-master
79		git push -f origin packages/master:packages-14.07
80		git push -f origin packages/master:packages-master
81		git push -f origin pkg_management/master:pkg_management-master
82		git push -f origin pkg_management/for-14.07:pkg_management-14.07
83		git push -f origin pkg_routing/master:pkg_routing-master
84		git push -f origin pkg_routing/for-14.07:pkg_routing-14.07
85		git push -f origin pkg_routing/for-12.09.x:pkg_routing-12.09.x
86		git push -f origin pkg_luci/master:pkg_luci-master
87		git push -f origin pkg_luci/luci-0.12:pkg_luci-0.12
88		git push -f origin pkg_abandoned/master:pkg_abandoned-master
89		
