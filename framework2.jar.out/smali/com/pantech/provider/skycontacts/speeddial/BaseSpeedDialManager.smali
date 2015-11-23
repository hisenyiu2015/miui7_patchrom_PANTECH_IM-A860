.class public abstract Lcom/pantech/provider/skycontacts/speeddial/BaseSpeedDialManager;
.super Ljava/lang/Object;
.source "BaseSpeedDialManager.java"

# interfaces
.implements Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;


# static fields
.field protected static final TAG:Ljava/lang/String; = "SpeedDialManager"


# instance fields
.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/speeddial/BaseSpeedDialManager;->mResolver:Landroid/content/ContentResolver;

    .line 17
    return-void
.end method


# virtual methods
.method protected isValidParam(I)Z
    .locals 4
    .param p1, "speedDialValue"    # I

    .prologue
    const/4 v0, 0x1

    .line 20
    if-lt p1, v0, :cond_1

    const/16 v1, 0x63

    if-gt p1, v1, :cond_1

    .line 21
    .local v0, "isValid":Z
    :goto_0
    if-nez v0, :cond_0

    .line 22
    const-string v1, "SpeedDialManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid param. speed dial-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "valid param(data id > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    return v0

    .line 20
    .end local v0    # "isValid":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidParam(IJ)Z
    .locals 4
    .param p1, "speedDialValue"    # I
    .param p2, "dataId"    # J

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/speeddial/BaseSpeedDialManager;->isValidParam(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 30
    .local v0, "isValid":Z
    :goto_0
    if-nez v0, :cond_0

    .line 31
    const-string v1, "SpeedDialManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid param. speed dial-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data id-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "valid param(speed dia : 1~99, data id > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return v0

    .line 29
    .end local v0    # "isValid":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
