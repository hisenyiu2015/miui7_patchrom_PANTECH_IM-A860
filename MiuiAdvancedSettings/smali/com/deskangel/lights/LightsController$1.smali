.class Lcom/deskangel/lights/LightsController$1;
.super Ljava/lang/Thread;
.source "LightsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deskangel/lights/LightsController;->execCmdThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/deskangel/lights/LightsController;

.field private final synthetic val$strCmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/deskangel/lights/LightsController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/deskangel/lights/LightsController$1;->this$0:Lcom/deskangel/lights/LightsController;

    iput-object p2, p0, Lcom/deskangel/lights/LightsController$1;->val$strCmd:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 51
    iget-object v0, p0, Lcom/deskangel/lights/LightsController$1;->this$0:Lcom/deskangel/lights/LightsController;

    iget-object v1, p0, Lcom/deskangel/lights/LightsController$1;->val$strCmd:Ljava/lang/String;

    # invokes: Lcom/deskangel/lights/LightsController;->execCmd(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/deskangel/lights/LightsController;->access$0(Lcom/deskangel/lights/LightsController;Ljava/lang/String;)Z

    .line 52
    return-void
.end method
