.class Lcom/android/server/usb/UsbDeviceManager$1;
.super Landroid/os/UEventObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 189
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USB UEVENT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v5, "USB_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "state":Ljava/lang/String;
    const-string v5, "ACCESSORY"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "accessory":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 194
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    const-string v5, "SWITCH_NAME"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "switchName":Ljava/lang/String;
    const-string v5, "SWITCH_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "switchState":Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 206
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 207
    .local v1, "intState":I
    const-string v5, "host_configuration"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 208
    if-nez v1, :cond_3

    .line 209
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v6, 0x7

    const/4 v7, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->host_update_state(IZ)V
    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v1    # "intState":I
    :cond_1
    :goto_1
    return-void

    .line 195
    .end local v3    # "switchName":Ljava/lang/String;
    .end local v4    # "switchState":Ljava/lang/String;
    :cond_2
    const-string v5, "START"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "got accessory start"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)V

    goto :goto_0

    .line 210
    .restart local v1    # "intState":I
    .restart local v3    # "switchName":Ljava/lang/String;
    .restart local v4    # "switchState":Ljava/lang/String;
    :cond_3
    if-ne v1, v8, :cond_4

    .line 211
    :try_start_1
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v6, 0x6

    const/4 v7, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->host_update_state(IZ)V
    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;IZ)V

    goto :goto_1

    .line 227
    .end local v1    # "intState":I
    :catch_0
    move-exception v5

    goto :goto_1

    .line 212
    .restart local v1    # "intState":I
    :cond_4
    if-ne v1, v9, :cond_1

    .line 213
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/16 v6, 0xa

    const/4 v7, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->host_update_state(IZ)V
    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;IZ)V

    goto :goto_1

    .line 216
    :cond_5
    const-string v5, "dev_configuration"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 217
    if-nez v1, :cond_6

    .line 218
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/16 v6, 0x9

    const/4 v7, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->host_update_state(IZ)V
    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;IZ)V

    goto :goto_1

    .line 219
    :cond_6
    if-ne v1, v8, :cond_7

    .line 220
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/16 v6, 0x8

    const/4 v7, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->host_update_state(IZ)V
    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;IZ)V

    goto :goto_1

    .line 221
    :cond_7
    if-ne v1, v9, :cond_8

    .line 222
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/16 v6, 0xb

    const/4 v7, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->host_update_state(IZ)V
    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;IZ)V

    goto :goto_1

    .line 223
    :cond_8
    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    .line 224
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/16 v6, 0xc

    const/4 v7, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->host_update_state(IZ)V
    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;IZ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
