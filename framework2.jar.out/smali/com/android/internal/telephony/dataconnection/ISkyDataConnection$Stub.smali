.class public abstract Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;
.super Landroid/os/Binder;
.source "ISkyDataConnection.java"

# interfaces
.implements Lcom/android/internal/telephony/dataconnection/ISkyDataConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/ISkyDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.dataconnection.ISkyDataConnection"

.field static final TRANSACTION_checkPSRejectState:I = 0x7

.field static final TRANSACTION_getDataConnectionMode:I = 0x4

.field static final TRANSACTION_getDataConnectivityPopup:I = 0x6

.field static final TRANSACTION_getDataRoamingEnabled:I = 0x9

.field static final TRANSACTION_getLteRoamingMode:I = 0xa

.field static final TRANSACTION_getPolicyDataEnabled:I = 0xf

.field static final TRANSACTION_getSKTSimCheck:I = 0x10

.field static final TRANSACTION_isNetworkRoaming:I = 0x8

.field static final TRANSACTION_resetDataOnRoaming:I = 0xd

.field static final TRANSACTION_resumeDataCall:I = 0x2

.field static final TRANSACTION_setDataConnectionMode:I = 0x3

.field static final TRANSACTION_setDataConnectivityPopup:I = 0x5

.field static final TRANSACTION_setDataOnRoamingEnabledUI:I = 0xc

.field static final TRANSACTION_setDataRoamingEnable:I = 0xe

.field static final TRANSACTION_setLteRoamingMode:I = 0xb

.field static final TRANSACTION_suspendDataCall:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/dataconnection/ISkyDataConnection;
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
    const-string v1, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v2, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->suspendDataCall()Z

    move-result v1

    .line 53
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 59
    .end local v1    # "_result":Z
    :sswitch_2
    const-string v4, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->resumeDataCall()Z

    move-result v1

    .line 61
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v1    # "_result":Z
    :sswitch_3
    const-string v4, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 70
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->setDataConnectionMode(Z)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_2
    move v0, v2

    .line 69
    goto :goto_1

    .line 76
    :sswitch_4
    const-string v4, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->getDataConnectionMode()Z

    move-result v1

    .line 78
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v1    # "_result":Z
    :sswitch_5
    const-string v4, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    .line 87
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->setDataConnectivityPopup(Z)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_4
    move v0, v2

    .line 86
    goto :goto_2

    .line 93
    :sswitch_6
    const-string v4, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->getDataConnectivityPopup()Z

    move-result v1

    .line 95
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v1    # "_result":Z
    :sswitch_7
    const-string v2, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->checkPSRejectState()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 108
    :sswitch_8
    const-string v4, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->isNetworkRoaming()Z

    move-result v1

    .line 110
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v1    # "_result":Z
    :sswitch_9
    const-string v4, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->getDataRoamingEnabled()Z

    move-result v1

    .line 118
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 124
    .end local v1    # "_result":Z
    :sswitch_a
    const-string v4, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->getLteRoamingMode()Z

    move-result v1

    .line 126
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 132
    .end local v1    # "_result":Z
    :sswitch_b
    const-string v4, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    move v0, v3

    .line 135
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->setLteRoamingMode(Z)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_9
    move v0, v2

    .line 134
    goto :goto_3

    .line 141
    :sswitch_c
    const-string v4, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    move v0, v3

    .line 144
    .restart local v0    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->setDataOnRoamingEnabledUI(Z)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_a
    move v0, v2

    .line 143
    goto :goto_4

    .line 150
    :sswitch_d
    const-string v2, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->resetDataOnRoaming()V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 157
    :sswitch_e
    const-string v4, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    move v0, v3

    .line 160
    .restart local v0    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->setDataRoamingEnable(Z)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_b
    move v0, v2

    .line 159
    goto :goto_5

    .line 166
    :sswitch_f
    const-string v4, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->getPolicyDataEnabled()Z

    move-result v1

    .line 168
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v1, :cond_c

    move v2, v3

    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v1    # "_result":Z
    :sswitch_10
    const-string v4, "com.android.internal.telephony.dataconnection.ISkyDataConnection"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;->getSKTSimCheck()Z

    move-result v1

    .line 176
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v1, :cond_d

    move v2, v3

    :cond_d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
