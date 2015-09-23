
#DEVELOPER="/Applications/Xcode.app/Contents/Developer"
#ARCH="amrv7"
VERSION="1.4.0"
SDKVERSION="7.1"
MINIOSVERSION="6.0"


CC="${CCACHE}${DEVELOPER}/usr/bin/gcc" \

LDFLAGS="$LDFLAGS -arch armv7 -fPIE -miphoneos-version-min=6.0 -L./dependencies/lib" \
LDFLAGS="$LDFLAGS -arch ${ARCH} -fPIE -miphoneos-version-min=${MINIOSVERSION} ${EXTRA_LDFLAGS} -L${OUTPUTDIR}/lib" \

CFLAGS="$CFLAGS -g -O0 -D__APPLE_USE_RFC_3542 -arch armv7 -fPIE -miphoneos-version-min=6.0 -I./dependencies/include -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS7.1.sdk" \

./configure --disable-shared --enable-static --with-pcap=bpf --enable-ipv6 ${EXTRA_CONFIG} \
    --prefix="${INTERDIR}/${PLATFORM}${SDKVERSION}-${ARCH}.sdk" \
    CC="/Applications/Xcode.app//Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++" \
    LDFLAGS="$LDFLAGS -arch armv7 -fPIE -miphoneos-version-min=6.0 -L./dependencies/lib" \
    CFLAGS="$CFLAGS -g -O0 -D__APPLE_USE_RFC_3542 -arch armv7 -fPIE -miphoneos-version-min=6.0 -I./dependencies/include -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS7.1.sdk" \

