.class Lcom/android/server/NotificationManagerService$8;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 2470
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x1511

    const/4 v1, 0x1

    .line 2472
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2494
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2474
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2475
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOTGNotification:Landroid/app/Notification;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$4000(Lcom/android/server/NotificationManagerService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 2479
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2480
    .restart local v0    # "notificationManager":Landroid/app/NotificationManager;
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOTGNotification:Landroid/app/Notification;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$4000(Lcom/android/server/NotificationManagerService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 2484
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2485
    .restart local v0    # "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 2489
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2490
    .restart local v0    # "notificationManager":Landroid/app/NotificationManager;
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOTGNotification:Landroid/app/Notification;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$4000(Lcom/android/server/NotificationManagerService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 2472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
