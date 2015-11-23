.class Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;
.super Ljava/lang/Object;
.source "AlwaysOnTopMenuMulti.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->rearrangeAotItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;I)V
    .locals 0

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iput p2, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1105
    if-eqz p2, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$200(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Lcom/pantech/server/aot/menu/AotContainer;

    move-result-object v0

    iget v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->val$index:I

    div-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotContainer;->scrollToPage(I)V

    .line 1108
    :cond_0
    return-void
.end method
