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

PKG_NAME="game.libretro.fceumm"
PKG_VERSION="9a4b629"
PKG_SHA256="5f20d7f85c33a05e1cbc800903880bf261e0a49d5a23a246b8bf98f81281f32b"
PKG_REV="104"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/kodi-game/game.libretro.fceumm"
PKG_URL="https://github.com/kodi-game/game.libretro.fceumm/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain kodi-platform libretro-fceumm"
PKG_SECTION=""
PKG_SHORTDESC="game.libretro.fceumm: FCEUmm emulator for Kodi"
PKG_LONGDESC="game.libretro.fceumm: FCEUmm emulator for Kodi"
PKG_AUTORECONF="no"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"