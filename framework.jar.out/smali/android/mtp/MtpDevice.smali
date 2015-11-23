.class public final Landroid/mtp/MtpDevice;
.super Ljava/lang/Object;
.source "MtpDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDevice$EventInterruptThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpDevice"


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field mEventThread:Landroid/mtp/MtpDevice$EventInterruptThread;

.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 55
    return-void
.end method

.method private native native_close()V
.end method

.method private native native_delete_object(I)Z
.end method

.method private native native_file_size_progress()J
.end method

.method private native native_get_device_info()Landroid/mtp/MtpDeviceInfo;
.end method

.method private native native_get_event()Z
.end method

.method private native native_get_object(II)[B
.end method

.method private native native_get_object_handles(III)[I
.end method

.method private native native_get_object_info(I)Landroid/mtp/MtpObjectInfo;
.end method

.method private native native_get_object_prop_desc(II)Landroid/mtp/MtpProperty;
.end method

.method private native native_get_object_props_supported(I)[S
.end method

.method private native native_get_parent(I)J
.end method

.method private native native_get_storage_id(I)J
.end method

.method private native native_get_storage_ids()[I
.end method

.method private native native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;
.end method

.method private native native_get_thumbnail(I)[B
.end method

.method private native native_import_file(ILjava/lang/String;)Z
.end method

.method private native native_open(Ljava/lang/String;I)Z
.end method

.method private native native_partial_import_file(ILjava/lang/String;I)Z
.end method

.method private native native_send_object(IJI)Z
.end method

.method private native native_send_object_info(IIJILjava/lang/String;)I
.end method

.method private native native_send_object_prop_list(IIIJLandroid/mtp/MtpPropertyList;)I
.end method

.method private native native_set_object_prop_value(IILjava/lang/String;)Z
.end method

.method private native native_stop_transfer()V
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_close()V

    .line 88
    return-void
.end method

.method public deleteObject(I)Z
    .locals 1
    .param p1, "objectHandle"    # I

    .prologue
    .line 237
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_delete_object(I)Z

    move-result v0

    return v0
.end method

.method public eventInterruptCatch(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 306
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_event()Z

    move-result v0

    .line 308
    .local v0, "flag":Z
    return v0
.end method

.method public fileSizeProgress()J
    .locals 2

    .prologue
    .line 290
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_file_size_progress()J

    move-result-wide v0

    return-wide v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_close()V

    .line 94
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mEventThread:Landroid/mtp/MtpDevice$EventInterruptThread;

    invoke-virtual {v0}, Landroid/mtp/MtpDevice$EventInterruptThread;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 98
    return-void

    .line 96
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    return v0
.end method

.method public getDeviceInfo()Landroid/mtp/MtpDeviceInfo;
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_device_info()Landroid/mtp/MtpDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject(II)[B
    .locals 1
    .param p1, "objectHandle"    # I
    .param p2, "objectSize"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_get_object(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getObjectHandles(III)[I
    .locals 1
    .param p1, "storageId"    # I
    .param p2, "format"    # I
    .param p3, "objectHandle"    # I

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDevice;->native_get_object_handles(III)[I

    move-result-object v0

    return-object v0
.end method

.method public getObjectInfo(I)Landroid/mtp/MtpObjectInfo;
    .locals 1
    .param p1, "objectHandle"    # I

    .prologue
    .line 205
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_object_info(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v0

    return-object v0
.end method

.method public getObjectPropDesc(II)Landroid/mtp/MtpProperty;
    .locals 1
    .param p1, "propCode"    # I
    .param p2, "format"    # I

    .prologue
    .line 299
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_get_object_prop_desc(II)Landroid/mtp/MtpProperty;

    move-result-object v0

    return-object v0
.end method

.method public getObjectPropsSupported(I)[S
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 295
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_object_props_supported(I)[S

    move-result-object v0

    return-object v0
.end method

.method public getParent(I)J
    .locals 2
    .param p1, "objectHandle"    # I

    .prologue
    .line 247
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_parent(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStorageId(I)J
    .locals 2
    .param p1, "objectHandle"    # I

    .prologue
    .line 257
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_id(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStorageIds()[I
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_storage_ids()[I

    move-result-object v0

    return-object v0
.end method

.method public getStorageInfo(I)Landroid/mtp/MtpStorageInfo;
    .locals 1
    .param p1, "storageId"    # I

    .prologue
    .line 195
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail(I)[B
    .locals 1
    .param p1, "objectHandle"    # I

    .prologue
    .line 185
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_thumbnail(I)[B

    move-result-object v0

    return-object v0
.end method

.method public importFile(ILjava/lang/String;)Z
    .locals 1
    .param p1, "objectHandle"    # I
    .param p2, "destPath"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_import_file(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 3
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;

    .prologue
    .line 67
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/mtp/MtpDevice;->native_open(Ljava/lang/String;I)Z

    move-result v0

    .line 68
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 72
    :cond_0
    new-instance v1, Landroid/mtp/MtpDevice$EventInterruptThread;

    iget-object v2, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v1, p0, v2}, Landroid/mtp/MtpDevice$EventInterruptThread;-><init>(Landroid/mtp/MtpDevice;Landroid/hardware/usb/UsbDevice;)V

    iput-object v1, p0, Landroid/mtp/MtpDevice;->mEventThread:Landroid/mtp/MtpDevice$EventInterruptThread;

    .line 73
    const-string v1, "MtpDevice"

    const-string v2, "Event Thread Start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mEventThread:Landroid/mtp/MtpDevice$EventInterruptThread;

    invoke-virtual {v1}, Landroid/mtp/MtpDevice$EventInterruptThread;->start()V

    .line 78
    return v0
.end method

.method public partial_importFile(ILjava/lang/String;I)Z
    .locals 1
    .param p1, "objectHandle"    # I
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    .line 277
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDevice;->native_partial_import_file(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public sendObject(IJI)Z
    .locals 1
    .param p1, "handle"    # I
    .param p2, "fileSize"    # J
    .param p4, "fd"    # I

    .prologue
    .line 219
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/mtp/MtpDevice;->native_send_object(IJI)Z

    move-result v0

    return v0
.end method

.method public sendObjectInfo(IIJILjava/lang/String;)I
    .locals 1
    .param p1, "storageId"    # I
    .param p2, "format"    # I
    .param p3, "fileSize"    # J
    .param p5, "parent"    # I
    .param p6, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-direct/range {p0 .. p6}, Landroid/mtp/MtpDevice;->native_send_object_info(IIJILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendObjectPropList(IIIJLandroid/mtp/MtpPropertyList;)I
    .locals 1
    .param p1, "storageId"    # I
    .param p2, "parent"    # I
    .param p3, "format"    # I
    .param p4, "size"    # J
    .param p6, "list"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 214
    invoke-direct/range {p0 .. p6}, Landroid/mtp/MtpDevice;->native_send_object_prop_list(IIIJLandroid/mtp/MtpPropertyList;)I

    move-result v0

    return v0
.end method

.method public sendObjectPropValue(IILjava/lang/String;)Z
    .locals 1
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDevice;->native_set_object_prop_value(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stopImport()V
    .locals 0

    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/mtp/MtpDevice;->stopTransfer()V

    .line 282
    return-void
.end method

.method public stopTransfer()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_stop_transfer()V

    .line 286
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
