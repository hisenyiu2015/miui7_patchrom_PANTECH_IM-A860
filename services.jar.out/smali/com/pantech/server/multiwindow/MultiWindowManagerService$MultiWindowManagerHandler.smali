.class final Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;
.super Landroid/os/Handler;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/multiwindow/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiWindowManagerHandler"
.end annotation


# static fields
.field public static final MSG_FOCUSED_ZONE_CHANGED:I = 0x1

.field public static final MSG_SEPARATOR_BAR_HIDE:I = 0x3

.field public static final MSG_SEPARATOR_BAR_SHOW:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/pantech/server/multiwindow/MultiWindowManagerService;


# direct methods
.method public constructor <init>(Lcom/pantech/server/multiwindow/MultiWindowManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;->this$0:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    .line 1445
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1446
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1450
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1476
    :goto_0
    return-void

    .line 1455
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.android.action.NOTIFY_FOCUS_WINDOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1457
    .local v0, "notifyFocusIntent":Landroid/content/Intent;
    const-string v1, "com.pantech.android.extra.WINDOW_ZONE"

    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;->this$0:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    # getter for: Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedZone:I
    invoke-static {v2}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->access$100(Lcom/pantech/server/multiwindow/MultiWindowManagerService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1459
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;->this$0:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    # getter for: Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->access$200(Lcom/pantech/server/multiwindow/MultiWindowManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1465
    .end local v0    # "notifyFocusIntent":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;->this$0:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    # getter for: Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->access$200(Lcom/pantech/server/multiwindow/MultiWindowManagerService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.multiwindow_center_bar_show"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1472
    :pswitch_2
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;->this$0:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    # getter for: Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->access$200(Lcom/pantech/server/multiwindow/MultiWindowManagerService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.multiwindow_center_bar_hide"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
