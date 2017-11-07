################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2016-present Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="game.libretro.snes9x2002"
PKG_VERSION="e49f0cc"
PKG_SHA256="d9fdccb48721ed97290d3ddafe5f0528798426078c906fb307e0b83f286b5a20"
PKG_REV="103"
# neon optimizations make it only useful for arm
PKG_ARCH="arm"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/kodi-game/game.libretro.snes9x2002"
PKG_URL="https://github.com/kodi-game/game.libretro.snes9x2002/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain kodi-platform libretro-snes9x2002"
PKG_SECTION=""
PKG_SHORTDESC="game.libretro.snes9x2002: snes9x2002 for Kodi"
PKG_LONGDESC="game.libretro.snes9x2002: snes9x2002 for Kodi"
PKG_AUTORECONF="no"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
