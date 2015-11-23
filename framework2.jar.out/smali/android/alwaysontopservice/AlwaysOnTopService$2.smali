.class Landroid/alwaysontopservice/AlwaysOnTopService$2;
.super Ljava/lang/Object;
.source "AlwaysOnTopService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/alwaysontopservice/AlwaysOnTopService;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/alwaysontopservice/AlwaysOnTopService;


# direct methods
.method constructor <init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$2;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 374
    const-string v2, "AlwaysOnTopService_POS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged org save pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",saveY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rawX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rawY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$2;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    # invokes: Landroid/alwaysontopservice/AlwaysOnTopService;->checkFrameSize()Z
    invoke-static {v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->access$000(Landroid/alwaysontopservice/AlwaysOnTopService;)Z

    .line 378
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$2;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    # invokes: Landroid/alwaysontopservice/AlwaysOnTopService;->resetPosition()V
    invoke-static {v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->access$100(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    .line 381
    const-string v2, "AlwaysOnTopService_POS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged reset save pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",saveY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rawX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rawY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v2, v2, v5

    sget-object v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v3, v3, v5

    sub-int v0, v2, v3

    .line 384
    .local v0, "moveX":I
    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v2, v2, v6

    sget-object v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v3, v3, v6

    sub-int v1, v2, v3

    .line 385
    .local v1, "moveY":I
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$2;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v2, v0, v1, v5}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    .line 386
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$2;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-boolean v2, v2, Landroid/alwaysontopservice/AlwaysOnTopService;->aotMayMove:Z

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$2;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput-boolean v5, v2, Landroid/alwaysontopservice/AlwaysOnTopService;->aotMayMove:Z

    .line 388
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$2;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    # invokes: Landroid/alwaysontopservice/AlwaysOnTopService;->moveFrame()V
    invoke-static {v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->access$200(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    .line 391
    :cond_0
    return-void
.end method
