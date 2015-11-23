.class Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$2;
.super Ljava/lang/Object;
.source "VegaPhoneWindowWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->onWinodwStatusChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

.field final synthetic val$zone:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;I)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$2;->this$0:Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

    iput p2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$2;->val$zone:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$2;->this$0:Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

    iget v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$2;->val$zone:I

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->onWinodwStatusChanged(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->access$200(Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;IZ)V

    .line 481
    return-void
.end method
