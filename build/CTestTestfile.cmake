# CMake generated Testfile for 
# Source directory: /mnt/linux-data/src/helloworld-kirigami
# Build directory: /mnt/linux-data/src/helloworld-kirigami/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(appstreamtest "/usr/bin/cmake" "-DAPPSTREAMCLI=/usr/bin/appstreamcli" "-DINSTALL_FILES=/mnt/linux-data/src/helloworld-kirigami/build/install_manifest.txt" "-P" "/usr/share/ECM/kde-modules/appstreamtest.cmake")
set_tests_properties(appstreamtest PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/ECM/kde-modules/KDECMakeSettings.cmake;161;add_test;/usr/share/ECM/kde-modules/KDECMakeSettings.cmake;179;appstreamtest;/usr/share/ECM/kde-modules/KDECMakeSettings.cmake;0;;/mnt/linux-data/src/helloworld-kirigami/CMakeLists.txt;12;include;/mnt/linux-data/src/helloworld-kirigami/CMakeLists.txt;0;")
subdirs("src")
