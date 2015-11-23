.class public Lcom/android/internal/policy/impl/RearGestureView;
.super Landroid/app/Dialog;
.source "RearGestureView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static final DEBUG:Z = false

.field static final MSG_HIDE_ENTRY_WINDOW:I = 0x3fc

.field static final MSG_SHOW_ENTRY_WINDOW:I = 0x3f2

.field static final TAG:Ljava/lang/String; = "RearGestureView"


# instance fields
.field private mCenterView:Landroid/view/View;

.field private mDownView:Landroid/view/View;

.field final mHandler:Landroid/os/Handler;

.field private mLeftView:Landroid/view/View;

.field private mRightView:Landroid/view/View;

.field private mUpView:Landroid/view/View;

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RearGestureView;->initWindow()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RearGestureView;->mHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method private initWindow()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RearGestureView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 97
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x10900ab

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "entryView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RearGestureView;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 101
    .local v3, "mWindow":Landroid/view/Window;
    invoke-virtual {v3, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RearGestureView;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 105
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x7e2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 106
    const-string v4, "RearGestureView"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    const/16 v4, 0x11

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 110
    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 126
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 128
    invoke-virtual {v3, v7, v7}, Landroid/view/Window;->setLayout(II)V

    .line 131
    const/16 v4, 0x108

    const/16 v5, 0x10a

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    .line 137
    const v4, 0x1020324

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/RearGestureView;->mLeftView:Landroid/view/View;

    .line 138
    const v4, 0x1020323

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/RearGestureView;->mRightView:Landroid/view/View;

    .line 139
    const v4, 0x1020325

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/RearGestureView;->mUpView:Landroid/view/View;

    .line 140
    const v4, 0x1020326

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/RearGestureView;->mDownView:Landroid/view/View;

    .line 141
    const v4, 0x1020322

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/RearGestureView;->mCenterView:Landroid/view/View;

    .line 142
    return-void
.end method

.method private resetViewVisibility()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureView;->mLeftView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureView;->mRightView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureView;->mDownView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureView;->mUpView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureView;->mCenterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    return-void
.end method


# virtual methods
.method public getHeightSize()I
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RearGestureView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 58
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return v1
.end method

.method public getWidthSize()I
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RearGestureView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 53
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    return v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v11, 0x14a

    const/16 v10, 0x12c

    const/16 v9, 0x118

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 289
    :goto_0
    return v4

    .line 205
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RearGestureView;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 206
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RearGestureView;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 209
    .local v0, "height":I
    if-le v0, v3, :cond_0

    const/4 v1, 0x1

    .line 211
    .local v1, "isPortrait":Z
    :goto_1
    const-string v6, "RearGestureView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isPortrait="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v6, p0, Lcom/android/internal/policy/impl/RearGestureView;->mCenterView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget v6, p1, Landroid/os/Message;->arg1:I

    packed-switch v6, :pswitch_data_0

    .line 279
    :goto_2
    const-string v6, "RearGestureView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LayoutParams height: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_7

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RearGestureView;->show()V

    move v4, v5

    .line 281
    goto/16 :goto_0

    .line 210
    .end local v1    # "isPortrait":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isPortrait":Z
    goto :goto_1

    .line 217
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/RearGestureView;->mLeftView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 222
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/RearGestureView;->mRightView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 225
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/RearGestureView;->mUpView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 228
    if-ne v1, v5, :cond_1

    iput v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    :goto_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/RearGestureView;->mUpView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v4, p0, Lcom/android/internal/policy/impl/RearGestureView;->mUpView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 229
    :cond_1
    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4

    .line 234
    :pswitch_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/RearGestureView;->mUpView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 237
    if-ne v1, v5, :cond_2

    const/16 v6, 0x1c2

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 239
    :goto_5
    iget-object v6, p0, Lcom/android/internal/policy/impl/RearGestureView;->mUpView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v4, p0, Lcom/android/internal/policy/impl/RearGestureView;->mUpView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 238
    :cond_2
    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    .line 243
    :pswitch_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/RearGestureView;->mUpView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 246
    if-ne v1, v5, :cond_3

    const/16 v6, 0x24f

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 248
    :goto_6
    iget-object v6, p0, Lcom/android/internal/policy/impl/RearGestureView;->mUpView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v4, p0, Lcom/android/internal/policy/impl/RearGestureView;->mUpView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 247
    :cond_3
    const/16 v6, 0x17c

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_6

    .line 252
    :pswitch_5
    iget-object v6, p0, Lcom/android/internal/policy/impl/RearGestureView;->mDownView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 255
    if-ne v1, v5, :cond_4

    iput v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 257
    :goto_7
    iget-object v6, p0, Lcom/android/internal/policy/impl/RearGestureView;->mDownView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v4, p0, Lcom/android/internal/policy/impl/RearGestureView;->mDownView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 256
    :cond_4
    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_7

    .line 261
    :pswitch_6
    iget-object v6, p0, Lcom/android/internal/policy/impl/RearGestureView;->mDownView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 264
    if-ne v1, v5, :cond_5

    const/16 v6, 0x1c2

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 266
    :goto_8
    iget-object v6, p0, Lcom/android/internal/policy/impl/RearGestureView;->mDownView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v4, p0, Lcom/android/internal/policy/impl/RearGestureView;->mDownView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 265
    :cond_5
    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_8

    .line 270
    :pswitch_7
    iget-object v6, p0, Lcom/android/internal/policy/impl/RearGestureView;->mDownView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 273
    if-ne v1, v5, :cond_6

    const/16 v6, 0x24f

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 275
    :goto_9
    iget-object v6, p0, Lcom/android/internal/policy/impl/RearGestureView;->mDownView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v4, p0, Lcom/android/internal/policy/impl/RearGestureView;->mDownView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 274
    :cond_6
    const/16 v6, 0x17c

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_9

    .line 279
    :cond_7
    const-string v4, ""

    goto/16 :goto_3

    .line 284
    .end local v0    # "height":I
    .end local v1    # "isPortrait":Z
    .end local v3    # "width":I
    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RearGestureView;->resetViewVisibility()V

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RearGestureView;->hide()V

    move v4, v5

    .line 286
    goto/16 :goto_0

    .line 203
    :sswitch_data_0
    .sparse-switch
        0x3f2 -> :sswitch_0
        0x3fc -> :sswitch_1
    .end sparse-switch

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    .line 188
    return-void
.end method

.method public hideGestureWindow()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    return-void
.end method

.method public setGravity(I)V
    .locals 9
    .param p1, "gravity"    # I

    .prologue
    const/16 v8, 0x50

    const/16 v7, 0x30

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RearGestureView;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 77
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v6, v7, :cond_0

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v6, v8, :cond_3

    :cond_0
    move v2, v5

    .line 79
    .local v2, "oldIsVertical":Z
    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 81
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v6, v7, :cond_1

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v6, v8, :cond_4

    :cond_1
    move v1, v5

    .line 83
    .local v1, "newIsVertical":Z
    :goto_1
    if-eq v2, v1, :cond_2

    .line 84
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 85
    .local v3, "tmp":I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 86
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RearGestureView;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 93
    .end local v3    # "tmp":I
    :cond_2
    return-void

    .end local v1    # "newIsVertical":Z
    .end local v2    # "oldIsVertical":Z
    :cond_3
    move v2, v4

    .line 77
    goto :goto_0

    .restart local v2    # "oldIsVertical":Z
    :cond_4
    move v1, v4

    .line 81
    goto :goto_1
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "sizeWidth"    # I
    .param p2, "sizeHeight"    # I

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RearGestureView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 66
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 67
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RearGestureView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 69
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/internal/policy/impl/RearGestureView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 146
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 181
    return-void
.end method

.method public showGestureWindow(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    return-void
.end method
