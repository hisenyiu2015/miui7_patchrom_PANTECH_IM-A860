.class Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;
.super Ljava/lang/Object;
.source "ActivitySeting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cpuset/ActivitySeting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonOnClickListtenner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cpuset/ActivitySeting;


# direct methods
.method constructor <init>(Lcom/cpuset/ActivitySeting;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;)Lcom/cpuset/ActivitySeting;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;

    # getter for: Lcom/cpuset/ActivitySeting;->mBtWorktype:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cpuset/ActivitySeting;->access$3(Lcom/cpuset/ActivitySeting;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    const-string v2, "\u9009\u62e9CPU\u5de5\u4f5c\u6a21\u5f0f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;

    # getter for: Lcom/cpuset/ActivitySeting;->DialogItem:[Ljava/lang/String;
    invoke-static {v2}, Lcom/cpuset/ActivitySeting;->access$4(Lcom/cpuset/ActivitySeting;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;

    # getter for: Lcom/cpuset/ActivitySeting;->Item:I
    invoke-static {v3}, Lcom/cpuset/ActivitySeting;->access$5(Lcom/cpuset/ActivitySeting;)I

    move-result v3

    new-instance v4, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$1;

    invoke-direct {v4, p0}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$1;-><init>(Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 138
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 185
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;

    # getter for: Lcom/cpuset/ActivitySeting;->mBtCPUmax:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cpuset/ActivitySeting;->access$9(Lcom/cpuset/ActivitySeting;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    const-string v2, "\u9009\u62e9\u5141\u8bb8\u6700\u5927CPU\u9891\u7387\u503c"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;

    # getter for: Lcom/cpuset/ActivitySeting;->CPUDialogItem:[Ljava/lang/String;
    invoke-static {v2}, Lcom/cpuset/ActivitySeting;->access$10(Lcom/cpuset/ActivitySeting;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;

    # getter for: Lcom/cpuset/ActivitySeting;->MaxItem:I
    invoke-static {v3}, Lcom/cpuset/ActivitySeting;->access$11(Lcom/cpuset/ActivitySeting;)I

    move-result v3

    new-instance v4, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$2;

    invoke-direct {v4, p0}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$2;-><init>(Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 158
    .restart local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 162
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_2
    iget-object v1, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;

    # getter for: Lcom/cpuset/ActivitySeting;->mBtCPUmin:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cpuset/ActivitySeting;->access$13(Lcom/cpuset/ActivitySeting;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    const-string v2, "\u9009\u62e9\u5141\u8bb8\u6700\u5c0fCPU\u9891\u7387\u503c"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;

    # getter for: Lcom/cpuset/ActivitySeting;->CPUDialogItem:[Ljava/lang/String;
    invoke-static {v2}, Lcom/cpuset/ActivitySeting;->access$10(Lcom/cpuset/ActivitySeting;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;->this$0:Lcom/cpuset/ActivitySeting;

    # getter for: Lcom/cpuset/ActivitySeting;->MinItem:I
    invoke-static {v3}, Lcom/cpuset/ActivitySeting;->access$14(Lcom/cpuset/ActivitySeting;)I

    move-result v3

    new-instance v4, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$3;

    invoke-direct {v4, p0}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner$3;-><init>(Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 181
    .restart local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
