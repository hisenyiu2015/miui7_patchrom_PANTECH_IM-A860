.class Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$3;
.super Ljava/lang/Object;
.source "AlwaysOnTopMenuMulti.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->rearrangeAotItems_Old()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 555
    if-eqz p2, :cond_0

    .line 556
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$200(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Lcom/pantech/server/aot/menu/AotContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/server/aot/menu/AotContainer;->scrollLeft()V

    .line 558
    :cond_0
    return-void
.end method
