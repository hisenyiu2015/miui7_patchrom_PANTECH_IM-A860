.class Lcom/android/server/usb/UsbPantechDevice$1;
.super Landroid/telephony/PhoneStateListener;
.source "UsbPantechDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPantechDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbPantechDevice;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbPantechDevice;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/usb/UsbPantechDevice$1;->this$0:Lcom/android/server/usb/UsbPantechDevice;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 73
    # getter for: Lcom/android/server/usb/UsbPantechDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbPantechDevice;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/server/usb/UsbPantechDevice$1;->this$0:Lcom/android/server/usb/UsbPantechDevice;

    # setter for: Lcom/android/server/usb/UsbPantechDevice;->mCallState:I
    invoke-static {v0, p1}, Lcom/android/server/usb/UsbPantechDevice;->access$102(Lcom/android/server/usb/UsbPantechDevice;I)I

    .line 75
    return-void
.end method
