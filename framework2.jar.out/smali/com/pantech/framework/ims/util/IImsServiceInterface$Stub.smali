.class public abstract Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;
.super Landroid/os/Binder;
.source "IImsServiceInterface.java"

# interfaces
.implements Lcom/pantech/framework/ims/util/IImsServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/framework/ims/util/IImsServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pantech.framework.ims.util.IImsServiceInterface"

.field static final TRANSACTION_IMSCurrentRegiState:I = 0x3

.field static final TRANSACTION_IMSRegiState:I = 0x2

.field static final TRANSACTION_SIPRegiState:I = 0xb

.field static final TRANSACTION_getAPCSConfig:I = 0x7

.field static final TRANSACTION_getDOWNCallInfo:I = 0xa

.field static final TRANSACTION_getErrorCode:I = 0x8

.field static final TRANSACTION_getRegiEvTime:I = 0x6

.field static final TRANSACTION_getUPCallInfo:I = 0x9

.field static final TRANSACTION_getVoLTEStatus:I = 0x5

.field static final TRANSACTION_isIdle:I = 0x4

.field static final TRANSACTION_unregister:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.pantech.framework.ims.util.IImsServiceInterface"

    invoke-virtual {p0, p0, v0}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/pantech/framework/ims/util/IImsServiceInterface;
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
    const-string v1, "com.pantech.framework.ims.util.IImsServiceInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/pantech/framework/ims/util/IImsServiceInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/pantech/framework/ims/util/IImsServiceInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v1, "com.pantech.framework.ims.util.IImsServiceInterface"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.pantech.framework.ims.util.IImsServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->unregister()I

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
    const-string v3, "com.pantech.framework.ims.util.IImsServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->IMSRegiState()Z

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
    const-string v3, "com.pantech.framework.ims.util.IImsServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->IMSCurrentRegiState()Z

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
    const-string v3, "com.pantech.framework.ims.util.IImsServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->isIdle()Z

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
    const-string v1, "com.pantech.framework.ims.util.IImsServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->getVoLTEStatus()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v1, "com.pantech.framework.ims.util.IImsServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->getRegiEvTime()Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v1, "com.pantech.framework.ims.util.IImsServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->getAPCSConfig()Ljava/lang/String;

    move-result-object v0

    .line 97
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string v1, "com.pantech.framework.ims.util.IImsServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string v1, "com.pantech.framework.ims.util.IImsServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->getUPCallInfo()Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v1, "com.pantech.framework.ims.util.IImsServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->getDOWNCallInfo()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v1, "com.pantech.framework.ims.util.IImsServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->SIPRegiState()Ljava/lang/String;

    move-result-object v0

    .line 129
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
