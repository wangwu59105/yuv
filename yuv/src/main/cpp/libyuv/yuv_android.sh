cd build
cmake -DCMAKE_TOOLCHAIN_FILE=android.toolchain.cmake 	 \
      -DANDROID_NDK=/mnt/f/cres/ndk                      \
      -DCMAKE_BUILD_TYPE=Release                     	 \
      -DANDROID_ABI="armeabi-v7a"          \
      ../
