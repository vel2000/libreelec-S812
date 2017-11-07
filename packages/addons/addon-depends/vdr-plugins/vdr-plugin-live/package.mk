################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="vdr-plugin-live"
PKG_VERSION="0.3.0"
PKG_SHA256="c200042e51393c247be97e7f4667a1f3f06319d5c8e538adca32fdfac8d178da"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://live.vdr-developer.org/en/index.php"
PKG_URL="http://live.vdr-developer.org/downloads/${PKG_NAME/-plugin/}-${PKG_VERSION}.tar.gz"
PKG_SOURCE_DIR="live-${PKG_VERSION}"
PKG_DEPENDS_TARGET="toolchain vdr tntnet pcre:host pcre"
PKG_SECTION="multimedia"
PKG_SHORTDESC="vdr-live: the LIVE Interactive VDR Environment/"
PKG_LONGDESC="vdr-live allows a comfortable operation of VDR and some of its plugins trough a web interface"
PKG_AUTORECONF="no"

pre_configure_target() {
  export CFLAGS="$CFLAGS -fPIC"
  export CXXFLAGS="$CXXFLAGS -fPIC"
  export LDFLAGS="$LDFLAGS -fPIC -L$SYSROOT_PREFIX/usr/lib/iconv"
}

pre_make_target() {
  # dont build parallel
  MAKEFLAGS=-j1
}

make_target() {
  VDR_DIR=$(get_build_dir vdr)
  make VDRDIR=$VDR_DIR \
    LIBDIR="." \
    LOCALEDIR="./locale"
}

makeinstall_target() {
  : # installation not needed, done by create-addon script
}