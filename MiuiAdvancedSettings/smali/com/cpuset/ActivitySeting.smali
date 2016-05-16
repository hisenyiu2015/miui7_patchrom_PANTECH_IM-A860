.class public Lcom/cpuset/ActivitySeting;
.super Lmiui/app/Activity;
.source "ActivitySeting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;,
        Lcom/cpuset/ActivitySeting$getCpufrequencyThread;
    }
.end annotation


# instance fields
.field private AlltypeList:Ljava/util/List;

.field private CPUAlltypeList:Ljava/util/List;

.field private CPUDialogItem:[Ljava/lang/String;

.field private CPUfrequencymax:Ljava/lang/String;

.field private CPUfrequencymin:Ljava/lang/String;

.field private CPUtype:Ljava/lang/String;

.field private DialogItem:[Ljava/lang/String;

.field private Isstop:Ljava/lang/Boolean;

.field private Item:I

.field private MaxItem:I

.field private MinItem:I

.field private handler:Landroid/os/Handler;

.field private mBtCPUmax:Landroid/widget/Button;

.field private mBtCPUmin:Landroid/widget/Button;

.field private mBtWorktype:Landroid/widget/Button;

.field private mTextCurrent:Landroid/widget/TextView;

.field private mTextcpuvalue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cpuset/ActivitySeting;->Isstop:Ljava/lang/Boolean;

    .line 36
    new-instance v0, Lcom/cpuset/ActivitySeting$1;

    invoke-direct {v0, p0}, Lcom/cpuset/ActivitySeting$1;-><init>(Lcom/cpuset/ActivitySeting;)V

    iput-object v0, p0, Lcom/cpuset/ActivitySeting;->handler:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/cpuset/ActivitySeting;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cpuset/ActivitySeting;->mTextcpuvalue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cpuset/ActivitySeting;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cpuset/ActivitySeting;->Isstop:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cpuset/ActivitySeting;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cpuset/ActivitySeting;->CPUDialogItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cpuset/ActivitySeting;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/cpuset/ActivitySeting;->MaxItem:I

    return v0
.end method

.method static synthetic access$12(Lcom/cpuset/ActivitySeting;I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/cpuset/ActivitySeting;->MaxItem:I

    return-void
.end method

.method static synthetic access$13(Lcom/cpuset/ActivitySeting;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cpuset/ActivitySeting;->mBtCPUmin:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cpuset/ActivitySeting;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/cpuset/ActivitySeting;->MinItem:I

    return v0
.end method

.method static synthetic access$15(Lcom/cpuset/ActivitySeting;I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/cpuset/ActivitySeting;->MinItem:I

    return-void
.end method

.method static synthetic access$2(Lcom/cpuset/ActivitySeting;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cpuset/ActivitySeting;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cpuset/ActivitySeting;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cpuset/ActivitySeting;->mBtWorktype:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cpuset/ActivitySeting;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cpuset/ActivitySeting;->DialogItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cpuset/ActivitySeting;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/cpuset/ActivitySeting;->Item:I

    return v0
.end method

.method static synthetic access$6(Lcom/cpuset/ActivitySeting;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/cpuset/ActivitySeting;->Item:I

    return-void
.end method

.method static synthetic access$7(Lcom/cpuset/ActivitySeting;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cpuset/ActivitySeting;->mTextCurrent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cpuset/ActivitySeting;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cpuset/ActivitySeting;->CPUtype:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/cpuset/ActivitySeting;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cpuset/ActivitySeting;->mBtCPUmax:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public GetCurrenttype(Ljava/util/List;)I
    .locals 5
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 212
    const/4 v2, 0x1

    .line 213
    .local v2, "t":I
    new-instance v0, Lcom/cpuset/Cpusetting;

    invoke-direct {v0}, Lcom/cpuset/Cpusetting;-><init>()V

    .line 214
    .local v0, "cpu":Lcom/cpuset/Cpusetting;
    invoke-virtual {v0}, Lcom/cpuset/Cpusetting;->getCpuCurGovernor()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cpuset/ActivitySeting;->CPUtype:Ljava/lang/String;

    .line 215
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 221
    :goto_1
    return v2

    .line 216
    :cond_0
    iget-object v3, p0, Lcom/cpuset/ActivitySeting;->CPUtype:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    move v2, v1

    .line 218
    goto :goto_1

    .line 215
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public frequency(Ljava/util/List;I)I
    .locals 4
    .param p1, "list"    # Ljava/util/List;
    .param p2, "m"    # I

    .prologue
    .line 193
    const/4 v1, 0x1

    .line 194
    .local v1, "t":I
    const-string v2, ""

    .line 195
    .local v2, "value":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/cpuset/ActivitySeting;->CPUfrequencymax:Ljava/lang/String;

    .line 202
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 208
    :goto_2
    return v1

    .line 198
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/cpuset/ActivitySeting;->CPUfrequencymin:Ljava/lang/String;

    goto :goto_0

    .line 203
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    move v1, v0

    .line 205
    goto :goto_2

    .line 202
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v3, 0x7f030003

    invoke-virtual {p0, v3}, Lcom/cpuset/ActivitySeting;->setContentView(I)V

    .line 53
    const v3, 0x7f09000f

    invoke-virtual {p0, v3}, Lcom/cpuset/ActivitySeting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cpuset/ActivitySeting;->mBtWorktype:Landroid/widget/Button;

    .line 54
    const v3, 0x7f090011

    invoke-virtual {p0, v3}, Lcom/cpuset/ActivitySeting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cpuset/ActivitySeting;->mBtCPUmax:Landroid/widget/Button;

    .line 55
    const v3, 0x7f090010

    invoke-virtual {p0, v3}, Lcom/cpuset/ActivitySeting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cpuset/ActivitySeting;->mBtCPUmin:Landroid/widget/Button;

    .line 56
    const v3, 0x7f09000e

    invoke-virtual {p0, v3}, Lcom/cpuset/ActivitySeting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cpuset/ActivitySeting;->mTextCurrent:Landroid/widget/TextView;

    .line 57
    const v3, 0x7f09000d

    invoke-virtual {p0, v3}, Lcom/cpuset/ActivitySeting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cpuset/ActivitySeting;->mTextcpuvalue:Landroid/widget/TextView;

    .line 58
    iget-object v3, p0, Lcom/cpuset/ActivitySeting;->mBtWorktype:Landroid/widget/Button;

    new-instance v4, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;

    invoke-direct {v4, p0}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;-><init>(Lcom/cpuset/ActivitySeting;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v3, p0, Lcom/cpuset/ActivitySeting;->mBtCPUmax:Landroid/widget/Button;

    new-instance v4, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;

    invoke-direct {v4, p0}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;-><init>(Lcom/cpuset/ActivitySeting;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v3, p0, Lcom/cpuset/ActivitySeting;->mBtCPUmin:Landroid/widget/Button;

    new-instance v4, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;

    invoke-direct {v4, p0}, Lcom/cpuset/ActivitySeting$ButtonOnClickListtenner;-><init>(Lcom/cpuset/ActivitySeting;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v0, Lcom/cpuset/Cpusetting;

    invoke-direct {v0}, Lcom/cpuset/Cpusetting;-><init>()V

    .line 64
    .local v0, "cpu":Lcom/cpuset/Cpusetting;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cpuset/ActivitySeting;->AlltypeList:Ljava/util/List;

    .line 65
    invoke-virtual {v0}, Lcom/cpuset/Cpusetting;->readCpuGovernors()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/cpuset/ActivitySeting;->AlltypeList:Ljava/util/List;

    .line 66
    iget-object v3, p0, Lcom/cpuset/ActivitySeting;->AlltypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 68
    .local v1, "size":I
    iget-object v3, p0, Lcom/cpuset/ActivitySeting;->AlltypeList:Ljava/util/List;

    new-array v4, v1, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/cpuset/ActivitySeting;->DialogItem:[Ljava/lang/String;

    .line 69
    iget-object v3, p0, Lcom/cpuset/ActivitySeting;->AlltypeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/cpuset/ActivitySeting;->GetCurrenttype(Ljava/util/List;)I

    move-result v3

    iput v3, p0, Lcom/cpuset/ActivitySeting;->Item:I

    .line 70
    iget-object v3, p0, Lcom/cpuset/ActivitySeting;->mTextCurrent:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5f53\u524d\u6a21\u5f0f "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cpuset/ActivitySeting;->CPUtype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cpuset/ActivitySeting;->CPUAlltypeList:Ljava/util/List;

    .line 73
    invoke-virtual {v0}, Lcom/cpuset/Cpusetting;->readCpufrequency()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/cpuset/ActivitySeting;->CPUAlltypeList:Ljava/util/List;

    .line 74
    iget-object v3, p0, Lcom/cpuset/ActivitySeting;->CPUAlltypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 76
    .local v2, "sizeM":I
    iget-object v3, p0, Lcom/cpuset/ActivitySeting;->CPUAlltypeList:Ljava/util/List;

    new-array v4, v2, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/cpuset/ActivitySeting;->CPUDialogItem:[Ljava/lang/String;

    .line 78
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 225
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/cpuset/ActivitySeting;->Isstop:Ljava/lang/Boolean;

    .line 226
    new-instance v0, Lcom/cpuset/ActivitySeting$getCpufrequencyThread;

    invoke-direct {v0, p0}, Lcom/cpuset/ActivitySeting$getCpufrequencyThread;-><init>(Lcom/cpuset/ActivitySeting;)V

    .line 227
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 230
    invoke-virtual {p0}, Lcom/cpuset/ActivitySeting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 231
    const-string v2, "CPUfrequencymax"

    .line 230
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/cpuset/ActivitySeting;->MaxItem:I

    .line 232
    invoke-virtual {p0}, Lcom/cpuset/ActivitySeting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 233
    const-string v2, "CPUfrequencymin"

    .line 232
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/cpuset/ActivitySeting;->MinItem:I

    .line 236
    invoke-super {p0}, Lmiui/app/Activity;->onStart()V

    .line 237
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cpuset/ActivitySeting;->Isstop:Ljava/lang/Boolean;

    .line 243
    invoke-virtual {p0}, Lcom/cpuset/ActivitySeting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    const-string v1, "CPUfrequencymax"

    iget v2, p0, Lcom/cpuset/ActivitySeting;->MaxItem:I

    .line 243
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    invoke-virtual {p0}, Lcom/cpuset/ActivitySeting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    const-string v1, "CPUfrequencymin"

    iget v2, p0, Lcom/cpuset/ActivitySeting;->MinItem:I

    .line 245
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    invoke-virtual {p0}, Lcom/cpuset/ActivitySeting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 249
    const-string v1, "CPUmode"

    iget-object v2, p0, Lcom/cpuset/ActivitySeting;->CPUtype:Ljava/lang/String;

    .line 248
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 250
    invoke-super {p0}, Lmiui/app/Activity;->onStop()V

    .line 251
    return-void
.end method
