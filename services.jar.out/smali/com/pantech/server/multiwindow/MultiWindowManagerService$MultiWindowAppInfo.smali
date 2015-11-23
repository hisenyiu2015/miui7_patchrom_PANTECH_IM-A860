.class Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/multiwindow/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowAppInfo"
.end annotation


# instance fields
.field final excludeActivitys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/pantech/server/multiwindow/MultiWindowManagerService;


# direct methods
.method private constructor <init>(Lcom/pantech/server/multiwindow/MultiWindowManagerService;)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;->this$0:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;->excludeActivitys:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/server/multiwindow/MultiWindowManagerService;Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/pantech/server/multiwindow/MultiWindowManagerService;
    .param p2, "x1"    # Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;-><init>(Lcom/pantech/server/multiwindow/MultiWindowManagerService;)V

    return-void
.end method
