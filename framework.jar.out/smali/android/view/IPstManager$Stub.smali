.class public abstract Landroid/view/IPstManager$Stub;
.super Landroid/os/Binder;
.source "IPstManager.java"

# interfaces
.implements Landroid/view/IPstManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IPstManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IPstManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IPstManager"

.field static final TRANSACTION_CopyFile:I = 0x30

.field static final TRANSACTION_getAccounts:I = 0x3

.field static final TRANSACTION_getAddressCount:I = 0x24

.field static final TRANSACTION_getDebugScreenInfo:I = 0xd

.field static final TRANSACTION_getDeviceId:I = 0x8

.field static final TRANSACTION_getGpsLocationInfo:I = 0x20

.field static final TRANSACTION_getGpsSvInfo:I = 0x21

.field static final TRANSACTION_getLac:I = 0x1c

.field static final TRANSACTION_getLine1Number:I = 0x4

.field static final TRANSACTION_getMediaList:I = 0x2d

.field static final TRANSACTION_getNetworkOperator:I = 0x1b

.field static final TRANSACTION_getOsVersion:I = 0x2b

.field static final TRANSACTION_getPointerLocation:I = 0x2

.field static final TRANSACTION_getResolutionString:I = 0x2e

.field static final TRANSACTION_getSimOperator:I = 0x1a

.field static final TRANSACTION_getTotalSzieofCopy:I = 0x2f

.field static final TRANSACTION_getUsbMode:I = 0x27

.field static final TRANSACTION_getWcdmaDns:I = 0x1d

.field static final TRANSACTION_getWcdmaIP:I = 0x1e

.field static final TRANSACTION_getWifiBSSID:I = 0x12

.field static final TRANSACTION_getWifiChannel:I = 0x15

.field static final TRANSACTION_getWifiDebugScreenInfo:I = 0xe

.field static final TRANSACTION_getWifiFER_PER:I = 0x18

.field static final TRANSACTION_getWifiLinkSpeed:I = 0x13

.field static final TRANSACTION_getWifiMacAddr:I = 0x17

.field static final TRANSACTION_getWifiRssi:I = 0x14

.field static final TRANSACTION_getWifiSSID:I = 0x11

.field static final TRANSACTION_getWifiScanList:I = 0xf

.field static final TRANSACTION_getWifiState:I = 0x10

.field static final TRANSACTION_getWifiip:I = 0x16

.field static final TRANSACTION_getcopyTotalSize:I = 0x31

.field static final TRANSACTION_getcopyreturnString:I = 0x32

.field static final TRANSACTION_gpsStart:I = 0x22

.field static final TRANSACTION_gpsStop:I = 0x23

.field static final TRANSACTION_removePin:I = 0x26

.field static final TRANSACTION_resetSmsLock:I = 0x1f

.field static final TRANSACTION_setAdbMode:I = 0x2a

.field static final TRANSACTION_setMediaScan:I = 0x25

.field static final TRANSACTION_setPointerLocation:I = 0x1

.field static final TRANSACTION_setShowFlingerOptions:I = 0xb

.field static final TRANSACTION_setShowProcesses:I = 0x9

.field static final TRANSACTION_setShowTouches:I = 0xa

.field static final TRANSACTION_setUsbMtpMode:I = 0x28

.field static final TRANSACTION_setUsbPcMode:I = 0x29

.field static final TRANSACTION_startAutoCallCaller:I = 0x5

.field static final TRANSACTION_startAutoCallReceiver:I = 0x6

.field static final TRANSACTION_stopAutoCall:I = 0x7

.field static final TRANSACTION_unlockRemoteCtrl:I = 0x2c

.field static final TRANSACTION_updateWifiState:I = 0x19

.field static final TRANSACTION_wipeData:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.IPstManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IPstManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IPstManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.view.IPstManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IPstManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/view/IPstManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/view/IPstManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IPstManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 478
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 47
    :sswitch_0
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v7, "android.view.IPstManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/IPstManager$Stub;->setPointerLocation(I)Z

    move-result v3

    .line 56
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 62
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_2
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getPointerLocation()I

    move-result v3

    .line 64
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v3    # "_result":I
    :sswitch_3
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 72
    .local v3, "_result":[Landroid/accounts/Account;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v3, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 78
    .end local v3    # "_result":[Landroid/accounts/Account;
    :sswitch_4
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/view/IPstManager$Stub;->startAutoCallCaller(Ljava/lang/String;)J

    move-result-wide v3

    .line 90
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":J
    :sswitch_6
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/view/IPstManager$Stub;->startAutoCallReceiver(II)J

    move-result-wide v3

    .line 102
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 108
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":J
    :sswitch_7
    const-string v7, "android.view.IPstManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->stopAutoCall()Z

    move-result v3

    .line 110
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v3    # "_result":Z
    :sswitch_8
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string v7, "android.view.IPstManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/IPstManager$Stub;->setShowProcesses(I)Z

    move-result v3

    .line 128
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_a
    const-string v7, "android.view.IPstManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/IPstManager$Stub;->setShowTouches(I)Z

    move-result v3

    .line 138
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_b
    const-string v7, "android.view.IPstManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 147
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/IPstManager$Stub;->setShowFlingerOptions(I)Z

    move-result v3

    .line 148
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v3, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_c
    const-string v7, "android.view.IPstManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/IPstManager$Stub;->wipeData(I)Z

    move-result v3

    .line 158
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v3, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 164
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_d
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getDebugScreenInfo()Ljava/util/Map;

    move-result-object v3

    .line 166
    .local v3, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 172
    .end local v3    # "_result":Ljava/util/Map;
    :sswitch_e
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getWifiDebugScreenInfo()Ljava/util/Map;

    move-result-object v3

    .line 174
    .restart local v3    # "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 180
    .end local v3    # "_result":Ljava/util/Map;
    :sswitch_f
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getWifiScanList()Ljava/util/List;

    move-result-object v3

    .line 182
    .local v3, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 188
    .end local v3    # "_result":Ljava/util/List;
    :sswitch_10
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getWifiState()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getWifiSSID()Ljava/lang/String;

    move-result-object v3

    .line 198
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getWifiBSSID()Ljava/lang/String;

    move-result-object v3

    .line 206
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getWifiLinkSpeed()Ljava/lang/String;

    move-result-object v3

    .line 214
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getWifiRssi()Ljava/lang/String;

    move-result-object v3

    .line 222
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_15
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getWifiChannel()Ljava/lang/String;

    move-result-object v3

    .line 230
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getWifiip()Ljava/lang/String;

    move-result-object v3

    .line 238
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getWifiMacAddr()Ljava/lang/String;

    move-result-object v3

    .line 246
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getWifiFER_PER()Ljava/lang/String;

    move-result-object v3

    .line 254
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_19
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->updateWifiState()V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 267
    :sswitch_1a
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 269
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 277
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1c
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getLac()Ljava/lang/String;

    move-result-object v3

    .line 285
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getWcdmaDns()Ljava/lang/String;

    move-result-object v3

    .line 293
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1e
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getWcdmaIP()Ljava/lang/String;

    move-result-object v3

    .line 301
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string v7, "android.view.IPstManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->resetSmsLock()Z

    move-result v3

    .line 309
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v3, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 315
    .end local v3    # "_result":Z
    :sswitch_20
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getGpsLocationInfo()Ljava/util/Map;

    move-result-object v3

    .line 317
    .local v3, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 323
    .end local v3    # "_result":Ljava/util/Map;
    :sswitch_21
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getGpsSvInfo()Ljava/util/Map;

    move-result-object v3

    .line 325
    .restart local v3    # "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 331
    .end local v3    # "_result":Ljava/util/Map;
    :sswitch_22
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->gpsStart()V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 338
    :sswitch_23
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->gpsStop()V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 345
    :sswitch_24
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getAddressCount()Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_25
    const-string v7, "android.view.IPstManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->setMediaScan()Z

    move-result v3

    .line 355
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    if-eqz v3, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 361
    .end local v3    # "_result":Z
    :sswitch_26
    const-string v7, "android.view.IPstManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->removePin()Z

    move-result v3

    .line 363
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v3, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 369
    .end local v3    # "_result":Z
    :sswitch_27
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getUsbMode()Ljava/util/Map;

    move-result-object v3

    .line 371
    .local v3, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 377
    .end local v3    # "_result":Ljava/util/Map;
    :sswitch_28
    const-string v7, "android.view.IPstManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->setUsbMtpMode()Z

    move-result v3

    .line 379
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v3, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 385
    .end local v3    # "_result":Z
    :sswitch_29
    const-string v7, "android.view.IPstManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->setUsbPcMode()Z

    move-result v3

    .line 387
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v3, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 393
    .end local v3    # "_result":Z
    :sswitch_2a
    const-string v7, "android.view.IPstManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 396
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/IPstManager$Stub;->setAdbMode(I)Z

    move-result v3

    .line 397
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    if-eqz v3, :cond_b

    move v5, v6

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 403
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_2b
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getOsVersion()I

    move-result v3

    .line 405
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 411
    .end local v3    # "_result":I
    :sswitch_2c
    const-string v7, "android.view.IPstManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->unlockRemoteCtrl()Z

    move-result v3

    .line 413
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    if-eqz v3, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 419
    .end local v3    # "_result":Z
    :sswitch_2d
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/view/IPstManager$Stub;->getMediaList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 425
    .local v3, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 431
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/Map;
    :sswitch_2e
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getResolutionString()Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 439
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_2f
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 443
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 444
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/view/IPstManager$Stub;->getTotalSzieofCopy(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 450
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_30
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 454
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 456
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/IPstManager$Stub;->CopyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 463
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_31
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getcopyTotalSize()J

    move-result-wide v3

    .line 465
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 471
    .end local v3    # "_result":J
    :sswitch_32
    const-string v5, "android.view.IPstManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Landroid/view/IPstManager$Stub;->getcopyreturnString()Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
