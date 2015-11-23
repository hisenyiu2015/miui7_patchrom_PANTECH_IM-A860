.class public Lcom/pantech/test/Sky_dload;
.super Ljava/lang/Object;
.source "Sky_dload.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "sky dload"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "sky_dload"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static native java_sky_dload_GetDloadHistory(I)Ljava/lang/String;
.end method

.method static native java_sky_dload_InitDloadHistory()I
.end method


# virtual methods
.method public GetDloadHistory(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 44
    invoke-static {p1}, Lcom/pantech/test/Sky_dload;->java_sky_dload_GetDloadHistory(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public InitDloadHistory()I
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/pantech/test/Sky_dload;->java_sky_dload_InitDloadHistory()I

    move-result v0

    return v0
.end method
