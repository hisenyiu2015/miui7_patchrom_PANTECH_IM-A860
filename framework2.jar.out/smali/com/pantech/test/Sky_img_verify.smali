.class public Lcom/pantech/test/Sky_img_verify;
.super Ljava/lang/Object;
.source "Sky_img_verify.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "sky_img_verify"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "sky_img_verify"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sky_Binary_Verify(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/pantech/test/Sky_img_verify;->native_sky_binary_verify(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Sky_File_Verify(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/pantech/test/Sky_img_verify;->native_sky_file_verify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native native_sky_binary_verify(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public native native_sky_file_verify(Ljava/lang/String;)Ljava/lang/String;
.end method
