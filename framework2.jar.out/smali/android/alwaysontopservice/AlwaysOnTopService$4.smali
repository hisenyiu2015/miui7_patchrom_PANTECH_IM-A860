.class Landroid/alwaysontopservice/AlwaysOnTopService$4;
.super Ljava/lang/Object;
.source "AlwaysOnTopService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/alwaysontopservice/AlwaysOnTopService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/alwaysontopservice/AlwaysOnTopService;


# direct methods
.method constructor <init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$4;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$4;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    # invokes: Landroid/alwaysontopservice/AlwaysOnTopService;->initViewPosition()V
    invoke-static {v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->access$300(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    .line 608
    return-void
.end method
