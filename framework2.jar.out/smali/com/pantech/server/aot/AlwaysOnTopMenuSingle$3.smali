.class Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;
.super Ljava/lang/Object;
.source "AlwaysOnTopMenuSingle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->showAotListArea()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 387
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v5, v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 388
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    add-int/lit8 v3, v4, -0x2

    .line 390
    .local v3, "viewID":I
    if-gez v3, :cond_0

    .line 391
    monitor-exit v5

    .line 432
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    array-length v4, v4

    if-gt v4, v3, :cond_2

    .line 394
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 431
    .end local v3    # "viewID":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 399
    .restart local v3    # "viewID":I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-boolean v4, v4, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mIsCalling:Z

    if-ne v4, v6, :cond_4

    .line 400
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    const v6, 0x10406dd

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 401
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    if-eqz v4, :cond_3

    .line 402
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v4}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenu()V

    .line 404
    :cond_3
    monitor-exit v5

    goto :goto_0

    .line 411
    :cond_4
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    aget-object v1, v4, v3

    .line 413
    .local v1, "aotInfo":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 415
    .local v2, "item":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 417
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v6, v6, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406ed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 420
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    if-eqz v4, :cond_5

    .line 421
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v4}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenu()V

    .line 423
    :cond_5
    monitor-exit v5

    goto :goto_0

    .line 426
    :cond_6
    if-eqz v1, :cond_7

    .line 427
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    if-eqz v4, :cond_7

    .line 428
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v1}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->startAlwaysOnTopEx(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 431
    :cond_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
