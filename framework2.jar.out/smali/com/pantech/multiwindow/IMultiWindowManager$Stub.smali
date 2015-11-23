.class public abstract Lcom/pantech/multiwindow/IMultiWindowManager$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowManager.java"

# interfaces
.implements Lcom/pantech/multiwindow/IMultiWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multiwindow/IMultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/multiwindow/IMultiWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pantech.multiwindow.IMultiWindowManager"

.field static final TRANSACTION_adjustZoneFrames:I = 0x6

.field static final TRANSACTION_framesInitialized:I = 0xd

.field static final TRANSACTION_getFocusZone:I = 0x10

.field static final TRANSACTION_getZone:I = 0x5

.field static final TRANSACTION_getZoneFrame:I = 0x7

.field static final TRANSACTION_isAvailable:I = 0x4

.field static final TRANSACTION_isCurrentWindowSupportMulti:I = 0x11

.field static final TRANSACTION_isDualWindowEnable:I = 0xe

.field static final TRANSACTION_killActivity:I = 0xb

.field static final TRANSACTION_killActivityAll:I = 0xc

.field static final TRANSACTION_removeMultiWindowList:I = 0xf

.field static final TRANSACTION_setDualMode:I = 0x2

.field static final TRANSACTION_setEnabled:I = 0x1

.field static final TRANSACTION_setSeparatorBarPos:I = 0x9

.field static final TRANSACTION_setSupportAppList:I = 0x3

.field static final TRANSACTION_setZoneFrame:I = 0x8

.field static final TRANSACTION_swapZone:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p0, p0, v0}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/pantech/multiwindow/IMultiWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/pantech/multiwindow/IMultiWindowManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/pantech/multiwindow/IMultiWindowManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/pantech/multiwindow/IMultiWindowManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v0, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v8, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v1, v7

    .line 51
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->setEnabled(Z)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg0":Z
    :cond_0
    move v1, v0

    .line 50
    goto :goto_1

    .line 57
    :sswitch_2
    const-string v8, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v1, v7

    .line 60
    .restart local v1    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->setDualMode(Z)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg0":Z
    :cond_1
    move v1, v0

    .line 59
    goto :goto_2

    .line 66
    :sswitch_3
    const-string v0, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->setSupportAppList([Ljava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v1    # "_arg0":[Ljava/lang/String;
    :sswitch_4
    const-string v8, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->isAvailable(Ljava/lang/String;)Z

    move-result v6

    .line 79
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v6, :cond_2

    move v0, v7

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_5
    const-string v0, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 88
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->getZone(Landroid/os/IBinder;)I

    move-result v6

    .line 89
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_result":I
    :sswitch_6
    const-string v0, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 103
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 105
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 106
    invoke-virtual/range {v0 .. v5}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->adjustZoneFrames(IIIII)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 112
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :sswitch_7
    const-string v8, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 116
    .restart local v1    # "_arg0":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 117
    .local v2, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p0, v1, v2}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->getZoneFrame(ILandroid/graphics/Rect;)Z

    move-result v6

    .line 118
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v6, :cond_3

    move v8, v7

    :goto_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    if-eqz v2, :cond_4

    .line 121
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v2, p3, v7}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_3
    move v8, v0

    .line 119
    goto :goto_3

    .line 125
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v6    # "_result":Z
    :sswitch_8
    const-string v8, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    .line 136
    sget-object v8, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 141
    .restart local v2    # "_arg1":Landroid/graphics/Rect;
    :goto_4
    invoke-virtual {p0, v1, v2}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->setZoneFrame(ILandroid/graphics/Rect;)Z

    move-result v6

    .line 142
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v6, :cond_5

    move v0, v7

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v6    # "_result":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/graphics/Rect;
    goto :goto_4

    .line 148
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    :sswitch_9
    const-string v8, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->setSeparatorBarPos(II)Z

    move-result v6

    .line 154
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v6, :cond_7

    move v0, v7

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_a
    const-string v8, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->swapZone()Z

    move-result v6

    .line 162
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v6, :cond_8

    move v0, v7

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 168
    .end local v6    # "_result":Z
    :sswitch_b
    const-string v8, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->killActivity(I)Z

    move-result v6

    .line 172
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v6, :cond_9

    move v0, v7

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 178
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_c
    const-string v8, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->killActivityAll()Z

    move-result v6

    .line 180
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v6, :cond_a

    move v0, v7

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 186
    .end local v6    # "_result":Z
    :sswitch_d
    const-string v8, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    move v1, v7

    .line 189
    .local v1, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v1}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->framesInitialized(Z)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_b
    move v1, v0

    .line 188
    goto :goto_5

    .line 195
    :sswitch_e
    const-string v8, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->isDualWindowEnable()Z

    move-result v6

    .line 197
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v6, :cond_c

    move v0, v7

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    .end local v6    # "_result":Z
    :sswitch_f
    const-string v0, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->removeMultiWindowList()V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 210
    :sswitch_10
    const-string v0, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->getFocusZone()I

    move-result v6

    .line 212
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 218
    .end local v6    # "_result":I
    :sswitch_11
    const-string v8, "com.pantech.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->isCurrentWindowSupportMulti()Z

    move-result v6

    .line 220
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v6, :cond_d

    move v0, v7

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
