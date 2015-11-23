.class public abstract Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;
.super Landroid/os/Binder;
.source "ISkyTelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/gsm/ISkyTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/ISkyTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.gsm.ISkyTelephony"

.field static final TRANSACTION_checkEmergencyList:I = 0x13

.field static final TRANSACTION_deleteAcqDb:I = 0x7

.field static final TRANSACTION_getGcfMode:I = 0x12

.field static final TRANSACTION_getIpAddress:I = 0x16

.field static final TRANSACTION_getLocalDbInfo_Float:I = 0x1a

.field static final TRANSACTION_getLocalDbInfo_Int:I = 0x18

.field static final TRANSACTION_getLocalDbInfo_Ints:I = 0x19

.field static final TRANSACTION_getLocalDbInfo_String:I = 0x17

.field static final TRANSACTION_getLteOverlay:I = 0x15

.field static final TRANSACTION_getModemDb_strArray:I = 0x1b

.field static final TRANSACTION_getQcNvRead_int:I = 0x1

.field static final TRANSACTION_getQcNvRead_ints:I = 0x3

.field static final TRANSACTION_getSktImsiMin:I = 0x10

.field static final TRANSACTION_getSktIrm:I = 0x11

.field static final TRANSACTION_getSmscAddress:I = 0xc

.field static final TRANSACTION_getUsimSubscription:I = 0xf

.field static final TRANSACTION_isEmergencyCallMode:I = 0x14

.field static final TRANSACTION_loadEFTransparent:I = 0x8

.field static final TRANSACTION_setPhOperationMode:I = 0xa

.field static final TRANSACTION_setPreferredSystem:I = 0x5

.field static final TRANSACTION_setQcNvWrite_int:I = 0x2

.field static final TRANSACTION_setQcNvWrite_ints:I = 0x4

.field static final TRANSACTION_setSMSCfgSetGWDomain:I = 0x6

.field static final TRANSACTION_setSmscAddress:I = 0xd

.field static final TRANSACTION_setUsimSubscription:I = 0xe

.field static final TRANSACTION_set_cpmgr_cs_protection_control_func:I = 0x1c

.field static final TRANSACTION_set_cpmgr_cs_protection_temp_control_func:I = 0x1d

.field static final TRANSACTION_set_cpmgr_gnss_operation_mode:I = 0x20

.field static final TRANSACTION_set_cpmgr_gnss_preferred_time:I = 0x21

.field static final TRANSACTION_set_cpmgr_srvcc_status_func:I = 0x1f

.field static final TRANSACTION_set_cpmgr_vt_call_status_func:I = 0x1e

.field static final TRANSACTION_updateEFTransparent:I = 0x9

.field static final TRANSACTION_verifyPck:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/gsm/ISkyTelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/gsm/ISkyTelephony;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/android/internal/telephony/gsm/ISkyTelephony;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 373
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 46
    :sswitch_0
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->getQcNvRead_int(II)I

    move-result v6

    .line 57
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_2
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 69
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 70
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->setQcNvWrite_int(III)I

    move-result v6

    .line 71
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_3
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 81
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 82
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->getQcNvRead_ints(II)[I

    move-result-object v6

    .line 83
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 89
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":[I
    :sswitch_4
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 95
    .local v2, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 96
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->setQcNvWrite_ints(I[II)I

    move-result v6

    .line 97
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_5
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 111
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 113
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 114
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->setPreferredSystem(IIIII)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 120
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :sswitch_6
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->setSMSCfgSetGWDomain(I)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 129
    .end local v1    # "_arg0":I
    :sswitch_7
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->deleteAcqDb()V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 136
    :sswitch_8
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->loadEFTransparent(I)[B

    move-result-object v6

    .line 140
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 146
    .end local v1    # "_arg0":I
    .end local v6    # "_result":[B
    :sswitch_9
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 151
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->updateEFTransparent(I[B)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 157
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :sswitch_a
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 160
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->setPhOperationMode(I)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 166
    .end local v1    # "_arg0":I
    :sswitch_b
    const-string v8, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->verifyPck(Ljava/lang/String;I)Z

    move-result v6

    .line 172
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v6, :cond_0

    move v0, v7

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 178
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_c
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->getSmscAddress()Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->setSmscAddress(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 195
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v8, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v1, v7

    .line 198
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->setUsimSubscription(Z)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_1
    move v1, v0

    .line 197
    goto :goto_1

    .line 204
    :sswitch_f
    const-string v8, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->getUsimSubscription()Z

    move-result v6

    .line 206
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v6, :cond_2

    move v0, v7

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 212
    .end local v6    # "_result":Z
    :sswitch_10
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->getSktImsiMin()Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->getSktIrm()Ljava/lang/String;

    move-result-object v6

    .line 222
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string v8, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->getGcfMode()Z

    move-result v6

    .line 230
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v6, :cond_3

    move v0, v7

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 236
    .end local v6    # "_result":Z
    :sswitch_13
    const-string v8, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->checkEmergencyList()Z

    move-result v6

    .line 238
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v6, :cond_4

    move v0, v7

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 244
    .end local v6    # "_result":Z
    :sswitch_14
    const-string v8, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    move v1, v7

    .line 247
    .restart local v1    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->isEmergencyCallMode(Z)Z

    move-result v6

    .line 248
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v6, :cond_5

    move v0, v7

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_6
    move v1, v0

    .line 246
    goto :goto_2

    .line 254
    :sswitch_15
    const-string v8, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->getLteOverlay()Z

    move-result v6

    .line 256
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v6, :cond_7

    move v0, v7

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 262
    .end local v6    # "_result":Z
    :sswitch_16
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 273
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v6

    .line 274
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 283
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->getLocalDbInfo_Int(I)I

    move-result v6

    .line 284
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 290
    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_19
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 293
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->getLocalDbInfo_Ints(I)[I

    move-result-object v6

    .line 294
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 300
    .end local v1    # "_arg0":I
    .end local v6    # "_result":[I
    :sswitch_1a
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 303
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->getLocalDbInfo_Float(I)F

    move-result v6

    .line 304
    .local v6, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 310
    .end local v1    # "_arg0":I
    .end local v6    # "_result":F
    :sswitch_1b
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 313
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->getModemDb_strArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 314
    .local v6, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    .end local v1    # "_arg0":I
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string v8, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_8

    move v1, v7

    .line 323
    .local v1, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->set_cpmgr_cs_protection_control_func(Z)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_8
    move v1, v0

    .line 322
    goto :goto_3

    .line 329
    :sswitch_1d
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 332
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->set_cpmgr_cs_protection_temp_control_func(I)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 338
    .end local v1    # "_arg0":I
    :sswitch_1e
    const-string v8, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9

    move v1, v7

    .line 341
    .local v1, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->set_cpmgr_vt_call_status_func(Z)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_9
    move v1, v0

    .line 340
    goto :goto_4

    .line 347
    :sswitch_1f
    const-string v8, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a

    move v1, v7

    .line 350
    .restart local v1    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->set_cpmgr_srvcc_status_func(Z)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_a
    move v1, v0

    .line 349
    goto :goto_5

    .line 356
    :sswitch_20
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 359
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->set_cpmgr_gnss_operation_mode(I)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 365
    .end local v1    # "_arg0":I
    :sswitch_21
    const-string v0, "com.android.internal.telephony.gsm.ISkyTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 368
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->set_cpmgr_gnss_preferred_time(I)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
