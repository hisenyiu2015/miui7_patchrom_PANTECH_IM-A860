#!/system/bin/sh
# Copyright (c) 2012, The Linux Foundation. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above
#       copyright notice, this list of conditions and the following
#       disclaimer in the documentation and/or other materials provided
#       with the distribution.
#     * Neither the name of The Linux Foundation nor the names of its
#       contributors may be used to endorse or promote products derived
#       from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
# ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
#

# No path is set up at this point so we have to do it here.
PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

#mount_needed=false;

#if [ ! -f /system/etc/thermal_fixup ];then
# This should be the first command
# remount system as read-write.
#  mount -o rw,remount,barrier=1 /system
#  mount_needed=true;
#fi

#2013.12.20 8064_1.7G_KK thermal added by wooyub
THERMALD_CONF_SYMLINK=/etc/thermald.conf

MODEL_KRAIT_CONF=`cat /sys/devices/system/soc/soc0/krait_part`

MODEL_EF48S_CONF=/etc/thermald-8064_EF48S_${MODEL_KRAIT_CONF}.conf
MODEL_EF49K_CONF=/etc/thermald-8064_EF49K_${MODEL_KRAIT_CONF}.conf
MODEL_EF50L_CONF=/etc/thermald-8064_EF50L_${MODEL_KRAIT_CONF}.conf
MODEL_EF51S_CONF=/etc/thermald-8064_EF51S_${MODEL_KRAIT_CONF}.conf
MODEL_EF51K_CONF=/etc/thermald-8064_EF51K_${MODEL_KRAIT_CONF}.conf
MODEL_EF51L_CONF=/etc/thermald-8064_EF51L_${MODEL_KRAIT_CONF}.conf
MODEL_EF52S_CONF=/etc/thermald-8064_EF52S_${MODEL_KRAIT_CONF}.conf
MODEL_EF52K_CONF=/etc/thermald-8064_EF52K_${MODEL_KRAIT_CONF}.conf
MODEL_EF52L_CONF=/etc/thermald-8064_EF52L_${MODEL_KRAIT_CONF}.conf

# symlink already exists, exit
if [ -h $THERMALD_CONF_SYMLINK ]; then
	exit 0
fi



#if [ ! -f /system/etc/thermal_fixup ];then
# This should be the first command
# remount system as read-write.
#  mount -o rw,remount,barrier=1 /system
#  mount_needed=true;

# disable file (thermal_A)
# touch /system/etc/thermal_A

# create symlink to target-specific config file
platformid=`cat /sys/devices/system/soc/soc0/id`
case "$platformid" in
    "109" | "130") #APQ/MPQ8064
#    ln -s /etc/thermald-8064.conf $THERMALD_CONF_SYMLINK 2>/dev/null
    if [ -f $MODEL_EF48S_CONF ]
    then
        ln -s /etc/thermald-8064_EF48S_${MODEL_KRAIT_CONF}.conf $THERMALD_CONF_SYMLINK 2>/dev/null
    fi
    if [ -f $MODEL_EF49K_CONF ]
    then
        ln -s /etc/thermald-8064_EF49K_${MODEL_KRAIT_CONF}.conf $THERMALD_CONF_SYMLINK 2>/dev/null
    fi
    if [ -f $MODEL_EF50L_CONF ]
    then
        ln -s /etc/thermald-8064_EF50L_${MODEL_KRAIT_CONF}.conf $THERMALD_CONF_SYMLINK 2>/dev/null
    fi
    if [ -f $MODEL_EF51S_CONF ]
    then
        ln -s /etc/thermald-8064_EF51S_${MODEL_KRAIT_CONF}.conf $THERMALD_CONF_SYMLINK 2>/dev/null
    fi
    if [ -f $MODEL_EF51K_CONF ]
    then
        ln -s /etc/thermald-8064_EF51K_${MODEL_KRAIT_CONF}.conf $THERMALD_CONF_SYMLINK 2>/dev/null
    fi
    if [ -f $MODEL_EF51L_CONF ]
    then
        ln -s /etc/thermald-8064_EF51L_${MODEL_KRAIT_CONF}.conf $THERMALD_CONF_SYMLINK 2>/dev/null
    fi
    if [ -f $MODEL_EF52S_CONF ]
    then
        ln -s /etc/thermald-8064_EF52S_${MODEL_KRAIT_CONF}.conf $THERMALD_CONF_SYMLINK 2>/dev/null
    fi
    if [ -f $MODEL_EF52K_CONF ]
    then
        ln -s /etc/thermald-8064_EF52K_${MODEL_KRAIT_CONF}.conf $THERMALD_CONF_SYMLINK 2>/dev/null
    fi
    if [ -f $MODEL_EF52L_CONF ]
    then
        ln -s /etc/thermald-8064_EF52L_${MODEL_KRAIT_CONF}.conf $THERMALD_CONF_SYMLINK 2>/dev/null
    fi
    ;;

    "116" | "117" | "118" | "119") #MSM8930
    ln -s /etc/thermald-8930.conf $THERMALD_CONF_SYMLINK 2>/dev/null
    ;;

    "138" | "139" | "140" | "141") #MSM8960ab
    ln -s /etc/thermald-8960ab.conf $THERMALD_CONF_SYMLINK 2>/dev/null
    ;;

    *) #MSM8960, etc
    ln -s /etc/thermald-8960.conf $THERMALD_CONF_SYMLINK 2>/dev/null
    ;;
esac

fi

#touch /system/etc/thermal_fixup

#if $mount_needed ;then
# This should be the last command
# remount system as read-only.
#  mount -o ro,remount,barrier=1 /system
#fi

