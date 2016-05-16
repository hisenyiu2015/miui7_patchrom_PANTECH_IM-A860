.class Lcom/mi/a/StatusSettingActivity$2;
.super Ljava/lang/Object;
.source "StatusSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/a/StatusSettingActivity;->rebootdialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/a/StatusSettingActivity;


# direct methods
.method constructor <init>(Lcom/mi/a/StatusSettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mi/a/StatusSettingActivity$2;->this$0:Lcom/mi/a/StatusSettingActivity;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 593
    const-string v0, "reboot"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 597
    return-void
.end method
