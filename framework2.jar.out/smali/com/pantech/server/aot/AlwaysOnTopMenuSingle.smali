.class public Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;
.super Lcom/pantech/server/aot/AlwaysOnTopMenu;
.source "AlwaysOnTopMenuSingle.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static final AlwaysOnTopIdList:[Ljava/lang/String;

.field static final BAR_HEIGHT:I = 0x102

.field static final DEBUG:Z = false

.field static final ICON_WIDTH:I = 0x3b

.field static final ITEM_START_ID:I = 0x2

.field static final LAND_BAR_HEIGHT:I = 0xba

.field static final LAND_MARGIN_SIZE:I = 0x25

.field static final LAND_START_MARGIN_SIZE:I = 0x1d

.field static final MARGIN_SIZE:I = 0x2e

.field static final MSG_HIDE_AOT_MENU_WINDOW:I = 0x3fc

.field static final MSG_SHOW_AOT_MENU_WINDOW:I = 0x3f2

.field static final START_MARGIN_SIZE:I = 0x5b

.field static final TABLE_ROW_PADDING:I = 0x2

.field static final TAG:Ljava/lang/String; = "AlwaysOnTopMenuSingle"


# instance fields
.field final mAotList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAotMenuWindow:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

.field mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

.field mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

.field mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field mIsCalling:Z

.field final mPm:Landroid/content/pm/PackageManager;

.field private mWindow:Landroid/view/Window;

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.pantech.app.tdmb/.DmbAotPlayer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.pantech.app.aotdictionary/.AOTDictionary"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.pantech.app.minipen/.miniPen"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p4, "isCalling"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "aotList":Ljava/util/List;, "Ljava/util/List<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/pantech/server/aot/AlwaysOnTopMenu;-><init>(Landroid/content/Context;I)V

    .line 65
    iput-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .line 96
    iput-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mIsCalling:Z

    .line 105
    iput-object p3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotList:Ljava/util/List;

    .line 106
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 107
    const-string v0, "AlwaysOnTopMenuSingle"

    const-string v1, "AlwaysOnTopMenuSingle(): Always on top list is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotMenuWindow:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    .line 111
    iput-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mHandler:Landroid/os/Handler;

    .line 112
    iput-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mPm:Landroid/content/pm/PackageManager;

    .line 125
    :goto_0
    return-void

    .line 117
    :cond_0
    iput-object p0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotMenuWindow:Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;

    .line 118
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mPm:Landroid/content/pm/PackageManager;

    .line 120
    iput-boolean p4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mIsCalling:Z

    .line 122
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->initWindow()V

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 488
    invoke-super {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->dismiss()V

    .line 489
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 521
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 531
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 523
    :sswitch_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->show()V

    goto :goto_0

    .line 527
    :sswitch_1
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->hide()V

    goto :goto_0

    .line 521
    :sswitch_data_0
    .sparse-switch
        0x3f2 -> :sswitch_0
        0x3fc -> :sswitch_1
    .end sparse-switch
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 502
    invoke-super {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->hide()V

    .line 503
    return-void
.end method

.method public hideAotMenuWindow()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 514
    return-void
.end method

.method public initWindow()V
    .locals 10

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 130
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x109002f

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v4, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 132
    .local v5, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->getWindow()Landroid/view/Window;

    move-result-object v7

    iput-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mWindow:Landroid/view/Window;

    .line 134
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    .line 135
    .local v2, "density":F
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 136
    .local v1, "barWidth":I
    const/high16 v7, 0x43810000    # 258.0f

    mul-float/2addr v7, v2

    float-to-int v0, v7

    .line 138
    .local v0, "barHeight":I
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 139
    .local v6, "width":I
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v3, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 140
    .local v3, "height":I
    if-le v6, v3, :cond_0

    .line 141
    const/high16 v7, 0x433a0000    # 186.0f

    mul-float/2addr v7, v2

    float-to-int v0, v7

    .line 144
    :cond_0
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mWindow:Landroid/view/Window;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v5, v8}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    if-eqz v7, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->showAotListArea()V

    .line 154
    :cond_1
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mWindowCallback:Landroid/view/Window$Callback;

    .line 481
    return-void
.end method

.method public setWindowService(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 1
    .param p1, "aotmService"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .line 473
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->showAotListArea()V

    .line 476
    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 495
    invoke-super {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->show()V

    .line 496
    return-void
.end method

.method showAotListArea()V
    .locals 34

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 158
    const-string v30, "AlwaysOnTopMenuSingle"

    const-string v31, "showAotListArea(): AOT List is Alerady loaded !!! "

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v30, v0

    if-nez v30, :cond_2

    .line 163
    const-string v30, "AlwaysOnTopMenuSingle"

    const-string v31, "showAotListArea(): mAotmService is Not initialized !!! "

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mWindow:Landroid/view/Window;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    move-object/from16 v0, v30

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    .line 168
    .local v9, "density":F
    const/high16 v30, 0x426c0000    # 59.0f

    mul-float v30, v30, v9

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    .line 169
    .local v29, "width":I
    const/high16 v30, 0x42380000    # 46.0f

    mul-float v30, v30, v9

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v17, v0

    .line 170
    .local v17, "margin":I
    const/16 v22, 0x5b

    .line 172
    .local v22, "startLeftMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mWindow:Landroid/view/Window;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    move-object/from16 v0, v30

    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 173
    .local v11, "dsp_width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mWindow:Landroid/view/Window;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    move-object/from16 v0, v30

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 174
    .local v10, "dsp_height":I
    const/4 v6, 0x0

    .line 175
    .local v6, "configOrientation":I
    if-le v11, v10, :cond_3

    .line 176
    const/4 v6, 0x1

    .line 177
    const/high16 v30, 0x42140000    # 37.0f

    mul-float v30, v30, v9

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v17, v0

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v15

    .line 179
    .local v15, "length":I
    sget-object v30, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    if-eq v15, v0, :cond_5

    .line 180
    const/high16 v30, 0x426c0000    # 59.0f

    mul-float v30, v30, v9

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    add-int/lit8 v31, v15, -0x1

    mul-int v30, v30, v31

    const/high16 v31, 0x42140000    # 37.0f

    mul-float v31, v31, v9

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    add-int/lit8 v32, v15, -0x2

    mul-int v31, v31, v32

    add-int v30, v30, v31

    sub-int v30, v11, v30

    div-int/lit8 v22, v30, 0x2

    .line 192
    .end local v15    # "length":I
    :cond_3
    :goto_1
    sget-object v30, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    move-object/from16 v0, v30

    array-length v5, v0

    .line 193
    .local v5, "N":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v13, "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mWindow:Landroid/view/Window;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v30

    const v31, 0x1020295

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 196
    .local v27, "textAction":Landroid/widget/TextView;
    new-instance v30, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$1;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 217
    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 218
    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    .line 219
    const/16 v30, 0x2

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    .line 220
    const/16 v30, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 221
    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->requestFocus()Z

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mWindow:Landroid/view/Window;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v30

    const v31, 0x1020296

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 224
    .local v21, "smartVoice":Landroid/widget/TextView;
    new-instance v30, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$2;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const/16 v30, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 247
    const/16 v30, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 248
    const/16 v30, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    .line 249
    const/16 v30, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    .line 250
    const/16 v30, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 252
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v5, :cond_7

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    move-object/from16 v30, v0

    sget-object v31, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v31, v31, v12

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 255
    .local v20, "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-eqz v20, :cond_4

    invoke-virtual/range {v20 .. v20}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getIsDisableListResourceId()I

    move-result v30

    if-eqz v30, :cond_6

    .line 252
    :cond_4
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 182
    .end local v5    # "N":I
    .end local v12    # "i":I
    .end local v13    # "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    .end local v20    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    .end local v21    # "smartVoice":Landroid/widget/TextView;
    .end local v27    # "textAction":Landroid/widget/TextView;
    .restart local v15    # "length":I
    :cond_5
    const/high16 v30, 0x41e80000    # 29.0f

    mul-float v30, v30, v9

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v22, v0

    goto/16 :goto_1

    .line 259
    .end local v15    # "length":I
    .restart local v5    # "N":I
    .restart local v12    # "i":I
    .restart local v13    # "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    .restart local v20    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    .restart local v21    # "smartVoice":Landroid/widget/TextView;
    .restart local v27    # "textAction":Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 262
    .end local v20    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_7
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    new-array v0, v0, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 263
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 265
    const/16 v18, 0x0

    .line 266
    .local v18, "menuView":Landroid/widget/LinearLayout;
    const/16 v26, 0x0

    .line 267
    .local v26, "table_menuView":Landroid/widget/TableLayout;
    new-instance v23, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 268
    .local v23, "tRow1":Landroid/widget/TableRow;
    new-instance v24, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 269
    .local v24, "tRow2":Landroid/widget/TableRow;
    const/4 v7, 0x3

    .line 270
    .local v7, "countColumn":I
    const/4 v8, 0x2

    .line 272
    .local v8, "countRow":I
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v6, v0, :cond_c

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mWindow:Landroid/view/Window;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v30

    const v31, 0x102029f

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .end local v18    # "menuView":Landroid/widget/LinearLayout;
    check-cast v18, Landroid/widget/LinearLayout;

    .line 274
    .restart local v18    # "menuView":Landroid/widget/LinearLayout;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 275
    const/16 v30, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 285
    :goto_4
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v5, :cond_0

    .line 286
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 287
    .local v14, "item":Landroid/widget/TextView;
    new-instance v25, Landroid/widget/TableRow$LayoutParams;

    const/16 v30, -0x2

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 288
    .local v25, "table_lp":Landroid/widget/TableRow$LayoutParams;
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v30, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 290
    .local v16, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v6, v0, :cond_8

    add-int/lit8 v30, v5, -0x1

    move/from16 v0, v30

    if-ge v12, v0, :cond_8

    .line 291
    if-nez v12, :cond_d

    .line 292
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v30

    move/from16 v3, v17

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 297
    :cond_8
    :goto_6
    if-nez v6, :cond_9

    add-int/lit8 v30, v12, 0x1

    rem-int v30, v30, v7

    if-eqz v30, :cond_9

    .line 298
    add-int/lit8 v30, v12, 0x1

    rem-int v30, v30, v7

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    .line 299
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v22

    move/from16 v2, v30

    move/from16 v3, v17

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 304
    :cond_9
    :goto_7
    add-int/lit8 v30, v12, 0x2

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setId(I)V

    .line 305
    const/16 v30, 0x1

    const/high16 v31, 0x41300000    # 11.0f

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 306
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 307
    const/16 v30, 0x33

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 308
    invoke-virtual {v14}, Landroid/widget/TextView;->setSingleLine()V

    .line 309
    sget-object v30, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 310
    const/high16 v30, 0x40a00000    # 5.0f

    mul-float v30, v30, v9

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x41500000    # 13.0f

    mul-float v31, v31, v9

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 313
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v6, v0, :cond_f

    .line 314
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 315
    add-int/lit8 v30, v5, 0x1

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    .line 325
    :goto_8
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 329
    sget-object v30, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    const/16 v31, 0x0

    aget-object v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    invoke-virtual/range {v31 .. v31}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    .line 330
    const v30, 0x10406de

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v30, v0

    sget-object v31, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    const/16 v32, 0x0

    aget-object v31, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isAlwaysOnTopRunningID(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x10800da

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    :cond_a
    :goto_9
    new-instance v30, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle$3;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;)V

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v6, v0, :cond_1c

    .line 436
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 285
    :cond_b
    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 278
    .end local v14    # "item":Landroid/widget/TextView;
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v25    # "table_lp":Landroid/widget/TableRow$LayoutParams;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mWindow:Landroid/view/Window;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v30

    const v31, 0x102029f

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .end local v26    # "table_menuView":Landroid/widget/TableLayout;
    check-cast v26, Landroid/widget/TableLayout;

    .line 279
    .restart local v26    # "table_menuView":Landroid/widget/TableLayout;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 280
    const/16 v30, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setMotionEventSplittingEnabled(Z)V

    .line 281
    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setMotionEventSplittingEnabled(Z)V

    .line 282
    const/16 v30, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setMotionEventSplittingEnabled(Z)V

    goto/16 :goto_4

    .line 294
    .restart local v14    # "item":Landroid/widget/TextView;
    .restart local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v25    # "table_lp":Landroid/widget/TableRow$LayoutParams;
    :cond_d
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v17

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_6

    .line 301
    :cond_e
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v17

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_7

    .line 317
    :cond_f
    add-int/lit8 v30, v12, 0x1

    move/from16 v0, v30

    if-gt v0, v7, :cond_10

    .line 318
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 319
    add-int/lit8 v30, v12, 0x2

    add-int v30, v30, v7

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    goto/16 :goto_8

    .line 321
    :cond_10
    add-int/lit8 v30, v12, 0x2

    sub-int v30, v30, v7

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 322
    add-int/lit8 v30, v5, 0x1

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    goto/16 :goto_8

    .line 335
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x10800d8

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 338
    :cond_12
    sget-object v30, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    const/16 v31, 0x1

    aget-object v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    invoke-virtual/range {v31 .. v31}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 339
    const v30, 0x10406eb

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v30, v0

    sget-object v31, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    const/16 v32, 0x1

    aget-object v31, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isAlwaysOnTopRunningID(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x10800e7

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 344
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x10800e5

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 347
    :cond_14
    sget-object v30, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    const/16 v31, 0x2

    aget-object v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    invoke-virtual/range {v31 .. v31}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    .line 348
    const v30, 0x10406e2

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v30, v0

    sget-object v31, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    const/16 v32, 0x2

    aget-object v31, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isAlwaysOnTopRunningID(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_15

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x10800ec

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 353
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x10800ea

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 356
    :cond_16
    sget-object v30, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    const/16 v31, 0x3

    aget-object v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    invoke-virtual/range {v31 .. v31}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_18

    .line 357
    const v30, 0x10406ee

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v30, v0

    sget-object v31, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    const/16 v32, 0x3

    aget-object v31, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isAlwaysOnTopRunningID(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_17

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x10800de

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 362
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x10800dc

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 365
    :cond_18
    sget-object v30, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    const/16 v31, 0x4

    aget-object v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    invoke-virtual/range {v31 .. v31}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1a

    .line 366
    const v30, 0x10406e0

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v30, v0

    sget-object v31, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    const/16 v32, 0x4

    aget-object v31, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isAlwaysOnTopRunningID(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_19

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x10800d4

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 371
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x10800d2

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 374
    :cond_1a
    sget-object v30, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    const/16 v31, 0x5

    aget-object v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    invoke-virtual/range {v31 .. v31}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 375
    const v30, 0x10406ec

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v30, v0

    sget-object v31, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->AlwaysOnTopIdList:[Ljava/lang/String;

    const/16 v32, 0x5

    aget-object v31, v31, v32

    invoke-virtual/range {v30 .. v31}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isAlwaysOnTopRunningID(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1b

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x10800e2

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 380
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x10800e0

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 440
    :cond_1c
    const/16 v28, 0x0

    .line 442
    .local v28, "tl_lp":Landroid/widget/TableLayout$LayoutParams;
    add-int/lit8 v30, v12, 0x1

    move/from16 v0, v30

    if-gt v0, v7, :cond_1e

    .line 443
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    :goto_b
    add-int/lit8 v30, v12, 0x1

    move/from16 v0, v30

    if-eq v0, v7, :cond_1d

    if-gt v5, v7, :cond_1f

    add-int/lit8 v30, v5, -0x1

    move/from16 v0, v30

    if-ne v12, v0, :cond_1f

    .line 450
    :cond_1d
    new-instance v28, Landroid/widget/TableLayout$LayoutParams;

    .end local v28    # "tl_lp":Landroid/widget/TableLayout$LayoutParams;
    const/16 v30, -0x1

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    .line 451
    .restart local v28    # "tl_lp":Landroid/widget/TableLayout$LayoutParams;
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    new-instance v19, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 454
    .local v19, "padding":Landroid/view/View;
    new-instance v30, Landroid/view/ViewGroup$LayoutParams;

    const/16 v31, -0x1

    const/high16 v32, 0x40000000    # 2.0f

    mul-float v32, v32, v9

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_a

    .line 446
    .end local v19    # "padding":Landroid/view/View;
    :cond_1e
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 457
    :cond_1f
    add-int/lit8 v30, v12, 0x1

    const/16 v31, 0x6

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_20

    add-int/lit8 v30, v5, -0x1

    move/from16 v0, v30

    if-ne v12, v0, :cond_b

    .line 458
    :cond_20
    new-instance v28, Landroid/widget/TableLayout$LayoutParams;

    .end local v28    # "tl_lp":Landroid/widget/TableLayout$LayoutParams;
    const/16 v30, -0x1

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    .line 459
    .restart local v28    # "tl_lp":Landroid/widget/TableLayout$LayoutParams;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a
.end method

.method public showAotMenuWindow()Z
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuSingle;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 508
    const/4 v0, 0x1

    return v0
.end method
