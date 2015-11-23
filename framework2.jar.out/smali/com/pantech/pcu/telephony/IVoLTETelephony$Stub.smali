.class public abstract Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;
.super Landroid/os/Binder;
.source "IVoLTETelephony.java"

# interfaces
.implements Lcom/pantech/pcu/telephony/IVoLTETelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/pcu/telephony/IVoLTETelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pantech.pcu.telephony.IVoLTETelephony"

.field static final TRANSACTION_activeAOTCallService:I = 0xd

.field static final TRANSACTION_answerAndEndActive:I = 0x2

.field static final TRANSACTION_answerRingingCall:I = 0x1

.field static final TRANSACTION_endCall:I = 0x4

.field static final TRANSACTION_endLastCall:I = 0x5

.field static final TRANSACTION_getActiveCallState:I = 0x16

.field static final TRANSACTION_getVoLTECallState:I = 0x17

.field static final TRANSACTION_getVoLTECallerInfo:I = 0x14

.field static final TRANSACTION_getVoLTEGetClccResult:I = 0xe

.field static final TRANSACTION_hangupRingingOrHoldingCall:I = 0x3

.field static final TRANSACTION_isAlerting:I = 0x13

.field static final TRANSACTION_isAutoAnswerOn:I = 0xf

.field static final TRANSACTION_isDialing:I = 0x9

.field static final TRANSACTION_isHold:I = 0xa

.field static final TRANSACTION_isIdle:I = 0x6

.field static final TRANSACTION_isInCallSession:I = 0x11

.field static final TRANSACTION_isInHoldSession:I = 0x12

.field static final TRANSACTION_isMute:I = 0x19

.field static final TRANSACTION_isOffhook:I = 0x7

.field static final TRANSACTION_isRinging:I = 0x8

.field static final TRANSACTION_isVoLTECall:I = 0x15

.field static final TRANSACTION_sendDtmf:I = 0x18

.field static final TRANSACTION_setMute:I = 0x1a

.field static final TRANSACTION_showCallScreen:I = 0xb

.field static final TRANSACTION_silenceRinger:I = 0xc

.field static final TRANSACTION_stopAutoAnswer:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p0, p0, v0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/pantech/pcu/telephony/IVoLTETelephony;
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
    const-string v1, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/pantech/pcu/telephony/IVoLTETelephony;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/pantech/pcu/telephony/IVoLTETelephony;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->answerRingingCall(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string v2, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->answerAndEndActive()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v2, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->hangupRingingOrHoldingCall()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    :sswitch_4
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->endCall()Z

    move-result v1

    .line 72
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v1    # "_result":Z
    :sswitch_5
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->endLastCall()Z

    move-result v1

    .line 80
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v1    # "_result":Z
    :sswitch_6
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->isIdle()Z

    move-result v1

    .line 88
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v1    # "_result":Z
    :sswitch_7
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->isOffhook()Z

    move-result v1

    .line 96
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v1    # "_result":Z
    :sswitch_8
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->isRinging()Z

    move-result v1

    .line 104
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 110
    .end local v1    # "_result":Z
    :sswitch_9
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->isDialing()Z

    move-result v1

    .line 112
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v1    # "_result":Z
    :sswitch_a
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->isHold()Z

    move-result v1

    .line 120
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 126
    .end local v1    # "_result":Z
    :sswitch_b
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->showCallScreen()Z

    move-result v1

    .line 128
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v1    # "_result":Z
    :sswitch_c
    const-string v2, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->silenceRinger()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 141
    :sswitch_d
    const-string v2, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->activeAOTCallService()V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 148
    :sswitch_e
    const-string v2, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->getVoLTEGetClccResult(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->isAutoAnswerOn()Z

    move-result v1

    .line 160
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 166
    .end local v1    # "_result":Z
    :sswitch_10
    const-string v2, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->stopAutoAnswer(I)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 175
    .end local v0    # "_arg0":I
    :sswitch_11
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->isInCallSession()Z

    move-result v1

    .line 177
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v1    # "_result":Z
    :sswitch_12
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->isInHoldSession()Z

    move-result v1

    .line 185
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v1, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 191
    .end local v1    # "_result":Z
    :sswitch_13
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->isAlerting()Z

    move-result v1

    .line 193
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v1, :cond_b

    move v2, v3

    :cond_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 199
    .end local v1    # "_result":Z
    :sswitch_14
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->getVoLTECallerInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 201
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v1, :cond_c

    .line 203
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    invoke-virtual {v1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 207
    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 213
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_15
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->isVoLTECall()Z

    move-result v1

    .line 215
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v1, :cond_d

    move v2, v3

    :cond_d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 221
    .end local v1    # "_result":Z
    :sswitch_16
    const-string v2, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->getActiveCallState()I

    move-result v1

    .line 223
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v1    # "_result":I
    :sswitch_17
    const-string v2, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->getVoLTECallState(I)I

    move-result v1

    .line 233
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 239
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_18
    const-string v2, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v0, v2

    .line 242
    .local v0, "_arg0":C
    invoke-virtual {p0, v0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->sendDtmf(C)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 248
    .end local v0    # "_arg0":C
    :sswitch_19
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->isMute()Z

    move-result v1

    .line 250
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v1, :cond_e

    move v2, v3

    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 256
    .end local v1    # "_result":Z
    :sswitch_1a
    const-string v4, "com.pantech.pcu.telephony.IVoLTETelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    move v0, v3

    .line 259
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/pantech/pcu/telephony/IVoLTETelephony$Stub;->setMute(Z)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_f
    move v0, v2

    .line 258
    goto :goto_1

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
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
