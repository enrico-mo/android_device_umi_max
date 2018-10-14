echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="frameworks/av frameworks/base frameworks/native system/core system/netd"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $rootdirectory/device/umi/MAX/patches/$dir patches..."
	git apply $rootdirectory/device/umi/MAX/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
