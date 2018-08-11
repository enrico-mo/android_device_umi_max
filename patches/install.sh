echo $1
rootdirectory="$PWD"

# ---------------------------------

dirs="bionic"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $rootdirectory/$dir patches..."
	git am $rootdirectory/$dir/*.patch
	echo " "
done

dirs="frameworks/av"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $rootdirectory/$dir patches..."
	git am $rootdirectory/$dir/*.patch
	echo " "
done

dirs="system/core"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $rootdirectory/$dir patches..."
	git am $rootdirectory/$dir/*.patch
	echo " "
done

dirs="system/sepolicy"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $rootdirectory/$dir patches..."
	git am $rootdirectory/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
