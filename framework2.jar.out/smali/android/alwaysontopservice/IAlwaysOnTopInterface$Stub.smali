.class public abstract Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub;
.super Landroid/os/Binder;
.source "IAlwaysOnTopInterface.java"

# interfaces
.implements Landroid/alwaysontopservice/IAlwaysOnTopInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/alwaysontopservice/IAlwaysOnTopInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.alwaysontopservice.IAlwaysOnTopInterface"

.field static final TRANSACTION_attachToken:I = 0x3

.field static final TRANSACTION_hideAlwaysOnTop:I = 0x2

.field static final TRANSACTION_moveAOTFrame:I = 0x8

.field static final TRANSACTION_restoreState:I = 0x6

.field static final TRANSACTION_saveState:I = 0x5

.field static final TRANSACTION_sendMediaStateEvent:I = 0x4

.field static final TRANSACTION_showAlwaysOnTop:I = 0x1

.field static final TRANSACTION_skipAOTWindow:I = 0x7

.field static final TRANSACTION_visibleAOTFrame:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "android.alwaysontopservice.IAlwaysOnTopInterface"

    invoke-virtual {p0, p0, v0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/alwaysontopservice/IAlwaysOnTopInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string v1, "android.alwaysontopservice.IAlwaysOnTopInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
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
    const/4 v2, 0x1

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 51
    :sswitch_0
    const-string v3, "android.alwaysontopservice.IAlwaysOnTopInterface"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v3, "android.alwaysontopservice.IAlwaysOnTopInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub;->showAlwaysOnTop()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_2
    const-string v3, "android.alwaysontopservice.IAlwaysOnTopInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub;->hideAlwaysOnTop()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    :sswitch_3
    const-string v3, "android.alwaysontopservice.IAlwaysOnTopInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 73
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub;->attachToken(Landroid/os/IBinder;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_4
    const-string v3, "android.alwaysontopservice.IAlwaysOnTopInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub;->sendMediaStateEvent(II)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_5
    const-string v3, "android.alwaysontopservice.IAlwaysOnTopInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub;->saveState()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    :sswitch_6
    const-string v3, "android.alwaysontopservice.IAlwaysOnTopInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub;->restoreState()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    :sswitch_7
    const-string v3, "android.alwaysontopservice.IAlwaysOnTopInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub;->skipAOTWindow()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 111
    :sswitch_8
    const-string v3, "android.alwaysontopservice.IAlwaysOnTopInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub;->moveAOTFrame()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 118
    :sswitch_9
    const-string v3, "android.alwaysontopservice.IAlwaysOnTopInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 121
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub;->visibleAOTFrame(Z)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 120
    .end local v0    # "_arg0":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 47
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
