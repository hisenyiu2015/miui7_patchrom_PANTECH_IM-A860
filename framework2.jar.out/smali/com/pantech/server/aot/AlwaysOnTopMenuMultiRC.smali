.class public Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;
.super Lcom/pantech/server/aot/AlwaysOnTopMenu;
.source "AlwaysOnTopMenuMultiRC.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final AlwaysOnTopIdList:[Ljava/lang/String;

.field static final DEBUG:Z = true

.field static final ICON_WIDTH:I = 0x3f

.field static final LAND_MARGIN_SIZE:I = 0x70

.field static final MARGIN_SIZE:I = 0x15

.field static final MSG_HIDE_AOT_MENU_WINDOW:I = 0x3fc

.field static final MSG_RELAYOUT_AOT_MENU_WINDOW:I = 0x410

.field static final MSG_SHOW_AOT_MENU_WINDOW:I = 0x3f2

.field static final SECRET_CONTENT_URI:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String; = "AlwaysOnTopMenuMultiRC"


# instance fields
.field AOT_ITEMS_PER_PAGE:I

.field AOT_ITEM_PAGES:I

.field ITEM_START_ID:I

.field private aotItemClickListener:Landroid/view/View$OnClickListener;

.field private mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

.field private mAotHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/server/aot/menu/AotItem;",
            ">;"
        }
    .end annotation
.end field

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

.field private mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

.field final mAotMenuWindow:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

.field private mAotOrder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

.field mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

.field mContext:Landroid/content/Context;

.field final mDockItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mDockItemRunningMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mDockTitleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstPage:Landroid/widget/LinearLayout;

.field final mHandler:Landroid/os/Handler;

.field mIsCalling:Z

.field mIsEmptyItem:Z

.field private mLeftMoreImage:Landroid/widget/ImageView;

.field final mPm:Landroid/content/pm/PackageManager;

.field private mRightMoreImage:Landroid/widget/ImageView;

.field private mSecondPage:Landroid/widget/LinearLayout;

.field private mSecretPackageNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThirdPage:Landroid/widget/LinearLayout;

.field private mWindow:Landroid/view/Window;

.field mWindowCallback:Landroid/view/Window$Callback;

.field private pageTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "content://com.pantech.app.secret.settings/table_secret_apps_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->SECRET_CONTENT_URI:Landroid/net/Uri;

    .line 109
    invoke-static {}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getAlwaysOnTopList()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Z)V
    .locals 5
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
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/pantech/server/aot/AlwaysOnTopMenu;-><init>(Landroid/content/Context;I)V

    .line 89
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .line 103
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEM_PAGES:I

    .line 106
    iput v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->ITEM_START_ID:I

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    .line 113
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.minisketch/.main.miniSketch"

    const v2, 0x10406e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    const v2, 0x10406de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v2, 0x10406e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    const v2, 0x10406e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdialer/.PCUAOTDialer"

    const v2, 0x10406e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotcalculator/.AOTCalculator"

    const v2, 0x10406e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdictionary/.AOTDictionary"

    const v2, 0x10406e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v2, 0x10406e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v2, 0x10406df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotfolder/.AOTFolder"

    const v2, 0x10406e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    .line 128
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.minisketch/.main.miniSketch"

    const v2, 0x10800df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    const v2, 0x10800d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v2, 0x10800e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    const v2, 0x10800cd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdialer/.PCUAOTDialer"

    const v2, 0x10800cf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotcalculator/.AOTCalculator"

    const v2, 0x10800c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdictionary/.AOTDictionary"

    const v2, 0x10800d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v2, 0x10800db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v2, 0x10800e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotfolder/.AOTFolder"

    const v2, 0x10800d5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    .line 143
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.minisketch/.main.miniSketch"

    const v2, 0x10800e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    const v2, 0x10800d9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v2, 0x10800eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    const v2, 0x10800ce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdialer/.PCUAOTDialer"

    const v2, 0x10800d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotcalculator/.AOTCalculator"

    const v2, 0x10800ca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdictionary/.AOTDictionary"

    const v2, 0x10800d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v2, 0x10800dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v2, 0x10800e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotfolder/.AOTFolder"

    const v2, 0x10800d6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 163
    iput-boolean v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mIsCalling:Z

    .line 164
    iput-boolean v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mIsEmptyItem:Z

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecretPackageNameList:Ljava/util/ArrayList;

    .line 329
    new-instance v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$1;

    invoke-direct {v0, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$1;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;)V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->pageTouchListener:Landroid/view/View$OnTouchListener;

    .line 539
    new-instance v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$2;

    invoke-direct {v0, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$2;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;)V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->aotItemClickListener:Landroid/view/View$OnClickListener;

    .line 185
    iput-object p3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotList:Ljava/util/List;

    .line 186
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 187
    const-string v0, "AlwaysOnTopMenuMultiRC"

    const-string v1, "AlwaysOnTopMenuMultiRC(): Always on top list is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotMenuWindow:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    .line 191
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mHandler:Landroid/os/Handler;

    .line 192
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mPm:Landroid/content/pm/PackageManager;

    .line 203
    :goto_0
    return-void

    .line 197
    :cond_0
    iput-object p0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotMenuWindow:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    .line 198
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mPm:Landroid/content/pm/PackageManager;

    .line 200
    iput-boolean p4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mIsCalling:Z

    .line 202
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private checkDBSync(Ljava/util/HashMap;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "secureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v9, 0x1

    .line 704
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 705
    .local v0, "dbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 706
    .local v1, "hashSize":I
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 707
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 708
    .local v4, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 709
    .local v3, "isAdd":Z
    const-string v8, "AlwaysOnTopMenuMultiRC"

    const-string v10, "checkDBSync()"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    invoke-virtual {v8, v0, v9}, Lcom/pantech/server/aot/menu/AotListFile;->loadListIndex(Ljava/util/HashMap;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 711
    const/4 v8, 0x0

    .line 730
    :goto_0
    return v8

    .line 714
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 715
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 716
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 717
    .local v6, "order":I
    const-string v8, "AlwaysOnTopMenuMultiRC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "str:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",order:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    if-eqz v6, :cond_1

    .line 719
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    .line 720
    const-string v8, "AlwaysOnTopMenuMultiRC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readd item:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",Index:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const/4 v3, 0x1

    .line 714
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 727
    .end local v6    # "order":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 728
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    invoke-virtual {v8, v0}, Lcom/pantech/server/aot/menu/AotListFile;->saveListIndex(Ljava/util/HashMap;)V

    :cond_3
    move v8, v9

    .line 730
    goto :goto_0
.end method

.method private getAlwaysOnTopSecureMap()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 658
    new-instance v6, Lcom/pantech/server/aot/menu/AotListFile;

    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    const-string v9, "AotMenuSecure"

    invoke-direct {v6, v8, v9}, Lcom/pantech/server/aot/menu/AotListFile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 659
    .local v6, "testFile":Lcom/pantech/server/aot/menu/AotListFile;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 660
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v8, "AlwaysOnTopMenuMultiRC"

    const-string v9, "getAlwaysOnTopSecureMap()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 680
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->loadSecretAppsFromDb()V

    .line 682
    :cond_0
    invoke-static {}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getAlwaysOnTopList()[Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "alwaysOnTopIdList":[Ljava/lang/String;
    array-length v0, v1

    .line 684
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 685
    aget-object v8, v1, v3

    aget-object v9, v1, v3

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 686
    .local v5, "packageName":Ljava/lang/String;
    const-string v8, "AlwaysOnTopMenuMultiRC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package Name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 688
    aget-object v8, v1, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 690
    :cond_1
    aget-object v8, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 694
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v8, "persist.launcher2.aotfolder"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    .line 695
    .local v2, "aotFolderExist":Z
    :goto_2
    if-nez v2, :cond_3

    .line 696
    const-string v7, "AlwaysOnTopMenuMultiRC"

    const-string v8, "remove aotfolder item!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v7, "com.pantech.app.aotfolder/.AOTFolder"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    :cond_3
    return-object v4

    .end local v2    # "aotFolderExist":Z
    :cond_4
    move v2, v7

    .line 694
    goto :goto_2
.end method

.method private initDB()V
    .locals 11

    .prologue
    .line 734
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 735
    .local v5, "mAOTDBList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v1, "aotList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->getAlwaysOnTopSecureMap()Ljava/util/HashMap;

    move-result-object v7

    .line 738
    .local v7, "secureAOTMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, v7}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->checkDBSync(Ljava/util/HashMap;)Z

    .line 740
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    invoke-virtual {v8, v5}, Lcom/pantech/server/aot/menu/AotListFile;->loadListIndex(Ljava/util/HashMap;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 741
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 743
    .local v4, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_5

    .line 744
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 745
    .local v3, "id":Ljava/lang/String;
    const-string v8, "AlwaysOnTopMenuMultiRC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initDB id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    if-eqz v7, :cond_0

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_0

    .line 749
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v8, v8, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 750
    .local v6, "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getIsDisableListResourceId()I

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getAotMotherAppPkg()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->isSecureApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 743
    .end local v6    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 754
    .restart local v6    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 758
    .end local v2    # "i":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v6    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_2
    sget-object v8, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    array-length v0, v8

    .line 759
    .local v0, "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 760
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v8, v8, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    sget-object v9, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 762
    .restart local v6    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getIsDisableListResourceId()I

    move-result v8

    if-eqz v8, :cond_4

    .line 759
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 766
    :cond_4
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 770
    .end local v0    # "N":I
    .end local v6    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 772
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    array-length v8, v8

    iget v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    div-int v9, v8, v9

    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    array-length v8, v8

    iget v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    rem-int/2addr v8, v10

    if-nez v8, :cond_6

    const/4 v8, 0x0

    :goto_4
    add-int/2addr v8, v9

    iput v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEM_PAGES:I

    .line 773
    const-string v8, "AlwaysOnTopMenuMultiRC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AOT_ITEM_PAGES:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEM_PAGES:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void

    .line 772
    :cond_6
    const/4 v8, 0x1

    goto :goto_4
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 218
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090031

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 220
    .local v2, "rootView":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->getWindow()Landroid/view/Window;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    .line 222
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 223
    .local v3, "width":I
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 225
    .local v0, "height":I
    if-le v3, v0, :cond_0

    .line 226
    const/4 v4, 0x6

    iput v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    .line 227
    const/4 v4, 0x2

    iput v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEM_PAGES:I

    .line 233
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotHash:Ljava/util/HashMap;

    .line 234
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotOrder:Ljava/util/HashMap;

    .line 236
    new-instance v4, Lcom/pantech/server/aot/menu/AotListFile;

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    const-string v6, "AotMenu"

    invoke-direct {v4, v5, v6}, Lcom/pantech/server/aot/menu/AotListFile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    .line 238
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->initDB()V

    .line 240
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    .line 244
    const v4, 0x102029b

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    .line 245
    const v4, 0x102029c

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecondPage:Landroid/widget/LinearLayout;

    .line 246
    const v4, 0x102029d

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mThirdPage:Landroid/widget/LinearLayout;

    .line 249
    const-string v4, "AlwaysOnTopMenuMultiRC"

    const-string v5, "initView(): Menu Window Init. "

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 229
    :cond_0
    const/4 v4, 0x4

    iput v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    .line 230
    const/4 v4, 0x3

    iput v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEM_PAGES:I

    goto :goto_0
.end method

.method private isSecureApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    const/4 v0, 0x1

    .line 654
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadSecretAppsFromDb()V
    .locals 10

    .prologue
    .line 595
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 597
    const-string v0, "persist.vega.secretmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 598
    const-string v0, "AlwaysOnTopMenuMultiRC"

    const-string v1, "It is now secret mode... All AOT App is shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :goto_0
    return-void

    .line 602
    :cond_0
    const/4 v7, 0x0

    .line 604
    .local v7, "secretAppDBCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->SECRET_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 611
    :goto_1
    :try_start_1
    const-string v0, "package_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 613
    .local v9, "secret_pkg_name_column":I
    const-string v0, "AlwaysOnTopMenuMultiRC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSecretAppDBCursor.getColumnIndexOrThrow Success package_name Column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 615
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 617
    :try_start_2
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 618
    .local v8, "secretPkgName":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 619
    const-string v0, "AlwaysOnTopMenuMultiRC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " add SecretDBList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_1
    const-string v0, "AlwaysOnTopMenuMultiRC"

    const-string v1, "mSecretAppDBCursor read Success secret_pkg_name_column\'s String"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 627
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 631
    .end local v8    # "secretPkgName":Ljava/lang/String;
    .end local v9    # "secret_pkg_name_column":I
    :catch_0
    move-exception v6

    .line 632
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "AlwaysOnTopMenuMultiRC"

    const-string v1, "Read SECRET_CONTENT_URI error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 634
    if-eqz v7, :cond_2

    .line 635
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 641
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    const/4 v7, 0x0

    .line 642
    goto :goto_0

    .line 605
    :catch_1
    move-exception v6

    .line 606
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v0, "AlwaysOnTopMenuMultiRC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SECRET_CONTENT_URI loading cursor interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 624
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v9    # "secret_pkg_name_column":I
    :catch_2
    move-exception v6

    .line 625
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v0, "AlwaysOnTopMenuMultiRC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SECRET_CONTENT_URI loading interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 627
    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 634
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "secret_pkg_name_column":I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 635
    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 638
    :catch_3
    move-exception v6

    .line 639
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v0, "AlwaysOnTopMenuMultiRC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SECRET_CONTENT_URI loading cursor interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 627
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v9    # "secret_pkg_name_column":I
    :catchall_1
    move-exception v0

    :try_start_9
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 634
    :cond_4
    if-eqz v7, :cond_2

    .line 635
    :try_start_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3
.end method

.method private setTextAndResource(Lcom/pantech/server/aot/menu/AotItem;I)V
    .locals 5
    .param p1, "aotView"    # Lcom/pantech/server/aot/menu/AotItem;
    .param p2, "index"    # I

    .prologue
    .line 506
    if-eqz p1, :cond_0

    .line 507
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 509
    const-string v3, "AlwaysOnTopMenuMultiRC"

    const-string v4, "app id is null!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 513
    .restart local v0    # "id":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 516
    .local v2, "resId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v3, v0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isAlwaysOnTopRunningID(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 517
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemRunningMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 518
    .local v1, "imgId":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 519
    const v3, 0x10800d9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 528
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 529
    const v3, 0x10406dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 531
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/pantech/server/aot/menu/AotItem;->setText(I)V

    .line 532
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/pantech/server/aot/menu/AotItem;->setDrawableResource(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 522
    .end local v1    # "imgId":Ljava/lang/Integer;
    :cond_4
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockItemMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 523
    .restart local v1    # "imgId":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 524
    const v3, 0x10800d7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 273
    const-string v0, "AlwaysOnTopMenuMultiRC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AotM Window will be dismiss : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-super {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->dismiss()V

    .line 276
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 309
    const-string v1, "AlwaysOnTopMenuMultiRC"

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

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 326
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 313
    :sswitch_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->show()V

    goto :goto_0

    .line 317
    :sswitch_1
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->hide()V

    goto :goto_0

    .line 321
    :sswitch_2
    const-string v1, "AlwaysOnTopMenuMultiRC"

    const-string v2, "MSG_RELAYOUT_AOT_MENU_WINDOW!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 311
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f2 -> :sswitch_0
        0x3fc -> :sswitch_1
        0x410 -> :sswitch_2
    .end sparse-switch
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 288
    const-string v0, "AlwaysOnTopMenuMultiRC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AotM Window will be hidden : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    invoke-super {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->hide()V

    .line 291
    return-void
.end method

.method public hideAotMenuWindow()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    return-void
.end method

.method public initWindow()V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->initView()V

    .line 208
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->rearrangeAotItems()V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->rearrangeAotItems_Old()V

    goto :goto_0
.end method

.method public makeAotItemOrder(Landroid/view/View;I)I
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 339
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 341
    check-cast v2, Landroid/view/ViewGroup;

    .line 342
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 344
    .local v1, "numChild":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 346
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->makeAotItemOrder(Landroid/view/View;I)I

    move-result p2

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    .end local v0    # "i":I
    .end local v1    # "numChild":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_0
    instance-of v3, p1, Lcom/pantech/server/aot/menu/AotItem;

    if-eqz v3, :cond_1

    .line 352
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotOrder:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v3, "AlwaysOnTopMenuMultiRC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeAotItemOrder : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    add-int/lit8 p2, p2, 0x1

    .line 356
    :cond_1
    return p2
.end method

.method public rearrangeAotItems()V
    .locals 33

    .prologue
    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v5, v0

    .line 778
    .local v5, "N":I
    const/4 v11, 0x0

    .line 780
    .local v11, "focus_index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v29, v0

    if-nez v29, :cond_1

    .line 781
    const-string v29, "AlwaysOnTopMenuMultiRC"

    const-string v30, "rearrangeAotItems(): mAotmService is Not initialized !!! "

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    if-nez v5, :cond_2

    .line 789
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mIsEmptyItem:Z

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x10406f1

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 794
    :cond_2
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mIsEmptyItem:Z

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->size()I

    move-result v29

    if-nez v29, :cond_8

    .line 801
    const/4 v13, 0x0

    .local v13, "i":I
    move v12, v11

    .end local v11    # "focus_index":I
    .local v12, "focus_index":I
    :goto_1
    if-ge v13, v5, :cond_7

    .line 802
    new-instance v15, Lcom/pantech/server/aot/menu/AotItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;-><init>(Landroid/content/Context;)V

    .line 804
    .local v15, "itemView":Lcom/pantech/server/aot/menu/AotItem;
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "focus_index":I
    .restart local v11    # "focus_index":I
    invoke-virtual {v15, v12}, Lcom/pantech/server/aot/menu/AotItem;->setId(I)V

    .line 805
    if-nez v13, :cond_3

    .line 806
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusLeftId(I)V

    .line 811
    :goto_2
    add-int/lit8 v29, v13, 0x1

    move/from16 v0, v29

    if-lt v0, v5, :cond_4

    .line 812
    add-int/lit8 v29, v11, -0x1

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusRightId(I)V

    .line 817
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v13, v0, :cond_5

    .line 818
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusUpId(I)V

    .line 822
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v29, v0

    add-int v29, v29, v13

    move/from16 v0, v29

    if-lt v0, v5, :cond_6

    .line 823
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->ITEM_START_ID:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    add-int v29, v29, v5

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusDownId(I)V

    .line 828
    :goto_5
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setFocusable(Z)V

    .line 830
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->setTextAndResource(Lcom/pantech/server/aot/menu/AotItem;I)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->aotItemClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v29, v0

    aget-object v29, v29, v13

    invoke-virtual/range {v29 .. v29}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setTag(Ljava/lang/Object;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v30, v0

    aget-object v30, v30, v13

    invoke-virtual/range {v30 .. v30}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v30, v0

    aget-object v30, v30, v13

    invoke-virtual/range {v30 .. v30}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v30

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    const-string v29, "AlwaysOnTopMenuMultiRC"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "rearrange : put Hash - "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v13

    invoke-virtual/range {v31 .. v31}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    add-int/lit8 v13, v13, 0x1

    move v12, v11

    .end local v11    # "focus_index":I
    .restart local v12    # "focus_index":I
    goto/16 :goto_1

    .line 809
    .end local v12    # "focus_index":I
    .restart local v11    # "focus_index":I
    :cond_3
    add-int/lit8 v29, v11, -0x2

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusLeftId(I)V

    goto/16 :goto_2

    .line 815
    :cond_4
    invoke-virtual {v15, v11}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusRightId(I)V

    goto/16 :goto_3

    .line 820
    :cond_5
    add-int/lit8 v29, v11, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusUpId(I)V

    goto/16 :goto_4

    .line 826
    :cond_6
    add-int/lit8 v29, v11, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusDownId(I)V

    goto/16 :goto_5

    .end local v11    # "focus_index":I
    .end local v15    # "itemView":Lcom/pantech/server/aot/menu/AotItem;
    .restart local v12    # "focus_index":I
    :cond_7
    move v11, v12

    .line 841
    .end local v12    # "focus_index":I
    .end local v13    # "i":I
    .restart local v11    # "focus_index":I
    :cond_8
    const/16 v27, 0x0

    .line 842
    .local v27, "vg":Landroid/view/ViewGroup;
    const/16 v20, 0x0

    .line 843
    .local v20, "nIndex":I
    const-string v29, "AlwaysOnTopMenuMultiRC"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "rearrange :: maxCursor = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    move-object/from16 v0, v29

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    .line 846
    .local v8, "density":F
    const/high16 v29, 0x427c0000    # 63.0f

    mul-float v29, v29, v8

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v28, v0

    .line 847
    .local v28, "width":I
    const/high16 v29, 0x41a80000    # 21.0f

    mul-float v29, v29, v8

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v18, v0

    .line 850
    .local v18, "margin":I
    const/high16 v29, 0x41a00000    # 20.0f

    mul-float v29, v29, v8

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v16, v0

    .line 851
    .local v16, "lastpagebottom":I
    const/high16 v29, 0x40800000    # 4.0f

    mul-float v29, v29, v8

    move/from16 v0, v29

    float-to-int v6, v0

    .line 852
    .local v6, "compagebottom":I
    const/high16 v29, 0x428c0000    # 70.0f

    mul-float v29, v29, v8

    move/from16 v0, v29

    float-to-int v14, v0

    .line 853
    .local v14, "icon_height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v23

    .line 854
    .local v23, "paddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v21

    .line 855
    .local v21, "paddingLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v22

    .line 857
    .local v22, "paddingRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    move-object/from16 v0, v29

    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 858
    .local v10, "dsp_width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    move-object/from16 v0, v29

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 859
    .local v9, "dsp_height":I
    if-le v10, v9, :cond_9

    .line 860
    const/16 v18, 0x70

    .line 861
    const/high16 v29, 0x41400000    # 12.0f

    mul-float v29, v29, v8

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v16, v0

    .line 862
    const/high16 v29, 0x40400000    # 3.0f

    mul-float v29, v29, v8

    move/from16 v0, v29

    float-to-int v6, v0

    .line 865
    :cond_9
    const/4 v7, 0x0

    .line 866
    .local v7, "curIndex":I
    const/16 v19, 0x0

    .local v19, "nCursor":I
    :goto_6
    move/from16 v0, v19

    if-ge v0, v5, :cond_0

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v30, v0

    aget-object v30, v30, v19

    invoke-virtual/range {v30 .. v30}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/pantech/server/aot/menu/AotItem;

    .line 872
    .local v26, "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    if-nez v26, :cond_a

    .line 873
    const-string v29, "AlwaysOnTopMenuMultiRC"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "sourceView is null!!:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 877
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v29, v0

    rem-int v20, v7, v29

    .line 879
    add-int/lit8 v29, v5, -0x1

    move/from16 v0, v29

    if-lt v7, v0, :cond_c

    .line 880
    move/from16 v24, v16

    .line 884
    .local v24, "pagebottom":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v7, v0, :cond_d

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    .line 886
    const/16 v25, 0x0

    .line 895
    .local v25, "pagetop":I
    :goto_9
    add-int v29, v23, v25

    move-object/from16 v0, v27

    move/from16 v1, v21

    move/from16 v2, v29

    move/from16 v3, v22

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 897
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v29, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 898
    .local v17, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v29, v0

    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_b

    .line 899
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v18

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 902
    :cond_b
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/server/aot/menu/AotItem;->setPadding(IIII)V

    .line 903
    if-eqz v27, :cond_f

    .line 904
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move/from16 v2, v20

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 908
    :goto_a
    add-int/lit8 v7, v7, 0x1

    .line 909
    const-string v29, "AlwaysOnTopMenuMultiRC"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "addView: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v26 .. v26}, Lcom/pantech/server/aot/menu/AotItem;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 882
    .end local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "pagebottom":I
    .end local v25    # "pagetop":I
    :cond_c
    move/from16 v24, v6

    .restart local v24    # "pagebottom":I
    goto/16 :goto_8

    .line 887
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    if-ge v7, v0, :cond_e

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecondPage:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    .line 889
    add-int v25, v14, v6

    .restart local v25    # "pagetop":I
    goto/16 :goto_9

    .line 891
    .end local v25    # "pagetop":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mThirdPage:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    .line 892
    add-int v29, v14, v6

    mul-int/lit8 v25, v29, 0x2

    .restart local v25    # "pagetop":I
    goto/16 :goto_9

    .line 906
    .restart local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_f
    const-string v29, "AlwaysOnTopMenuMultiRC"

    const-string v30, "vg is null!!!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public rearrangeAotItems_Old()V
    .locals 36

    .prologue
    .line 361
    sget-object v32, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    move-object/from16 v0, v32

    array-length v5, v0

    .line 362
    .local v5, "N":I
    const/4 v7, 0x0

    .line 363
    .local v7, "bInit":Z
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v30, v0

    .line 365
    .local v30, "viewTag":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v32, v0

    if-nez v32, :cond_1

    .line 366
    const-string v32, "AlwaysOnTopMenuMultiRC"

    const-string v33, "rearrangeAotItems(): mAotmService is Not initialized !!! "

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    return-void

    .line 370
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v32, v0

    if-nez v32, :cond_6

    .line 371
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v15, "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v5, :cond_4

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    sget-object v33, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v33, v33, v13

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 376
    .local v27, "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-eqz v27, :cond_2

    invoke-virtual/range {v27 .. v27}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getIsDisableListResourceId()I

    move-result v32

    if-eqz v32, :cond_3

    .line 373
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 380
    :cond_3
    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 383
    .end local v27    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v32

    new-array v0, v0, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 384
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 389
    .end local v13    # "i":I
    .end local v15    # "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    :goto_2
    const-string v32, "persist.launcher2.aotfolder"

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_7

    const/4 v6, 0x1

    .line 391
    .local v6, "aotFolderExist":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->size()I

    move-result v32

    if-nez v32, :cond_8

    .line 392
    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    const-string v33, "com.pantech.app.aotfolder/.AOTFolder"

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    if-eqz v32, :cond_5

    .line 393
    add-int/lit8 v5, v5, -0x1

    .line 394
    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4
    if-ge v13, v5, :cond_8

    .line 395
    new-instance v16, Lcom/pantech/server/aot/menu/AotItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;-><init>(Landroid/content/Context;)V

    .line 397
    .local v16, "itemView":Lcom/pantech/server/aot/menu/AotItem;
    add-int/lit8 v32, v13, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setId(I)V

    .line 398
    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusUpId(I)V

    .line 399
    add-int/lit8 v32, v5, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusDownId(I)V

    .line 400
    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setFocusable(Z)V

    .line 405
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->setTextAndResource(Lcom/pantech/server/aot/menu/AotItem;I)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->aotItemClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    sget-object v32, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v32, v32, v13

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setTag(Ljava/lang/Object;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v32, v0

    sget-object v33, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v33, v33, v13

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v32, v0

    sget-object v33, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v33, v33, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v32, "AlwaysOnTopMenuMultiRC"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "rearrange : put Hash - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v34, v34, v13

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 386
    .end local v6    # "aotFolderExist":Z
    .end local v13    # "i":I
    .end local v16    # "itemView":Lcom/pantech/server/aot/menu/AotItem;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v5, v0

    goto/16 :goto_2

    .line 389
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 417
    .restart local v6    # "aotFolderExist":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/server/aot/menu/AotListFile;->loadListIndex([Ljava/lang/String;ILjava/util/HashMap;)Z

    move-result v32

    if-nez v32, :cond_9

    .line 421
    const-string v32, "AlwaysOnTopMenuMultiRC"

    const-string v33, "rearrangeAotItems : Maybe, it is first time !!!"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v7, 0x1

    .line 426
    :cond_9
    const/16 v29, 0x0

    .line 428
    .local v29, "vg":Landroid/view/ViewGroup;
    const/16 v21, 0x0

    .line 429
    .local v21, "nIndex":I
    const-string v32, "AlwaysOnTopMenuMultiRC"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "rearrange :: maxCursor = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    .line 432
    .local v10, "density":F
    const/high16 v32, 0x427c0000    # 63.0f

    mul-float v32, v32, v10

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v31, v0

    .line 433
    .local v31, "width":I
    const/high16 v32, 0x41a80000    # 21.0f

    mul-float v32, v32, v10

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v19, v0

    .line 436
    .local v19, "margin":I
    const/high16 v32, 0x41a00000    # 20.0f

    mul-float v32, v32, v10

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v17, v0

    .line 437
    .local v17, "lastpagebottom":I
    const/high16 v32, 0x40800000    # 4.0f

    mul-float v32, v32, v10

    move/from16 v0, v32

    float-to-int v8, v0

    .line 438
    .local v8, "compagebottom":I
    const/high16 v32, 0x428c0000    # 70.0f

    mul-float v32, v32, v10

    move/from16 v0, v32

    float-to-int v14, v0

    .line 439
    .local v14, "icon_height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v24

    .line 440
    .local v24, "paddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v22

    .line 441
    .local v22, "paddingLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v23

    .line 443
    .local v23, "paddingRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 444
    .local v12, "dsp_width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindow:Landroid/view/Window;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 445
    .local v11, "dsp_height":I
    if-le v12, v11, :cond_a

    .line 446
    const/16 v19, 0x70

    .line 447
    const/high16 v32, 0x41400000    # 12.0f

    mul-float v32, v32, v10

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v17, v0

    .line 448
    const/high16 v32, 0x40400000    # 3.0f

    mul-float v32, v32, v10

    move/from16 v0, v32

    float-to-int v8, v0

    .line 451
    :cond_a
    const/4 v9, 0x0

    .line 452
    .local v9, "curIndex":I
    const/16 v20, 0x0

    .local v20, "nCursor":I
    :goto_5
    move/from16 v0, v20

    if-ge v0, v5, :cond_0

    .line 456
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v7, v0, :cond_b

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v32, v0

    sget-object v33, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v33, v33, v20

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/pantech/server/aot/menu/AotItem;

    .line 462
    .local v28, "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    :goto_6
    if-nez v28, :cond_c

    .line 463
    const-string v32, "AlwaysOnTopMenuMultiRC"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "sourceView is null!!:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 459
    .end local v28    # "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v32, v0

    aget-object v33, v30, v9

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/pantech/server/aot/menu/AotItem;

    .restart local v28    # "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    goto :goto_6

    .line 467
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v32, v0

    rem-int v21, v9, v32

    .line 470
    add-int/lit8 v32, v5, -0x1

    move/from16 v0, v32

    if-lt v9, v0, :cond_e

    .line 471
    move/from16 v25, v17

    .line 475
    .local v25, "pagebottom":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v9, v0, :cond_f

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    .line 477
    const/16 v26, 0x0

    .line 486
    .local v26, "pagetop":I
    :goto_9
    add-int v32, v24, v26

    move-object/from16 v0, v29

    move/from16 v1, v22

    move/from16 v2, v32

    move/from16 v3, v23

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 488
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v32, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 489
    .local v18, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v32, v0

    move/from16 v0, v21

    move/from16 v1, v32

    if-ge v0, v1, :cond_d

    .line 490
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v19

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 493
    :cond_d
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/server/aot/menu/AotItem;->setPadding(IIII)V

    .line 494
    if-eqz v29, :cond_11

    .line 495
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move/from16 v2, v21

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 499
    :goto_a
    add-int/lit8 v9, v9, 0x1

    .line 500
    const-string v32, "AlwaysOnTopMenuMultiRC"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "addView: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v28 .. v28}, Lcom/pantech/server/aot/menu/AotItem;->getTag()Ljava/lang/Object;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 473
    .end local v18    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v25    # "pagebottom":I
    .end local v26    # "pagetop":I
    :cond_e
    move/from16 v25, v8

    .restart local v25    # "pagebottom":I
    goto/16 :goto_8

    .line 478
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->AOT_ITEMS_PER_PAGE:I

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    if-ge v9, v0, :cond_10

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mSecondPage:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    .line 480
    add-int v26, v14, v8

    .restart local v26    # "pagetop":I
    goto/16 :goto_9

    .line 482
    .end local v26    # "pagetop":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mThirdPage:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    .line 483
    add-int v32, v14, v8

    mul-int/lit8 v26, v32, 0x2

    .restart local v26    # "pagetop":I
    goto/16 :goto_9

    .line 497
    .restart local v18    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_11
    const-string v32, "AlwaysOnTopMenuMultiRC"

    const-string v33, "vg is null!!!"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mWindowCallback:Landroid/view/Window$Callback;

    .line 268
    return-void
.end method

.method public setWindowService(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 1
    .param p1, "aotmService"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .line 257
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->initView()V

    .line 258
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->rearrangeAotItems()V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->rearrangeAotItems_Old()V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 281
    const-string v0, "AlwaysOnTopMenuMultiRC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AotM Window will be shown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-super {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->show()V

    .line 283
    return-void
.end method

.method public showAotMenuWindow()Z
    .locals 2

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mIsEmptyItem:Z

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 298
    :goto_0
    return v0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 298
    const/4 v0, 0x1

    goto :goto_0
.end method
