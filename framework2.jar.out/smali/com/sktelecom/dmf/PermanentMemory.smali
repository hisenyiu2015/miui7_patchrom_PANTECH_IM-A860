.class public Lcom/sktelecom/dmf/PermanentMemory;
.super Ljava/lang/Object;
.source "PermanentMemory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PermanentMemory"

.field private static sky_fota:Lcom/pantech/test/Sky_ctrl_drv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/pantech/test/Sky_ctrl_drv;

    invoke-direct {v0}, Lcom/pantech/test/Sky_ctrl_drv;-><init>()V

    sput-object v0, Lcom/sktelecom/dmf/PermanentMemory;->sky_fota:Lcom/pantech/test/Sky_ctrl_drv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static Read([B)I
    .locals 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "result":I
    const-string v1, "PermanentMemory"

    const-string v2, "gota reading permanent memory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object v1, Lcom/sktelecom/dmf/PermanentMemory;->sky_fota:Lcom/pantech/test/Sky_ctrl_drv;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/pantech/test/Sky_ctrl_drv;->gota_jni_get_permanent_mem(I[B)I

    move-result v0

    .line 22
    const/4 v1, -0x1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Permanent Memory Read Fail"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_0
    return v0
.end method

.method public static Write([B)I
    .locals 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "result":I
    const-string v1, "PermanentMemory"

    const-string v2, "gota writing permanent memory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v1, Lcom/sktelecom/dmf/PermanentMemory;->sky_fota:Lcom/pantech/test/Sky_ctrl_drv;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/pantech/test/Sky_ctrl_drv;->gota_jni_set_permanent_mem(I[B)I

    move-result v0

    .line 30
    const/4 v1, -0x1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Permanent Memory Write Fail"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    return v0
.end method
