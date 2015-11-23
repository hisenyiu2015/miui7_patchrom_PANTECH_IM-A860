.class Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$6;
.super Ljava/lang/Object;
.source "AlwaysOnTopMenuMulti.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;
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
    .line 737
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$6;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$6;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    invoke-virtual {v0, p1}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->startDrag(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
