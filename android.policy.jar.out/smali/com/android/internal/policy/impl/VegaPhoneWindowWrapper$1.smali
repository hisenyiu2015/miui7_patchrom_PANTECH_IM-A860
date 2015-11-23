.class Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$1;
.super Ljava/lang/Object;
.source "VegaPhoneWindowWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->updateWindowAttriutes(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;I)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$1;->this$0:Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

    iput p2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$1;->val$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$1;->this$0:Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

    # getter for: Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindow:Landroid/view/Window;
    invoke-static {v1}, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->access$000(Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 279
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    if-eqz v1, :cond_0

    .line 280
    iget v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$1;->val$width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 281
    iget-object v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$1;->this$0:Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

    iget v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$1;->val$width:I

    # setter for: Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldWidth:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->access$102(Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;I)I

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$1;->this$0:Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

    # getter for: Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindow:Landroid/view/Window;
    invoke-static {v1}, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->access$000(Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;)Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 285
    return-void
.end method
