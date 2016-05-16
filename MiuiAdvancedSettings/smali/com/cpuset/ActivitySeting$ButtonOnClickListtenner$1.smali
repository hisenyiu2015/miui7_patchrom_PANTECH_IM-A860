.class Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$1;
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
    iput-object p1, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$1;->this$1:Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 121
    iget-object v2, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$1;->this$1:Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;

    # getter for: Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;
    invoke-static {v2}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->access$0(Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;)Lcom/cpuset/ActivitySeting;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/cpuset/ActivitySeting;->access$6(Lcom/cpuset/ActivitySeting;I)V

    .line 122
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 124
    new-instance v0, Lcom/cpuset/Cpusetting;

    invoke-direct {v0}, Lcom/cpuset/Cpusetting;-><init>()V

    .line 125
    .local v0, "cpu":Lcom/cpuset/Cpusetting;
    iget-object v2, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$1;->this$1:Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;

    # getter for: Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;
    invoke-static {v2}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->access$0(Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;)Lcom/cpuset/ActivitySeting;

    move-result-object v2

    # getter for: Lcom/cpuset/ActivitySeting;->DialogItem:[Ljava/lang/String;
    invoke-static {v2}, Lcom/cpuset/ActivitySeting;->access$4(Lcom/cpuset/ActivitySeting;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Lcom/cpuset/Cpusetting;->writeCpuGovernor(Ljava/lang/String;)Z

    move-result v1

    .line 126
    .local v1, "mresult":Z
    if-eqz v1, :cond_0

    .line 127
    iget-object v2, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$1;->this$1:Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;

    # getter for: Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;
    invoke-static {v2}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->access$0(Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;)Lcom/cpuset/ActivitySeting;

    move-result-object v2

    # getter for: Lcom/cpuset/ActivitySeting;->mTextCurrent:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/cpuset/ActivitySeting;->access$7(Lcom/cpuset/ActivitySeting;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5f53\u524d\u6a21\u5f0f "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$1;->this$1:Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;

    # getter for: Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;
    invoke-static {v4}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->access$0(Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;)Lcom/cpuset/ActivitySeting;

    move-result-object v4

    # getter for: Lcom/cpuset/ActivitySeting;->DialogItem:[Ljava/lang/String;
    invoke-static {v4}, Lcom/cpuset/ActivitySeting;->access$4(Lcom/cpuset/ActivitySeting;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$1;->this$1:Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;

    # getter for: Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;
    invoke-static {v2}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->access$0(Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;)Lcom/cpuset/ActivitySeting;

    move-result-object v2

    iget-object v3, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$1;->this$1:Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;

    # getter for: Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;
    invoke-static {v3}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->access$0(Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;)Lcom/cpuset/ActivitySeting;

    move-result-object v3

    # getter for: Lcom/cpuset/ActivitySeting;->DialogItem:[Ljava/lang/String;
    invoke-static {v3}, Lcom/cpuset/ActivitySeting;->access$4(Lcom/cpuset/ActivitySeting;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {v2, v3}, Lcom/cpuset/ActivitySeting;->access$8(Lcom/cpuset/ActivitySeting;Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$1;->this$1:Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;

    # getter for: Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;
    invoke-static {v2}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->access$0(Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;)Lcom/cpuset/ActivitySeting;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bbe\u7f6e\u6210\u529f\uff0c\u5f53\u524dCPU\u6a21\u5f0f\u4e3a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cpuset/Cpusetting;->getCpuCurGovernor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$1;->this$1:Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;

    # getter for: Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;
    invoke-static {v2}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->access$0(Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;)Lcom/cpuset/ActivitySeting;

    move-result-object v2

    const-string v3, "\u8bbe\u7f6e\u5931\u8d25\u8bf7\u91cd\u8bd5"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
