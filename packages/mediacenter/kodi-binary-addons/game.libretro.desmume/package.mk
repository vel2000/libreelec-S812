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

PKG_NAME="game.libretro.desmume"
PKG_VERSION="d7fe390"
PKG_SHA256="3d2c31d2349ceac04d76eb8b481995c2168772d68d2a7f47da594fa0833cc0da"
PKG_REV="103"
# no openGL suport in retroplayer yet
PKG_ARCH="none"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/kodi-game/game.libretro.desmume"
PKG_URL="https://github.com/kodi-game/game.libretro.desmume/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain kodi-platform libretro-desmume"
PKG_SECTION=""
PKG_SHORTDESC="game.libretro.desmume: DESMuME GameClient for kodi"
PKG_LONGDESC="game.libretro.desmume: DESMuME GameClient for Kodi"
PKG_AUTORECONF="no"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
