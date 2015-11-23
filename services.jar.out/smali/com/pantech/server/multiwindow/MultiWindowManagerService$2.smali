.class final Lcom/pantech/server/multiwindow/MultiWindowManagerService$2;
.super Ljava/util/ArrayList;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/multiwindow/MultiWindowManagerService;
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
    .line 81
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    const-string v0, "com.google.android.gsf.login"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$2;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v0, "android"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$2;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method
