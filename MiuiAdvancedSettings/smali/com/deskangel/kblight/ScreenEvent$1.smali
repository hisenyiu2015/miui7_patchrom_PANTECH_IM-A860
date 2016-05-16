.class Lcom/deskangel/kblight/ScreenEvent$1;
.super Ljava/lang/Thread;
.source "ScreenEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deskangel/kblight/ScreenEvent;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/deskangel/kblight/ScreenEvent;


# direct methods
.method constructor <init>(Lcom/deskangel/kblight/ScreenEvent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/deskangel/kblight/ScreenEvent$1;->this$0:Lcom/deskangel/kblight/ScreenEvent;

    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 29
    iget-object v0, p0, Lcom/deskangel/kblight/ScreenEvent$1;->this$0:Lcom/deskangel/kblight/ScreenEvent;

    iget-object v1, p0, Lcom/deskangel/kblight/ScreenEvent$1;->this$0:Lcom/deskangel/kblight/ScreenEvent;

    iget-object v1, v1, Lcom/deskangel/kblight/ScreenEvent;->cntxt:Landroid/content/Context;

    iget-object v2, p0, Lcom/deskangel/kblight/ScreenEvent$1;->this$0:Lcom/deskangel/kblight/ScreenEvent;

    iget-object v2, v2, Lcom/deskangel/kblight/ScreenEvent;->mStrAction:Ljava/lang/String;

    # invokes: Lcom/deskangel/kblight/ScreenEvent;->changeBkLightOfButtons(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/deskangel/kblight/ScreenEvent;->access$0(Lcom/deskangel/kblight/ScreenEvent;Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    return-void
.end method
