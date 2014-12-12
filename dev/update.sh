	git fetch --all
	git push -f origin buildroot/master:buildroot-master
	git push -f origin buildroot_12.09/master:buildroot_12.09-master
	git push -f origin buildroot_14.07/master:buildroot_14.07-master
	git push -f origin packages/for-14.07:packages-14.07
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
	git push -f origin pkg_old_14.07/master:pkg_old_14.07

