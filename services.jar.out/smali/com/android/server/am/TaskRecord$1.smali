.class Lcom/android/server/am/TaskRecord$1;
.super Landroid/app/IThumbnailRetriever$Stub;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/TaskRecord;->getTaskAccessInfoLocked(Z)Lcom/android/server/am/TaskAccessInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskRecord;

.field final synthetic val$thumbs:Lcom/android/server/am/TaskAccessInfo;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskAccessInfo;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/server/am/TaskRecord$1;->this$0:Lcom/android/server/am/TaskRecord;

    iput-object p2, p0, Lcom/android/server/am/TaskRecord$1;->val$thumbs:Lcom/android/server/am/TaskAccessInfo;

    invoke-direct {p0}, Landroid/app/IThumbnailRetriever$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getThumbnail(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 481
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/am/TaskRecord$1;->val$thumbs:Lcom/android/server/am/TaskAccessInfo;

    iget-object v4, v4, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 482
    :cond_0
    const/4 v4, 0x0

    .line 504
    :goto_0
    return-object v4

    .line 484
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/TaskRecord$1;->val$thumbs:Lcom/android/server/am/TaskAccessInfo;

    iget-object v4, v4, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskAccessInfo$SubTask;

    .line 485
    .local v3, "sub":Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget-object v4, p0, Lcom/android/server/am/TaskRecord$1;->this$0:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 488
    .local v2, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 489
    iget-object v4, p0, Lcom/android/server/am/TaskRecord$1;->this$0:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mResumedActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 490
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iget-object v5, v3, Lcom/android/server/am/TaskAccessInfo$SubTask;->holder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v4, v5, :cond_2

    .line 491
    move-object v2, v1

    .line 495
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-eqz v2, :cond_4

    .line 496
    iget-object v4, p0, Lcom/android/server/am/TaskRecord$1;->this$0:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 504
    :cond_4
    iget-object v4, v3, Lcom/android/server/am/TaskAccessInfo$SubTask;->holder:Lcom/android/server/am/ThumbnailHolder;

    iget-object v4, v4, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
