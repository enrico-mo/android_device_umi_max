echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="frameworks/av system/netd"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	#git am $rootdirectory/device/umi/MAX/patches/$dir/*.patch
	git apply $rootdirectory/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
