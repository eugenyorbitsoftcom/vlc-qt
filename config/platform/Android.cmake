#############################################################################
# VLC-Qt - Qt and libvlc connector library
# Copyright (C) 2016 Tadej Novak <tadej@tano.si>
#
# This library is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this library. If not, see <http://www.gnu.org/licenses/>.
#############################################################################
# Android Extra #
#################
SET(LIBVLC_LIBRARY "${VLC_ANDROID_PATH}/libvlc/jni/libs/${ANDROID_ABI}/libvlc.so")
SET(LIBVLC_INCLUDE_DIR "${VLC_ANDROID_PATH}/vlc/include")

# Install
FILE(GLOB ANDROID_COMPAT_LIB ${VLC_ANDROID_PATH}/libvlc/jni/libs/${ANDROID_ABI}/libcompat*)

INSTALL(FILES ${LIBVLC_LIBRARY} DESTINATION "${CMAKE_INSTALL_PREFIX}/lib")
INSTALL(FILES ${ANDROID_COMPAT_LIB} DESTINATION "${CMAKE_INSTALL_PREFIX}/lib")
