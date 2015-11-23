.class public Lcom/pantech/test/audioutil;
.super Ljava/lang/Object;
.source "audioutil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "audio util test"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "audioutil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private native native_sky_damp_process([BII)[B
.end method


# virtual methods
.method public sky_damp_process([BII)[B
    .locals 3
    .param p1, "pcm_data"    # [B
    .param p2, "size"    # I
    .param p3, "scale"    # I

    .prologue
    .line 41
    const-string v0, "audio util test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sky_damp_process("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/test/audioutil;->native_sky_damp_process([BII)[B

    move-result-object v0

    return-object v0
.end method
