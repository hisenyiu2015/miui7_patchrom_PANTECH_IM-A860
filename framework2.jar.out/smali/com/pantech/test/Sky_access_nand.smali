.class public Lcom/pantech/test/Sky_access_nand;
.super Ljava/lang/Object;
.source "Sky_access_nand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "sky access nand"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "sky_access_nand"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static native java_sky_accessnand_AccessValue(III)I
.end method

.method static native java_sky_accessnand_ReadValue([I)I
.end method


# virtual methods
.method public Access_nand_int_value(III)I
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I

    .prologue
    .line 44
    const-string v0, "Access_nand_int_value"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " p1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " p2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {p1, p2, p3}, Lcom/pantech/test/Sky_access_nand;->java_sky_accessnand_AccessValue(III)I

    move-result v0

    return v0
.end method

.method public Read_nand_int_value([I)I
    .locals 1
    .param p1, "flag_array"    # [I

    .prologue
    .line 49
    invoke-static {p1}, Lcom/pantech/test/Sky_access_nand;->java_sky_accessnand_ReadValue([I)I

    move-result v0

    return v0
.end method
