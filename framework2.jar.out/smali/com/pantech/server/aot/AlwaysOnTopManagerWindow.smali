.class public Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;
.super Landroid/app/Dialog;
.source "AlwaysOnTopManagerWindow.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static final DEBUG:Z = true

.field static final MSG_HIDE_ENTRY_WINDOW:I = 0x3fc

.field static final MSG_SHOW_ENTRY_WINDOW:I = 0x3f2

.field static final TAG:Ljava/lang/String; = "AlwaysOnTopManagerService"


# instance fields
.field mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

.field final mHandler:Landroid/os/Handler;

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .line 42
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->initWindow()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method private initWindow()V
    .locals 10

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 93
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x1090029

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "entryView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 97
    .local v5, "mWindow":Landroid/view/Window;
    invoke-virtual {v5, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 101
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x7e2

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 102
    const-string v7, "AlwaysOnTopManagerWindow"

    invoke-virtual {v4, v7}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    const/16 v7, 0x53

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 106
    const v7, 0x3dcccccd    # 0.1f

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 108
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    .line 109
    .local v0, "density":F
    const/high16 v7, 0x42860000    # 67.0f

    mul-float/2addr v7, v0

    float-to-int v6, v7

    .line 110
    .local v6, "width":I
    const/high16 v7, 0x41a00000    # 20.0f

    mul-float/2addr v7, v0

    float-to-int v2, v7

    .line 113
    .local v2, "height":I
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 114
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 122
    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 123
    const/16 v7, 0x108

    const/16 v8, 0x10a

    invoke-virtual {v5, v7, v8}, Landroid/view/Window;->setFlags(II)V

    .line 128
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 141
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 143
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_1

    .line 145
    const-string v4, "AlwaysOnTopManagerService"

    const-string v5, "dispatchTouchEvent() : Pen Down !!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 146
    :cond_1
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 148
    const-string v4, "AlwaysOnTopManagerService"

    const-string v5, "dispatchTouchEvent() : Pen UP !!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 151
    .local v2, "mRect":Landroid/graphics/Rect;
    const v4, 0x102028b

    invoke-virtual {p0, v4}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 152
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 154
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0xa

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 157
    const-string v4, "AlwaysOnTopManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rect("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v4, "AlwaysOnTopManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "touch("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    if-eqz v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v4}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->showAlwaysOnTopPicker()V

    goto/16 :goto_0
.end method

.method public getHeightSize()I
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 54
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return v1
.end method

.method public getWidthSize()I
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 49
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    return v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 194
    const-string v1, "AlwaysOnTopManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage msg.what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 206
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 198
    :sswitch_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->show()V

    goto :goto_0

    .line 202
    :sswitch_1
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->hide()V

    goto :goto_0

    .line 196
    :sswitch_data_0
    .sparse-switch
        0x3f2 -> :sswitch_0
        0x3fc -> :sswitch_1
    .end sparse-switch
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 180
    const-string v0, "AlwaysOnTopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AotM Window will be hidden : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    .line 182
    return-void
.end method

.method public hideAotmWindow()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 190
    return-void
.end method

.method public setGravity(I)V
    .locals 11
    .param p1, "gravity"    # I

    .prologue
    const/16 v10, 0x50

    const/16 v9, 0x30

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    const-string v6, "AlwaysOnTopManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setGravity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 73
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v6, v9, :cond_0

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v6, v10, :cond_3

    :cond_0
    move v2, v5

    .line 75
    .local v2, "oldIsVertical":Z
    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 77
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v6, v9, :cond_1

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v6, v10, :cond_4

    :cond_1
    move v1, v5

    .line 79
    .local v1, "newIsVertical":Z
    :goto_1
    if-eq v2, v1, :cond_2

    .line 80
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 81
    .local v3, "tmp":I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 82
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 85
    const-string v4, "AlwaysOnTopManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setGravity: width"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 89
    .end local v3    # "tmp":I
    :cond_2
    return-void

    .end local v1    # "newIsVertical":Z
    .end local v2    # "oldIsVertical":Z
    :cond_3
    move v2, v4

    .line 73
    goto :goto_0

    .restart local v2    # "oldIsVertical":Z
    :cond_4
    move v1, v4

    .line 77
    goto :goto_1
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "sizeWidth"    # I
    .param p2, "sizeHeight"    # I

    .prologue
    .line 59
    const-string v1, "AlwaysOnTopManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 62
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 63
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 64
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 65
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->mWindowCallback:Landroid/view/Window$Callback;

    .line 136
    return-void
.end method

.method public setWindowService(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 0
    .param p1, "aotmService"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .line 132
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 173
    const-string v0, "AlwaysOnTopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AotM Window will be shown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 175
    return-void
.end method

.method public showAotmWindow()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 186
    return-void
.end method
