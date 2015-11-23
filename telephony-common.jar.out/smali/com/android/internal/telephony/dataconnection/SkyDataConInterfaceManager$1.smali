.class Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager$1;
.super Landroid/os/Handler;
.source "SkyDataConInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager$1;->this$0:Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    .line 39
    return-void
.end method
