.class final Lcom/android/internal/pantech/PantechVendor$1;
.super Ljava/util/ArrayList;
.source "PantechVendor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/pantech/PantechVendor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const-string v0, "ef51s"

    invoke-virtual {p0, v0}, Lcom/android/internal/pantech/PantechVendor$1;->add(Ljava/lang/Object;)Z

    .line 28
    const-string v0, "ef51k"

    invoke-virtual {p0, v0}, Lcom/android/internal/pantech/PantechVendor$1;->add(Ljava/lang/Object;)Z

    .line 29
    const-string v0, "ef51l"

    invoke-virtual {p0, v0}, Lcom/android/internal/pantech/PantechVendor$1;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method
