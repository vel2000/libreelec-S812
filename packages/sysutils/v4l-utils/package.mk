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

# with 1.0.0 repeat delay is broken. test on upgrade

PKG_NAME="v4l-utils"
PKG_VERSION="1.12.5"
PKG_SHA256="0618162ddb0b57fe7c45407d4d66ed79e3a134cdbc9e72598d34e61d3359e20d"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://linuxtv.org/"
PKG_URL="http://linuxtv.org/downloads/v4l-utils/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="system"
PKG_SHORTDESC="v4l-utils: Linux V4L2 and DVB API utilities and v4l libraries (libv4l)."
PKG_LONGDESC="Linux V4L2 and DVB API utilities and v4l libraries (libv4l)."
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--without-jpeg --disable-qv4l2"
#PKG_MAKEINSTALL_OPTS_TARGET="PREFIX=/usr -C utils"

pre_configure_target() {
  # v4l-utils fails to build in subdirs
  cd $PKG_BUILD
  rm -rf .$TARGET_NAME
}

post_makeinstall_target() {
  rm -rf $INSTALL/etc/rc_keymaps
    ln -sf /storage/.config/rc_keymaps $INSTALL/etc/rc_keymaps

  mkdir -p $INSTALL/usr/config
    cp -PR $PKG_DIR/config/* $INSTALL/usr/config

  rm -rf $INSTALL/usr/lib/udev/rules.d
    mkdir -p $INSTALL/usr/lib/udev/rules.d
    cp -PR $PKG_DIR/udev.d/*.rules $INSTALL/usr/lib/udev/rules.d

  (
    echo "# table libreelec_multi, type: RC6 NEC"
    for f in rc6_mce xbox_360 zotac_ad10 hp_mce xbox_one cubox_i ; do
      echo "# $f"
      grep -v "^#" $INSTALL/usr/lib/udev/rc_keymaps/$f
    done
  ) > $INSTALL/usr/lib/udev/rc_keymaps/libreelec_multi
}
