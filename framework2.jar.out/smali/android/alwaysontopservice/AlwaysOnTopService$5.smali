.class Landroid/alwaysontopservice/AlwaysOnTopService$5;
.super Ljava/lang/Object;
.source "AlwaysOnTopService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/alwaysontopservice/AlwaysOnTopService;->createListener()V
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
    .line 652
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 656
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 658
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v3, v5

    .line 659
    .local v3, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v4, v5

    .line 661
    .local v4, "y":I
    const/4 v1, 0x0

    .line 662
    .local v1, "winX":I
    const/4 v2, 0x0

    .line 663
    .local v2, "winY":I
    packed-switch v0, :pswitch_data_0

    .line 703
    :goto_0
    return v9

    .line 665
    :pswitch_0
    const-string v5, "AlwaysOnTopService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Down x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",y:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v3, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveX:I

    .line 667
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v4, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveY:I

    goto :goto_0

    .line 670
    :pswitch_1
    const-string v5, "AlwaysOnTopService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RawX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",RawY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",moveX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget v7, v7, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveX:I

    sub-int v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",moveY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget v7, v7, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveY:I

    sub-int v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-boolean v5, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMove:Z

    if-nez v5, :cond_0

    .line 673
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput-boolean v10, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMove:Z

    .line 674
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v5}, Landroid/alwaysontopservice/AlwaysOnTopService;->OnTitleMoveStart()V

    .line 677
    :cond_0
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget v5, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveX:I

    sub-int v1, v3, v5

    .line 678
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget v5, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveY:I

    sub-int v2, v4, v5

    .line 679
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v5, v1, v2, v10}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    .line 681
    sget v5, Landroid/alwaysontopservice/AlwaysOnTopService;->windowX:I

    add-int/2addr v5, v1

    sput v5, Landroid/alwaysontopservice/AlwaysOnTopService;->windowX:I

    .line 682
    sget v5, Landroid/alwaysontopservice/AlwaysOnTopService;->windowY:I

    add-int/2addr v5, v2

    sput v5, Landroid/alwaysontopservice/AlwaysOnTopService;->windowY:I

    .line 684
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v3, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveX:I

    .line 685
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v4, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveY:I

    goto/16 :goto_0

    .line 689
    :pswitch_2
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-boolean v5, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMove:Z

    if-eqz v5, :cond_1

    .line 690
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput-boolean v9, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMove:Z

    .line 691
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v5}, Landroid/alwaysontopservice/AlwaysOnTopService;->OnTitleMoveStop()V

    .line 694
    :cond_1
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v9, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveX:I

    .line 695
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v9, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveY:I

    .line 697
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    # invokes: Landroid/alwaysontopservice/AlwaysOnTopService;->checkFrameSize()Z
    invoke-static {v5}, Landroid/alwaysontopservice/AlwaysOnTopService;->access$000(Landroid/alwaysontopservice/AlwaysOnTopService;)Z

    .line 698
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v5, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 699
    const-string v5, "AlwaysOnTopService_POS"

    const-string v6, "UP : pos:%d,pos:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    sget-object v8, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
