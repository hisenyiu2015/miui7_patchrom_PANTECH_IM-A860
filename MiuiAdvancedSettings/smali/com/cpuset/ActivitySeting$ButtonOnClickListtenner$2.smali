.class Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$2;
.super Ljava/lang/Object;
.source "ActivitySeting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;


# direct methods
.method constructor <init>(Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$2;->this$1:Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 148
    iget-object v1, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$2;->this$1:Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;

    # getter for: Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;
    invoke-static {v1}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->access$0(Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;)Lcom/cpuset/ActivitySeting;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/cpuset/ActivitySeting;->access$12(Lcom/cpuset/ActivitySeting;I)V

    .line 149
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 151
    new-instance v0, Lcom/cpuset/Cpusetting;

    invoke-direct {v0}, Lcom/cpuset/Cpusetting;-><init>()V

    .line 152
    .local v0, "cpu":Lcom/cpuset/Cpusetting;
    iget-object v1, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$2;->this$1:Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;

    # getter for: Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;
    invoke-static {v1}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->access$0(Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;)Lcom/cpuset/ActivitySeting;

    move-result-object v1

    # getter for: Lcom/cpuset/ActivitySeting;->CPUDialogItem:[Ljava/lang/String;
    invoke-static {v1}, Lcom/cpuset/ActivitySeting;->access$10(Lcom/cpuset/ActivitySeting;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/cpuset/Cpusetting;->writeCpufrequencyMax(Ljava/lang/String;)Z

    .line 156
    return-void
.end method
