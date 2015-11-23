.class final Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;
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
    .line 59
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v0, "com.google.android.youtube"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v0, "com.google.android.apps.maps"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v0, "com.android.browser"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v0, "com.google.android.talk"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v0, "com.google.android.gm"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v0, "com.pantech.app.tdmb"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v0, "com.pantech.app.movie"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v0, "com.pantech.app.music"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v0, "com.pantech.app.mms"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v0, "com.android.gallery3d"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v0, "com.pantech.app.skypen"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v0, "com.diotek.diodict3.phone.pantech.skydict"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v0, "com.android.email"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v0, "com.pantech.app.textaction"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v0, "com.android.phone"

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method
