.class public Landroid/mtp/MtpDevice$EventInterruptThread;
.super Ljava/lang/Object;
.source "MtpDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventInterruptThread"
.end annotation


# static fields
.field private static final STATE_INIT:I = 0x1

.field private static final STATE_RUN:I = 0x2

.field private static final STATE_STOP:I = 0x3


# instance fields
.field mUsbDevice:Landroid/hardware/usb/UsbDevice;

.field stateCode:I

.field final synthetic this$0:Landroid/mtp/MtpDevice;

.field thisThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDevice;)V
    .locals 1

    .prologue
    .line 323
    iput-object p1, p0, Landroid/mtp/MtpDevice$EventInterruptThread;->this$0:Landroid/mtp/MtpDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x1

    iput v0, p0, Landroid/mtp/MtpDevice$EventInterruptThread;->stateCode:I

    .line 323
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDevice;Landroid/hardware/usb/UsbDevice;)V
    .locals 1
    .param p2, "usbDevice"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 324
    iput-object p1, p0, Landroid/mtp/MtpDevice$EventInterruptThread;->this$0:Landroid/mtp/MtpDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x1

    iput v0, p0, Landroid/mtp/MtpDevice$EventInterruptThread;->stateCode:I

    .line 324
    iput-object p2, p0, Landroid/mtp/MtpDevice$EventInterruptThread;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 335
    const/4 v0, 0x1

    .line 337
    .local v0, "count":I
    :cond_0
    :goto_0
    iget v2, p0, Landroid/mtp/MtpDevice$EventInterruptThread;->stateCode:I

    if-eq v2, v4, :cond_2

    .line 339
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDevice$EventInterruptThread;->this$0:Landroid/mtp/MtpDevice;

    iget-object v3, p0, Landroid/mtp/MtpDevice$EventInterruptThread;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v3}, Landroid/mtp/MtpDevice;->eventInterruptCatch(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 340
    mul-int/lit16 v2, v0, 0xc8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "MtpDevice"

    const-string v3, "Thread wake up"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget v2, p0, Landroid/mtp/MtpDevice$EventInterruptThread;->stateCode:I

    if-ne v2, v4, :cond_0

    .line 355
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/mtp/MtpDevice$EventInterruptThread;->thisThread:Ljava/lang/Thread;

    .line 328
    const/4 v0, 0x2

    iput v0, p0, Landroid/mtp/MtpDevice$EventInterruptThread;->stateCode:I

    .line 329
    iget-object v0, p0, Landroid/mtp/MtpDevice$EventInterruptThread;->thisThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 330
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 358
    monitor-enter p0

    .line 359
    :try_start_0
    iget v0, p0, Landroid/mtp/MtpDevice$EventInterruptThread;->stateCode:I

    if-ne v0, v1, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread already stopped"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 361
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    iput v0, p0, Landroid/mtp/MtpDevice$EventInterruptThread;->stateCode:I

    .line 362
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    return-void
.end method
