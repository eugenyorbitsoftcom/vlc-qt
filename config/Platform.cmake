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
# Set platform specific settings #
##################################
IF(MINGW OR MSVC)
    INCLUDE(Windows)
ENDIF()

IF(NOT IOS AND ${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
    INCLUDE(macOS)
ENDIF()

# Mobile
IF(${CMAKE_SYSTEM_NAME} MATCHES "Android")
    INCLUDE(Android)
ENDIF()

IF(IOS AND ${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
    INCLUDE(iOS)
ENDIF()
