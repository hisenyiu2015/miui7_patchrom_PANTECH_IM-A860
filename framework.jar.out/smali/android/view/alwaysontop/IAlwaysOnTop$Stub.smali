.class public abstract Landroid/view/alwaysontop/IAlwaysOnTop$Stub;
.super Landroid/os/Binder;
.source "IAlwaysOnTop.java"

# interfaces
.implements Landroid/view/alwaysontop/IAlwaysOnTop;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/alwaysontop/IAlwaysOnTop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/alwaysontop/IAlwaysOnTop$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.alwaysontop.IAlwaysOnTop"

.field static final TRANSACTION_getAlwaysOnTopList:I = 0x1

.field static final TRANSACTION_getEnabledAlwaysOnTopList:I = 0x2

.field static final TRANSACTION_getMediaApp:I = 0xd

.field static final TRANSACTION_getRearTouchLongPress:I = 0x1a

.field static final TRANSACTION_hideAlwaysOnTop:I = 0x7

.field static final TRANSACTION_isAlwaysOnTopRunning:I = 0x9

.field static final TRANSACTION_isAlwaysOnTopRunningID:I = 0x8

.field static final TRANSACTION_isCameraRunning:I = 0x12

.field static final TRANSACTION_isMediaRunning:I = 0xe

.field static final TRANSACTION_moveAOTFrame:I = 0x14

.field static final TRANSACTION_registerGyroSensorListener:I = 0x17

.field static final TRANSACTION_restoreState:I = 0x11

.field static final TRANSACTION_saveState:I = 0x10

.field static final TRANSACTION_sendCallEvent:I = 0x16

.field static final TRANSACTION_sendMediaStateEvent:I = 0xb

.field static final TRANSACTION_setMediaApp:I = 0xc

.field static final TRANSACTION_setRearTouchLongPress:I = 0x19

.field static final TRANSACTION_setShowOnList:I = 0x13

.field static final TRANSACTION_showAlwaysOnTopPicker:I = 0xa

.field static final TRANSACTION_skipAOTWindow:I = 0xf

.field static final TRANSACTION_startAlwaysOnTop:I = 0x3

.field static final TRANSACTION_startAlwaysOnTopEx:I = 0x4

.field static final TRANSACTION_stopAllAlwaysOnTop:I = 0x6

.field static final TRANSACTION_stopAlwaysOnTop:I = 0x5

.field static final TRANSACTION_unRegisterGyroSensorListener:I = 0x18

.field static final TRANSACTION_visibleAOTFrame:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p0, p0, v0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/alwaysontop/IAlwaysOnTop;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const-string v1, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/alwaysontop/IAlwaysOnTop;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Landroid/view/alwaysontop/IAlwaysOnTop;

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Landroid/view/alwaysontop/IAlwaysOnTop$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 52
    :sswitch_0
    const-string v4, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :sswitch_1
    const-string v4, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->getAlwaysOnTopList()Ljava/util/List;

    move-result-object v3

    .line 59
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 65
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    :sswitch_2
    const-string v4, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->getEnabledAlwaysOnTopList()Ljava/util/List;

    move-result-object v3

    .line 67
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 73
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    :sswitch_3
    const-string v6, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->startAlwaysOnTop(Ljava/lang/String;)Z

    move-result v2

    .line 77
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_4
    const-string v6, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 88
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 93
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->startAlwaysOnTopEx(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 94
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_5
    const-string v6, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->stopAlwaysOnTop(Ljava/lang/String;)Z

    move-result v2

    .line 104
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v2, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 110
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_6
    const-string v6, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->stopAllAlwaysOnTop()Z

    move-result v2

    .line 112
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v2, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v2    # "_result":Z
    :sswitch_7
    const-string v6, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->hideAlwaysOnTop(Ljava/lang/String;)Z

    move-result v2

    .line 122
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v2, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_8
    const-string v6, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->isAlwaysOnTopRunningID(Ljava/lang/String;)Z

    move-result v2

    .line 132
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v2, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_9
    const-string v6, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->isAlwaysOnTopRunning()Z

    move-result v2

    .line 140
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v2, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 146
    .end local v2    # "_result":Z
    :sswitch_a
    const-string v4, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->showAlwaysOnTopPicker()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 153
    :sswitch_b
    const-string v4, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->sendMediaStateEvent(II)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 164
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_c
    const-string v6, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    move v0, v5

    .line 167
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->setMediaApp(Z)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_8
    move v0, v4

    .line 166
    goto :goto_2

    .line 173
    :sswitch_d
    const-string v6, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->getMediaApp()Z

    move-result v2

    .line 175
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v2, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v2    # "_result":Z
    :sswitch_e
    const-string v6, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 184
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->isMediaRunning(I)Z

    move-result v2

    .line 185
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v2, :cond_a

    move v4, v5

    :cond_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 191
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_f
    const-string v4, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->skipAOTWindow()V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 198
    :sswitch_10
    const-string v4, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->saveState(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 207
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string v4, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->restoreState(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 216
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string v4, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->isCameraRunning()I

    move-result v2

    .line 218
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 224
    .end local v2    # "_result":I
    :sswitch_13
    const-string v6, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    move v1, v5

    .line 229
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->setShowOnList(Ljava/lang/String;Z)Z

    move-result v2

    .line 230
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v2, :cond_b

    move v4, v5

    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :cond_c
    move v1, v4

    .line 228
    goto :goto_3

    .line 236
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string v4, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->moveAOTFrame()V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 243
    :sswitch_15
    const-string v6, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    move v0, v5

    .line 246
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->visibleAOTFrame(Z)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_d
    move v0, v4

    .line 245
    goto :goto_4

    .line 252
    :sswitch_16
    const-string v4, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 255
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->sendCallEvent(I)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 261
    .end local v0    # "_arg0":I
    :sswitch_17
    const-string v6, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->registerGyroSensorListener()Z

    move-result v2

    .line 263
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v2, :cond_e

    move v4, v5

    :cond_e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 269
    .end local v2    # "_result":Z
    :sswitch_18
    const-string v4, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->unRegisterGyroSensorListener()V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 276
    :sswitch_19
    const-string v6, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    move v0, v5

    .line 279
    .local v0, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->setRearTouchLongPress(Z)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_f
    move v0, v4

    .line 278
    goto :goto_5

    .line 285
    :sswitch_1a
    const-string v6, "android.view.alwaysontop.IAlwaysOnTop"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->getRearTouchLongPress()Z

    move-result v2

    .line 287
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v2, :cond_10

    move v4, v5

    :cond_10
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 48
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
