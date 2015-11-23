.class Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$1;
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
    .line 196
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v2, v2, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v3, v2, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 200
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.pantech.action.TEXT_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v1, "textActionIntent":Landroid/content/Intent;
    const v2, 0x10204000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v2, v2, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v2, v2, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    iget-object v2, v2, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v2}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenu()V

    .line 213
    :cond_0
    monitor-exit v3

    .line 214
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "AlwaysOnTopMenuSingle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Text Action fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "textActionIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
