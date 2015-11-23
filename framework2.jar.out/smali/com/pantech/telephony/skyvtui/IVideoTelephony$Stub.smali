.class public abstract Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;
.super Landroid/os/Binder;
.source "IVideoTelephony.java"

# interfaces
.implements Lcom/pantech/telephony/skyvtui/IVideoTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/telephony/skyvtui/IVideoTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pantech.telephony.skyvtui.IVideoTelephony"

.field static final TRANSACTION_MuteCall:I = 0x7

.field static final TRANSACTION_VTRegiRequire:I = 0x3

.field static final TRANSACTION_VTRegiState:I = 0x2

.field static final TRANSACTION_answerAndEndActive:I = 0x14

.field static final TRANSACTION_answerRingingCall:I = 0x5

.field static final TRANSACTION_cancelMissedVTCallsNotification:I = 0x12

.field static final TRANSACTION_endCall:I = 0x6

.field static final TRANSACTION_getCallState:I = 0x8

.field static final TRANSACTION_getNumber:I = 0x11

.field static final TRANSACTION_getVTGetClccResult:I = 0x13

.field static final TRANSACTION_isAlerting:I = 0xd

.field static final TRANSACTION_isDialing:I = 0xc

.field static final TRANSACTION_isIdle:I = 0x9

.field static final TRANSACTION_isOffhook:I = 0xa

.field static final TRANSACTION_isRinging:I = 0xb

.field static final TRANSACTION_isSwitchVideoCall:I = 0xe

.field static final TRANSACTION_isTypeWiFiConnected:I = 0x4

.field static final TRANSACTION_showCallScreen:I = 0xf

.field static final TRANSACTION_silenceRinger:I = 0x10

.field static final TRANSACTION_unregister:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/pantech/telephony/skyvtui/IVideoTelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/pantech/telephony/skyvtui/IVideoTelephony;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/pantech/telephony/skyvtui/IVideoTelephony;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v1, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->unregister()I

    move-result v0

    .line 49
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v0    # "_result":I
    :sswitch_2
    const-string v3, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->VTRegiState()Z

    move-result v0

    .line 57
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v0    # "_result":Z
    :sswitch_3
    const-string v3, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->VTRegiRequire()Z

    move-result v0

    .line 65
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v0    # "_result":Z
    :sswitch_4
    const-string v3, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->isTypeWiFiConnected()Z

    move-result v0

    .line 73
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v0    # "_result":Z
    :sswitch_5
    const-string v1, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->answerRingingCall()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    :sswitch_6
    const-string v3, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->endCall()Z

    move-result v0

    .line 88
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v0    # "_result":Z
    :sswitch_7
    const-string v1, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->MuteCall()V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 101
    :sswitch_8
    const-string v1, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->getCallState()I

    move-result v0

    .line 103
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 109
    .end local v0    # "_result":I
    :sswitch_9
    const-string v3, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->isIdle()Z

    move-result v0

    .line 111
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_result":Z
    :sswitch_a
    const-string v3, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->isOffhook()Z

    move-result v0

    .line 119
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 125
    .end local v0    # "_result":Z
    :sswitch_b
    const-string v3, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->isRinging()Z

    move-result v0

    .line 127
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v0    # "_result":Z
    :sswitch_c
    const-string v3, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->isDialing()Z

    move-result v0

    .line 135
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 141
    .end local v0    # "_result":Z
    :sswitch_d
    const-string v3, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->isAlerting()Z

    move-result v0

    .line 143
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v0, :cond_8

    move v1, v2

    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_result":Z
    :sswitch_e
    const-string v3, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->isSwitchVideoCall()Z

    move-result v0

    .line 151
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v0, :cond_9

    move v1, v2

    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    .end local v0    # "_result":Z
    :sswitch_f
    const-string v3, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->showCallScreen()Landroid/content/Intent;

    move-result-object v0

    .line 159
    .local v0, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v0, :cond_a

    .line 161
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {v0, p3, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 165
    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 171
    .end local v0    # "_result":Landroid/content/Intent;
    :sswitch_10
    const-string v1, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->silenceRinger()V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 178
    :sswitch_11
    const-string v1, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string v1, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->cancelMissedVTCallsNotification()V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 193
    :sswitch_13
    const-string v1, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->getVTGetClccResult()Ljava/lang/String;

    move-result-object v0

    .line 195
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string v1, "com.pantech.telephony.skyvtui.IVideoTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/pantech/telephony/skyvtui/IVideoTelephony$Stub;->answerAndEndActive()V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
