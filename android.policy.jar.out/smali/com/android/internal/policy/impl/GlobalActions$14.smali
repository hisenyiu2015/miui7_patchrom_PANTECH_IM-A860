.class Lcom/android/internal/policy/impl/GlobalActions$14;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->changeAirPlaneModeDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;

.field final synthetic val$airPlaneOn:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$14;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions$14;->val$airPlaneOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$14;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions$14;->val$airPlaneOn:Z

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$2100(Lcom/android/internal/policy/impl/GlobalActions;Z)V

    .line 1321
    return-void
.end method
