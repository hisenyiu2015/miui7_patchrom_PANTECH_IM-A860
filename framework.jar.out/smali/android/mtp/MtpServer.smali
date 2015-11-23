.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;Z)V
    .locals 0
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "usePtp"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;Z)V

    .line 33
    return-void
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_cleanup()V
.end method

.method private final native native_end_scan_skip_object()V
.end method

.method private final native native_end_transfer_data()V
.end method

.method private final native native_get_request_count()I
.end method

.method private final native native_get_scan_list_size()I
.end method

.method private final native native_get_skip_object_handleh(I)I
.end method

.method private final native native_get_skip_object_path(I)Ljava/lang/String;
.end method

.method private final native native_get_skip_request()Z
.end method

.method private final native native_get_transfer_data()Z
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_run()V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;Z)V
.end method

.method private final native native_start_scan_skip_object()I
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 0
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    .line 56
    return-void
.end method

.method public endScanSkipObject()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_end_scan_skip_object()V

    .line 70
    return-void
.end method

.method public endTransferData()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_end_transfer_data()V

    .line 86
    return-void
.end method

.method public getRequestCount()I
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_get_request_count()I

    move-result v0

    return v0
.end method

.method public getScanListSize()I
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_get_scan_list_size()I

    move-result v0

    return v0
.end method

.method public getSkipObjectHandle(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_get_skip_object_handleh(I)I

    move-result v0

    return v0
.end method

.method public getSkipObjectPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_get_skip_object_path(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSkipRequest()Z
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_get_skip_request()Z

    move-result v0

    return v0
.end method

.method public getTransferData()Z
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_get_transfer_data()Z

    move-result v0

    return v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 1
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    .line 60
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    .line 43
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    .line 44
    return-void
.end method

.method public sendObjectAdded(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    .line 48
    return-void
.end method

.method public sendObjectRemoved(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    .line 52
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 37
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    return-void
.end method

.method public startScanSkipObject()I
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_start_scan_skip_object()I

    move-result v0

    return v0
.end method
