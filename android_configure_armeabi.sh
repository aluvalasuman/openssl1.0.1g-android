# I put all my dev stuff in here
export DEV_PREFIX=$HOME

# Don't forget to adjust this to your NDK path
export ANDROID_NDK=${DEV_PREFIX}/android-ndk-r9c/

export NDK=${ANDROID_NDK}

export TOOLCHAIN_INSTALL_DIR=`pwd`/../android/android-toolchain-arm

$NDK/build/tools/make-standalone-toolchain.sh --platform=android-9 --toolchain=arm-linux-androideabi-4.8 --install-dir=$TOOLCHAIN_INSTALL_DIR
export TOOLCHAIN_PATH=$TOOLCHAIN_INSTALL_DIR/bin
export TOOL=arm-linux-androideabi
export NDK_TOOLCHAIN_BASENAME=${TOOLCHAIN_PATH}/${TOOL}
export CC=$NDK_TOOLCHAIN_BASENAME-gcc
export CXX=$NDK_TOOLCHAIN_BASENAME-g++
export CPP=${NDK_TOOLCHAIN_BASENAME}-cpp
export LINK=${CXX}
export LD=$NDK_TOOLCHAIN_BASENAME-ld
export AR=$NDK_TOOLCHAIN_BASENAME-ar
export AS=${NDK_TOOLCHAIN_BASENAME}-as
export RANLIB=$NDK_TOOLCHAIN_BASENAME-ranlib
export STRIP=$NDK_TOOLCHAIN_BASENAME-strip
export NM=${NDK_TOOLCHAIN_BASENAME}-nm
export OBJDUMP=${NDK_TOOLCHAIN_BASENAME}-objdump
export ARCH_FLAGS="-mthumb"
export ARCH_LINK=
export CPPFLAGS=" ${ARCH_FLAGS} -fpic -ffunction-sections -funwind-tables -fstack-protector -fno-strict-aliasing -finline-limit=64 "
export CXXFLAGS=" ${ARCH_FLAGS} -fpic -ffunction-sections -funwind-tables -fstack-protector -fno-strict-aliasing -finline-limit=64 -frtti -fexceptions "
export CFLAGS=" ${ARCH_FLAGS} -fpic -ffunction-sections -funwind-tables -fstack-protector -fno-strict-aliasing -finline-limit=64 "
export LDFLAGS=" ${ARCH_LINK} "

