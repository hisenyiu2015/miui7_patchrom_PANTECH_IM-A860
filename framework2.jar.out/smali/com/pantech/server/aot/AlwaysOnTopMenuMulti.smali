.class public Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;
.super Lcom/pantech/server/aot/AlwaysOnTopMenu;
.source "AlwaysOnTopMenuMulti.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/pantech/server/aot/drag/DragLayer$Callback;


# static fields
.field static final AOT_ITEMS_PER_PAGE:I = 0x5

.field public static final AlwaysOnTopIdList:[Ljava/lang/String;

.field static final BAR_HEIGHT:I = 0xb7

.field static final DEBUG:Z = false

.field static final ICON_WIDTH:I = 0x3b

.field static final LAND_BAR_HEIGHT:I = 0xa8

.field static final LAND_MARGIN_SIZE:I = 0x3d

.field static final MARGIN_SIZE:I = 0x5

.field static final MSG_HIDE_AOT_MENU_WINDOW:I = 0x3fc

.field static final MSG_SHOW_AOT_MENU_WINDOW:I = 0x3f2

.field static final SECRET_CONTENT_URI:Landroid/net/Uri;

.field static final TABLE_ROW_PADDING:I = 0xd

.field public static final TAG:Ljava/lang/String; = "AlwaysOnTopMenuMulti"


# instance fields
.field AOT_ITEM_PAGES:I

.field ITEM_START_ID:I

.field private aotItemClickListener:Landroid/view/View$OnClickListener;

.field private aotItemLongClickListener:Landroid/view/View$OnLongClickListener;

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

.field final mAotMenuWindow:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

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

.field private mDragController:Lcom/pantech/server/aot/drag/DragController;

.field private mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

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

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->SECRET_CONTENT_URI:Landroid/net/Uri;

    .line 109
    invoke-static {}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getAlwaysOnTopList()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

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

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/pantech/server/aot/AlwaysOnTopMenu;-><init>(Landroid/content/Context;I)V

    .line 89
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .line 106
    const/4 v0, 0x3

    iput v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AOT_ITEM_PAGES:I

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->ITEM_START_ID:I

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    .line 125
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.minisketch/.main.miniSketch"

    const v2, 0x10406e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    const v2, 0x10406de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v2, 0x10406e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    const v2, 0x10406e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdialer/.PCUAOTDialer"

    const v2, 0x10406e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotcalculator/.AOTCalculator"

    const v2, 0x10406e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdictionary/.AOTDictionary"

    const v2, 0x10406e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v2, 0x10406e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v2, 0x10406df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotfolder/.AOTFolder"

    const v2, 0x10406e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotcalendar/.AOTCalendar"

    const v2, 0x10406f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    const-string v1, "com.android.browser/.aot.AOTBrowser"

    const v2, 0x10406ef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    .line 141
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.minisketch/.main.miniSketch"

    const v2, 0x10800df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    const v2, 0x10800d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v2, 0x10800e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    const v2, 0x10800cd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdialer/.PCUAOTDialer"

    const v2, 0x10800cf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotcalculator/.AOTCalculator"

    const v2, 0x10800c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdictionary/.AOTDictionary"

    const v2, 0x10800d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v2, 0x10800db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v2, 0x10800e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotfolder/.AOTFolder"

    const v2, 0x10800d5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotcalendar/.AOTCalendar"

    const v2, 0x10800cb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    const-string v1, "com.android.browser/.aot.AOTBrowser"

    const v2, 0x10800c7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    .line 157
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.minisketch/.main.miniSketch"

    const v2, 0x10800e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    const v2, 0x10800d9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v2, 0x10800eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    const v2, 0x10800ce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdialer/.PCUAOTDialer"

    const v2, 0x10800d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotcalculator/.AOTCalculator"

    const v2, 0x10800ca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotdictionary/.AOTDictionary"

    const v2, 0x10800d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v2, 0x10800dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v2, 0x10800e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotfolder/.AOTFolder"

    const v2, 0x10800d6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.pantech.app.aotcalendar/.AOTCalendar"

    const v2, 0x10800cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    const-string v1, "com.android.browser/.aot.AOTBrowser"

    const v2, 0x10800c8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 178
    iput-boolean v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mIsCalling:Z

    .line 179
    iput-boolean v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mIsEmptyItem:Z

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecretPackageNameList:Ljava/util/ArrayList;

    .line 415
    new-instance v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$2;

    invoke-direct {v0, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$2;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->pageTouchListener:Landroid/view/View$OnTouchListener;

    .line 686
    new-instance v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$5;

    invoke-direct {v0, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$5;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->aotItemClickListener:Landroid/view/View$OnClickListener;

    .line 737
    new-instance v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$6;

    invoke-direct {v0, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$6;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->aotItemLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 203
    iput-object p3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotList:Ljava/util/List;

    .line 204
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 205
    const-string v0, "AlwaysOnTopMenuMulti"

    const-string v1, "AlwaysOnTopMenuMulti(): Always on top list is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotMenuWindow:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    .line 209
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mHandler:Landroid/os/Handler;

    .line 210
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mPm:Landroid/content/pm/PackageManager;

    .line 223
    :goto_0
    return-void

    .line 215
    :cond_0
    iput-object p0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotMenuWindow:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    .line 216
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mPm:Landroid/content/pm/PackageManager;

    .line 218
    iput-boolean p4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mIsCalling:Z

    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mLeftMoreImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mRightMoreImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Lcom/pantech/server/aot/menu/AotContainer;
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    return-object v0
.end method

.method private checkDBSync(Ljava/util/HashMap;)Z
    .locals 10
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

    .line 943
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 944
    .local v0, "dbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 945
    .local v1, "hashSize":I
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 946
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 947
    .local v4, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 949
    .local v3, "isAdd":Z
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    invoke-virtual {v8, v0, v9}, Lcom/pantech/server/aot/menu/AotListFile;->loadListIndex(Ljava/util/HashMap;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 950
    const/4 v8, 0x0

    .line 969
    :goto_0
    return v8

    .line 953
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 954
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 955
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 957
    .local v6, "order":I
    if-eqz v6, :cond_1

    .line 958
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    .line 960
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    const/4 v3, 0x1

    .line 953
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 966
    .end local v6    # "order":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 967
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    invoke-virtual {v8, v0}, Lcom/pantech/server/aot/menu/AotListFile;->saveListIndex(Ljava/util/HashMap;)V

    :cond_3
    move v8, v9

    .line 969
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

    .line 897
    new-instance v6, Lcom/pantech/server/aot/menu/AotListFile;

    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    const-string v9, "AotMenuSecure"

    invoke-direct {v6, v8, v9}, Lcom/pantech/server/aot/menu/AotListFile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 898
    .local v6, "testFile":Lcom/pantech/server/aot/menu/AotListFile;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 918
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 919
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->loadSecretAppsFromDb()V

    .line 921
    :cond_0
    invoke-static {}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getAlwaysOnTopList()[Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, "alwaysOnTopIdList":[Ljava/lang/String;
    array-length v0, v1

    .line 923
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 924
    aget-object v8, v1, v3

    aget-object v9, v1, v3

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 926
    .local v5, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 927
    aget-object v8, v1, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 929
    :cond_1
    aget-object v8, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 933
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v8, "persist.launcher2.aotfolder"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    .line 934
    .local v2, "aotFolderExist":Z
    :goto_2
    if-nez v2, :cond_3

    .line 936
    const-string v7, "com.pantech.app.aotfolder/.AOTFolder"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    :cond_3
    return-object v4

    .end local v2    # "aotFolderExist":Z
    :cond_4
    move v2, v7

    .line 933
    goto :goto_2
.end method

.method private initDB()V
    .locals 11

    .prologue
    .line 973
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 974
    .local v6, "mAOTDBList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 975
    .local v1, "aotList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->getAlwaysOnTopSecureMap()Ljava/util/HashMap;

    move-result-object v8

    .line 977
    .local v8, "secureAOTMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, v8}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->checkDBSync(Ljava/util/HashMap;)Z

    .line 979
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    invoke-virtual {v9, v6}, Lcom/pantech/server/aot/menu/AotListFile;->loadListIndex(Ljava/util/HashMap;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 980
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 982
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_5

    .line 983
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 985
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 987
    .local v4, "index":Ljava/lang/Integer;
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_0

    .line 988
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v9, v9, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 989
    .local v7, "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getIsDisableListResourceId()I

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v7}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getAotMotherAppPkg()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->isSecureApp(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 982
    .end local v7    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 993
    .restart local v7    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 997
    .end local v2    # "i":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "index":Ljava/lang/Integer;
    .end local v5    # "length":I
    .end local v7    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_2
    sget-object v9, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    array-length v0, v9

    .line 998
    .local v0, "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 999
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v9, v9, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    sget-object v10, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 1001
    .restart local v7    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getIsDisableListResourceId()I

    move-result v9

    if-eqz v9, :cond_4

    .line 998
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1005
    :cond_4
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1009
    .end local v0    # "N":I
    .end local v7    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 1011
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    array-length v9, v9

    div-int/lit8 v10, v9, 0x5

    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    array-length v9, v9

    rem-int/lit8 v9, v9, 0x5

    if-nez v9, :cond_6

    const/4 v9, 0x0

    :goto_4
    add-int/2addr v9, v10

    iput v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AOT_ITEM_PAGES:I

    .line 1013
    return-void

    .line 1011
    :cond_6
    const/4 v9, 0x1

    goto :goto_4
.end method

.method private initView()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x1

    .line 236
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->getAlwaysOnTopSecureMap()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    div-int/lit8 v6, v9, 0x5

    .line 237
    .local v6, "pageCount":I
    const/4 v9, 0x3

    iput v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AOT_ITEM_PAGES:I

    .line 240
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 242
    .local v4, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getAlwaysOnTopMenuLayout()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 244
    .local v7, "rootView":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->getWindow()Landroid/view/Window;

    move-result-object v9

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    .line 246
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v2, v9, Landroid/util/DisplayMetrics;->density:F

    .line 247
    .local v2, "density":F
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 248
    .local v1, "barWidth":I
    const/high16 v9, 0x43370000    # 183.0f

    mul-float/2addr v9, v2

    float-to-int v0, v9

    .line 250
    .local v0, "barHeight":I
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v8, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 251
    .local v8, "width":I
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v3, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 253
    .local v3, "height":I
    if-le v8, v3, :cond_4

    .line 254
    const/high16 v9, 0x43280000    # 168.0f

    mul-float/2addr v9, v2

    float-to-int v0, v9

    .line 255
    const/4 v5, 0x1

    .line 260
    .local v5, "isLand":Z
    :goto_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotHash:Ljava/util/HashMap;

    .line 261
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    .line 263
    new-instance v9, Lcom/pantech/server/aot/menu/AotListFile;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    const-string v11, "AotMenu"

    invoke-direct {v9, v10, v11}, Lcom/pantech/server/aot/menu/AotListFile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    .line 265
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->initDB()V

    .line 267
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v7, v10}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    const v9, 0x102029a

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/pantech/server/aot/menu/AotContainer;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    .line 271
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    iget v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AOT_ITEM_PAGES:I

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/menu/AotContainer;->setMaxPage(I)V

    .line 272
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    invoke-virtual {v9, p0}, Lcom/pantech/server/aot/menu/AotContainer;->setAnimationEndListener(Lcom/pantech/server/aot/AlwaysOnTopMenu;)V

    .line 273
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    new-instance v10, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;

    invoke-direct {v10, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/menu/AotContainer;->setChangedChildViewListener(Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;)V

    .line 304
    const v9, 0x1020298

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mLeftMoreImage:Landroid/widget/ImageView;

    .line 305
    const v9, 0x1020299

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mRightMoreImage:Landroid/widget/ImageView;

    .line 306
    iget v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AOT_ITEM_PAGES:I

    if-ne v9, v13, :cond_0

    .line 307
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mLeftMoreImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mRightMoreImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    :cond_0
    const v9, 0x102029b

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mFirstPage:Landroid/widget/LinearLayout;

    .line 311
    const v9, 0x102029c

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecondPage:Landroid/widget/LinearLayout;

    .line 312
    const v9, 0x102029d

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mThirdPage:Landroid/widget/LinearLayout;

    .line 313
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mFirstPage:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_1

    .line 314
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mFirstPage:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->pageTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 315
    :cond_1
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecondPage:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_2

    .line 316
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecondPage:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->pageTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    :cond_2
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mThirdPage:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_3

    .line 318
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mThirdPage:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->pageTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 319
    :cond_3
    iget v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AOT_ITEM_PAGES:I

    packed-switch v9, :pswitch_data_0

    .line 328
    :goto_1
    new-instance v9, Lcom/pantech/server/aot/drag/DragController;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/pantech/server/aot/drag/DragController;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    .line 329
    const v9, 0x1020293

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/pantech/server/aot/drag/DragLayer;

    iput-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    .line 330
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/drag/DragLayer;->setDragController(Lcom/pantech/server/aot/drag/DragController;)V

    .line 331
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/drag/DragLayer;->setChildLayout(Landroid/view/ViewGroup;)V

    .line 332
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    invoke-virtual {v9, p0}, Lcom/pantech/server/aot/drag/DragLayer;->setDragLayerCallback(Lcom/pantech/server/aot/drag/DragLayer$Callback;)V

    .line 334
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/drag/DragController;->setScrollView(Landroid/view/View;)V

    .line 335
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/drag/DragController;->setDragScoller(Lcom/pantech/server/aot/drag/DragScroller;)V

    .line 336
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/drag/DragController;->setDragListener(Lcom/pantech/server/aot/drag/DragController$DragListener;)V

    .line 337
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/drag/DragController;->setDragLayer(Landroid/view/View;)V

    .line 343
    return-void

    .line 257
    .end local v5    # "isLand":Z
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "isLand":Z
    goto/16 :goto_0

    .line 321
    :pswitch_0
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecondPage:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/menu/AotContainer;->removeView(Landroid/view/View;)V

    .line 322
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mThirdPage:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/menu/AotContainer;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 325
    :pswitch_1
    iget-object v9, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mThirdPage:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Lcom/pantech/server/aot/menu/AotContainer;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSecureApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    const/4 v0, 0x1

    .line 893
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadSecretAppsFromDb()V
    .locals 10

    .prologue
    .line 841
    const/4 v7, 0x0

    .line 843
    .local v7, "secretAppDBCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->SECRET_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 848
    :goto_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 852
    :try_start_1
    const-string v0, "package_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 855
    .local v9, "secret_pkg_name_column":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 856
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 858
    :try_start_2
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 859
    .local v8, "secretPkgName":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 861
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 868
    :cond_0
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 872
    .end local v8    # "secretPkgName":Ljava/lang/String;
    .end local v9    # "secret_pkg_name_column":I
    :catch_0
    move-exception v6

    .line 873
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "AlwaysOnTopMenuMulti"

    const-string v1, "Read SECRET_CONTENT_URI error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 875
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 881
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 844
    :catch_1
    move-exception v6

    .line 845
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v0, "AlwaysOnTopMenuMulti"

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

    goto :goto_0

    .line 865
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v9    # "secret_pkg_name_column":I
    :catch_2
    move-exception v6

    .line 866
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v0, "AlwaysOnTopMenuMulti"

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

    .line 868
    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 875
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "secret_pkg_name_column":I
    :catchall_0
    move-exception v0

    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 877
    :catch_3
    move-exception v6

    .line 878
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v0, "AlwaysOnTopMenuMulti"

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

    goto :goto_2

    .line 868
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

    .line 875
    :cond_1
    :try_start_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2
.end method

.method public static setShowOnList(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 794
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 795
    .local v3, "aotOrder":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 796
    .local v4, "count":I
    const/4 v0, 0x0

    .line 798
    .local v0, "N":I
    new-array v8, v0, [Ljava/lang/String;

    .line 800
    .local v8, "viewTag":[Ljava/lang/String;
    invoke-static {}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getAlwaysOnTopList()[Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, "alwaysOnTopIdList":[Ljava/lang/String;
    array-length v0, v1

    .line 803
    if-nez p0, :cond_0

    .line 804
    const-string v9, "AlwaysOnTopMenuMulti"

    const-string v10, "setShowOnList fail. context is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v9, 0x0

    .line 837
    :goto_0
    return v9

    .line 808
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    move v5, v4

    .end local v4    # "count":I
    .local v5, "count":I
    :goto_1
    if-ge v6, v0, :cond_2

    .line 809
    aget-object v9, v1, v6

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 811
    .local v7, "isCmp":Z
    if-eqz v7, :cond_1

    if-eqz v7, :cond_9

    if-eqz p2, :cond_9

    .line 812
    :cond_1
    aget-object v9, v1, v6

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "count":I
    .restart local v4    # "count":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    .end local v4    # "count":I
    .restart local v5    # "count":I
    goto :goto_1

    .line 816
    .end local v7    # "isCmp":Z
    :cond_2
    new-instance v2, Lcom/pantech/server/aot/menu/AotListFile;

    const-string v9, "AotMenu"

    invoke-direct {v2, p0, v9}, Lcom/pantech/server/aot/menu/AotListFile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 818
    .local v2, "aotListFile":Lcom/pantech/server/aot/menu/AotListFile;
    array-length v9, v8

    invoke-virtual {v2, v8, v9, v3}, Lcom/pantech/server/aot/menu/AotListFile;->loadListIndex([Ljava/lang/String;ILjava/util/HashMap;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 819
    invoke-virtual {v2, v3}, Lcom/pantech/server/aot/menu/AotListFile;->saveListIndex(Ljava/util/HashMap;)V

    move v4, v5

    .line 837
    .end local v5    # "count":I
    .restart local v4    # "count":I
    :goto_3
    const/4 v9, 0x1

    goto :goto_0

    .line 821
    .end local v4    # "count":I
    .restart local v5    # "count":I
    :cond_3
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 822
    const/4 v4, 0x0

    .line 823
    .end local v5    # "count":I
    .restart local v4    # "count":I
    const/4 v6, 0x0

    move v5, v4

    .end local v4    # "count":I
    .restart local v5    # "count":I
    :goto_4
    if-ge v6, v0, :cond_6

    .line 824
    aget-object v9, v8, v6

    if-nez v9, :cond_4

    move v4, v5

    .line 823
    .end local v5    # "count":I
    .restart local v4    # "count":I
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    .end local v4    # "count":I
    .restart local v5    # "count":I
    goto :goto_4

    .line 826
    :cond_4
    aget-object v9, v8, v6

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 827
    .restart local v7    # "isCmp":Z
    if-eqz v7, :cond_5

    if-eqz v7, :cond_8

    if-eqz p2, :cond_8

    :cond_5
    aget-object v9, v8, v6

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 828
    aget-object v9, v8, v6

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "count":I
    .restart local v4    # "count":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 830
    .end local v4    # "count":I
    .end local v7    # "isCmp":Z
    .restart local v5    # "count":I
    :cond_6
    if-eqz p2, :cond_7

    .line 831
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_7

    .line 832
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :cond_7
    invoke-virtual {v2, v3}, Lcom/pantech/server/aot/menu/AotListFile;->saveListIndex(Ljava/util/HashMap;)V

    move v4, v5

    .end local v5    # "count":I
    .restart local v4    # "count":I
    goto :goto_3

    .end local v4    # "count":I
    .restart local v5    # "count":I
    .restart local v7    # "isCmp":Z
    :cond_8
    move v4, v5

    .end local v5    # "count":I
    .restart local v4    # "count":I
    goto :goto_5

    .end local v2    # "aotListFile":Lcom/pantech/server/aot/menu/AotListFile;
    .end local v4    # "count":I
    .restart local v5    # "count":I
    :cond_9
    move v4, v5

    .end local v5    # "count":I
    .restart local v4    # "count":I
    goto :goto_2
.end method

.method private setTextAndResource(Lcom/pantech/server/aot/menu/AotItem;I)V
    .locals 5
    .param p1, "aotView"    # Lcom/pantech/server/aot/menu/AotItem;
    .param p2, "index"    # I

    .prologue
    .line 653
    if-eqz p1, :cond_0

    .line 654
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 656
    const-string v3, "AlwaysOnTopMenuMulti"

    const-string v4, "app id is null!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 660
    .restart local v0    # "id":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 663
    .local v2, "resId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v3, v0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isAlwaysOnTopRunningID(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 664
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemRunningMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 665
    .local v1, "imgId":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 666
    const v3, 0x10800d9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 675
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 676
    const v3, 0x10406dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 678
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/pantech/server/aot/menu/AotItem;->setText(I)V

    .line 679
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/pantech/server/aot/menu/AotItem;->setDrawableResource(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 669
    .end local v1    # "imgId":Ljava/lang/Integer;
    :cond_4
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockItemMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 670
    .restart local v1    # "imgId":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 671
    const v3, 0x10800d7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 366
    invoke-super {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->dismiss()V

    .line 367
    return-void
.end method

.method public dragHandler(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 781
    packed-switch p1, :pswitch_data_0

    .line 789
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 783
    :pswitch_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->endDrag()Z

    move-result v0

    goto :goto_0

    .line 786
    :pswitch_1
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->endDrag()Z

    move-result v0

    goto :goto_0

    .line 781
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 773
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    invoke-virtual {p0, v0, v2}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->makeAotItemOrder(Landroid/view/View;I)I

    .line 775
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotListFile;->saveListIndex(Ljava/util/HashMap;)V

    .line 776
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    invoke-virtual {v0, v2}, Lcom/pantech/server/aot/drag/DragController;->setDirty(Z)V

    .line 777
    return-void
.end method

.method public endDrag()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 762
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    invoke-virtual {v0}, Lcom/pantech/server/aot/drag/DragController;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    invoke-virtual {p0, v0, v2}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->makeAotItemOrder(Landroid/view/View;I)I

    .line 765
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotListFile;->saveListIndex(Ljava/util/HashMap;)V

    .line 766
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    invoke-virtual {v0, v2}, Lcom/pantech/server/aot/drag/DragController;->setDirty(Z)V

    .line 768
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 402
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 412
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 404
    :sswitch_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->show()V

    goto :goto_0

    .line 408
    :sswitch_1
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->hide()V

    goto :goto_0

    .line 402
    :sswitch_data_0
    .sparse-switch
        0x3f2 -> :sswitch_0
        0x3fc -> :sswitch_1
    .end sparse-switch
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecretPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 381
    invoke-super {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->hide()V

    .line 382
    return-void
.end method

.method public hideAotMenuWindow()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 395
    return-void
.end method

.method public initWindow()V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->initView()V

    .line 228
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->rearrangeAotItems()V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->rearrangeAotItems_Old()V

    goto :goto_0
.end method

.method public makeAotItemOrder(Landroid/view/View;I)I
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 425
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 427
    check-cast v2, Landroid/view/ViewGroup;

    .line 428
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 430
    .local v1, "numChild":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 432
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->makeAotItemOrder(Landroid/view/View;I)I

    move-result p2

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    .end local v0    # "i":I
    .end local v1    # "numChild":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_0
    instance-of v3, p1, Lcom/pantech/server/aot/menu/AotItem;

    if-eqz v3, :cond_1

    .line 438
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    add-int/lit8 p2, p2, 0x1

    .line 442
    :cond_1
    return p2
.end method

.method public rearrangeAotItems()V
    .locals 32

    .prologue
    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v5, v0

    .line 1017
    .local v5, "N":I
    const/4 v12, 0x0

    .line 1018
    .local v12, "focus_index":I
    const/4 v6, 0x0

    .line 1020
    .local v6, "allSpecialAppIsSecure":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v28, v0

    if-nez v28, :cond_1

    .line 1021
    const-string v28, "AlwaysOnTopMenuMulti"

    const-string v29, "rearrangeAotItems(): mAotmService is Not initialized !!! "

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v28

    const v29, 0x1020294

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 1026
    .local v24, "specialAppLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v28

    const v29, 0x1020295

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1028
    .local v25, "textAction":Landroid/widget/TextView;
    const-string v28, "com.pantech.app.textaction"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->isSecureApp(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 1029
    new-instance v28, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$7;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$7;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1049
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setId(I)V

    .line 1050
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 1051
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "focus_index":I
    .local v13, "focus_index":I
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    .line 1052
    const/16 v28, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1053
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->requestFocus()Z

    move v12, v13

    .line 1062
    .end local v13    # "focus_index":I
    .restart local v12    # "focus_index":I
    :goto_1
    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->ITEM_START_ID:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    .line 1064
    :cond_2
    if-eqz v6, :cond_3

    .line 1065
    if-eqz v24, :cond_3

    .line 1066
    const/16 v28, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1070
    :cond_3
    if-nez v5, :cond_7

    .line 1071
    if-eqz v25, :cond_4

    const/16 v28, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    .line 1073
    :cond_4
    if-eqz v6, :cond_6

    .line 1074
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mIsEmptyItem:Z

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x10406f1

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1055
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->ITEM_START_ID:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->ITEM_START_ID:I

    .line 1056
    const-string v28, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1058
    const/16 v28, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1059
    const/4 v6, 0x1

    goto :goto_1

    .line 1078
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v28

    const v29, 0x1020297

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout;

    .line 1079
    .local v19, "miniAppLayout":Landroid/widget/FrameLayout;
    const/16 v28, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1084
    .end local v19    # "miniAppLayout":Landroid/widget/FrameLayout;
    :cond_7
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mIsEmptyItem:Z

    .line 1086
    const-string v28, "persist.launcher2.aotfolder"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_a

    const/4 v7, 0x1

    .line 1088
    .local v7, "aotFolderExist":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->size()I

    move-result v28

    if-nez v28, :cond_c

    .line 1091
    const/4 v14, 0x0

    .local v14, "i":I
    move v13, v12

    .end local v12    # "focus_index":I
    .restart local v13    # "focus_index":I
    :goto_3
    if-ge v14, v5, :cond_b

    .line 1092
    new-instance v16, Lcom/pantech/server/aot/menu/AotItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;-><init>(Landroid/content/Context;)V

    .line 1094
    .local v16, "itemView":Lcom/pantech/server/aot/menu/AotItem;
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "focus_index":I
    .restart local v12    # "focus_index":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/pantech/server/aot/menu/AotItem;->setId(I)V

    .line 1095
    const/16 v28, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusUpId(I)V

    .line 1096
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->ITEM_START_ID:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    add-int v28, v28, v5

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusDownId(I)V

    .line 1097
    const/16 v28, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setFocusable(Z)V

    .line 1098
    rem-int/lit8 v20, v14, 0x5

    .line 1100
    .local v20, "moveIndex":I
    if-eqz v20, :cond_8

    const/16 v28, 0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    const/16 v28, 0x4

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 1101
    :cond_8
    move v15, v14

    .line 1102
    .local v15, "index":I
    new-instance v28, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1112
    .end local v15    # "index":I
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->setTextAndResource(Lcom/pantech/server/aot/menu/AotItem;I)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->aotItemClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->aotItemLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v28, v0

    aget-object v28, v28, v14

    invoke-virtual/range {v28 .. v28}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItem;->setTag(Ljava/lang/Object;)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v29, v0

    aget-object v29, v29, v14

    invoke-virtual/range {v29 .. v29}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v29, v0

    aget-object v29, v29, v14

    invoke-virtual/range {v29 .. v29}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v29

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    add-int/lit8 v14, v14, 0x1

    move v13, v12

    .end local v12    # "focus_index":I
    .restart local v13    # "focus_index":I
    goto/16 :goto_3

    .line 1086
    .end local v7    # "aotFolderExist":Z
    .end local v13    # "focus_index":I
    .end local v14    # "i":I
    .end local v16    # "itemView":Lcom/pantech/server/aot/menu/AotItem;
    .end local v20    # "moveIndex":I
    .restart local v12    # "focus_index":I
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_2

    .end local v12    # "focus_index":I
    .restart local v7    # "aotFolderExist":Z
    .restart local v13    # "focus_index":I
    .restart local v14    # "i":I
    :cond_b
    move v12, v13

    .line 1125
    .end local v13    # "focus_index":I
    .end local v14    # "i":I
    .restart local v12    # "focus_index":I
    :cond_c
    const/16 v26, 0x0

    .line 1126
    .local v26, "vg":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    .line 1129
    .local v22, "nIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1130
    .local v9, "density":F
    const/high16 v28, 0x426c0000    # 59.0f

    mul-float v28, v28, v9

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    .line 1131
    .local v27, "width":I
    const/high16 v28, 0x40a00000    # 5.0f

    mul-float v28, v28, v9

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1133
    .local v18, "margin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1134
    .local v11, "dsp_width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1135
    .local v10, "dsp_height":I
    if-le v11, v10, :cond_d

    .line 1136
    const/high16 v28, 0x42740000    # 61.0f

    mul-float v28, v28, v9

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1139
    :cond_d
    const/4 v8, 0x0

    .line 1140
    .local v8, "curIndex":I
    const/16 v21, 0x0

    .local v21, "nCursor":I
    :goto_4
    move/from16 v0, v21

    if-ge v0, v5, :cond_0

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v29, v0

    aget-object v29, v29, v21

    invoke-virtual/range {v29 .. v29}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/pantech/server/aot/menu/AotItem;

    .line 1146
    .local v23, "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    if-nez v23, :cond_e

    .line 1147
    const-string v28, "AlwaysOnTopMenuMulti"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "sourceView is null!!:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :goto_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 1151
    :cond_e
    rem-int/lit8 v22, v8, 0x5

    .line 1153
    const/16 v28, 0x5

    move/from16 v0, v28

    if-ge v8, v0, :cond_10

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    .line 1161
    :goto_6
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v28, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1162
    .local v17, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v28, 0x5

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    .line 1163
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v18

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1166
    :cond_f
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/server/aot/menu/AotItem;->setPadding(IIII)V

    .line 1167
    if-eqz v26, :cond_12

    .line 1168
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v22

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1172
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1155
    .end local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_10
    const/16 v28, 0xa

    move/from16 v0, v28

    if-ge v8, v0, :cond_11

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecondPage:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    goto :goto_6

    .line 1158
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mThirdPage:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    goto :goto_6

    .line 1170
    .restart local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_12
    const-string v28, "AlwaysOnTopMenuMulti"

    const-string v29, "vg is null!!!"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public rearrangeAotItems_Old()V
    .locals 28

    .prologue
    .line 447
    sget-object v24, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    move-object/from16 v0, v24

    array-length v5, v0

    .line 448
    .local v5, "N":I
    const/4 v7, 0x0

    .line 449
    .local v7, "bInit":Z
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 451
    .local v22, "viewTag":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 452
    const-string v24, "AlwaysOnTopMenuMulti"

    const-string v25, "rearrangeAotItems(): mAotmService is Not initialized !!! "

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    return-void

    .line 456
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v24, v0

    if-nez v24, :cond_8

    .line 457
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v13, "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v5, :cond_4

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    sget-object v25, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v25, v25, v12

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 462
    .local v19, "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getIsDisableListResourceId()I

    move-result v24

    if-eqz v24, :cond_3

    .line 459
    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 466
    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 469
    .end local v19    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 470
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 535
    .end local v12    # "i":I
    .end local v13    # "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    :goto_2
    const-string v24, "persist.launcher2.aotfolder"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_9

    const/4 v6, 0x1

    .line 537
    .local v6, "aotFolderExist":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    if-nez v24, :cond_c

    .line 538
    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const-string v25, "com.pantech.app.aotfolder/.AOTFolder"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_5

    .line 539
    add-int/lit8 v5, v5, -0x1

    .line 540
    :cond_5
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    if-ge v12, v5, :cond_c

    .line 541
    new-instance v14, Lcom/pantech/server/aot/menu/AotItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;-><init>(Landroid/content/Context;)V

    .line 543
    .local v14, "itemView":Lcom/pantech/server/aot/menu/AotItem;
    add-int/lit8 v24, v12, 0x2

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setId(I)V

    .line 544
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusUpId(I)V

    .line 545
    add-int/lit8 v24, v5, 0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusDownId(I)V

    .line 546
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setFocusable(Z)V

    .line 551
    const/16 v24, 0x4

    move/from16 v0, v24

    if-eq v12, v0, :cond_6

    if-nez v12, :cond_a

    .line 552
    :cond_6
    new-instance v24, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$3;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 573
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->setTextAndResource(Lcom/pantech/server/aot/menu/AotItem;I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->aotItemClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->aotItemLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 577
    sget-object v24, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v24, v24, v12

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setTag(Ljava/lang/Object;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v24, v0

    sget-object v25, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v25, v25, v12

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v24, v0

    sget-object v25, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v25, v25, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 472
    .end local v6    # "aotFolderExist":Z
    .end local v12    # "i":I
    .end local v14    # "itemView":Lcom/pantech/server/aot/menu/AotItem;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v5, v0

    goto/16 :goto_2

    .line 535
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 561
    .restart local v6    # "aotFolderExist":Z
    .restart local v12    # "i":I
    .restart local v14    # "itemView":Lcom/pantech/server/aot/menu/AotItem;
    :cond_a
    const/16 v24, 0x5

    move/from16 v0, v24

    if-eq v12, v0, :cond_b

    add-int/lit8 v24, v5, -0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_7

    .line 562
    :cond_b
    new-instance v24, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$4;-><init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/pantech/server/aot/menu/AotItem;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_5

    .line 586
    .end local v12    # "i":I
    .end local v14    # "itemView":Lcom/pantech/server/aot/menu/AotItem;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotListFile:Lcom/pantech/server/aot/menu/AotListFile;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotOrder:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/server/aot/menu/AotListFile;->loadListIndex([Ljava/lang/String;ILjava/util/HashMap;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 590
    const-string v24, "AlwaysOnTopMenuMulti"

    const-string v25, "rearrangeAotItems : Maybe, it is first time !!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v7, 0x1

    .line 595
    :cond_d
    const/16 v21, 0x0

    .line 596
    .local v21, "vg":Landroid/view/ViewGroup;
    const/16 v18, 0x0

    .line 599
    .local v18, "nIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    .line 600
    .local v9, "density":F
    const/high16 v24, 0x426c0000    # 59.0f

    mul-float v24, v24, v9

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 601
    .local v23, "width":I
    const/high16 v24, 0x40a00000    # 5.0f

    mul-float v24, v24, v9

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v16, v0

    .line 603
    .local v16, "margin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 604
    .local v11, "dsp_width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindow:Landroid/view/Window;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 605
    .local v10, "dsp_height":I
    if-le v11, v10, :cond_e

    .line 606
    const/high16 v24, 0x42740000    # 61.0f

    mul-float v24, v24, v9

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v16, v0

    .line 609
    :cond_e
    const/4 v8, 0x0

    .line 610
    .local v8, "curIndex":I
    const/16 v17, 0x0

    .local v17, "nCursor":I
    :goto_6
    move/from16 v0, v17

    if-ge v0, v5, :cond_0

    .line 614
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v7, v0, :cond_f

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v24, v0

    sget-object v25, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AlwaysOnTopIdList:[Ljava/lang/String;

    aget-object v25, v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/pantech/server/aot/menu/AotItem;

    .line 620
    .local v20, "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    :goto_7
    if-nez v20, :cond_10

    .line 621
    const-string v24, "AlwaysOnTopMenuMulti"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sourceView is null!!:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 617
    .end local v20    # "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotHash:Ljava/util/HashMap;

    move-object/from16 v24, v0

    aget-object v25, v22, v8

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/pantech/server/aot/menu/AotItem;

    .restart local v20    # "sourceView":Lcom/pantech/server/aot/menu/AotItem;
    goto :goto_7

    .line 625
    :cond_10
    rem-int/lit8 v18, v8, 0x5

    .line 627
    const/16 v24, 0x5

    move/from16 v0, v24

    if-ge v8, v0, :cond_12

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mFirstPage:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    .line 635
    :goto_9
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 636
    .local v15, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v24, 0x5

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    .line 637
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v16

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 640
    :cond_11
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/server/aot/menu/AotItem;->setPadding(IIII)V

    .line 641
    if-eqz v21, :cond_14

    .line 642
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 646
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 629
    .end local v15    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_12
    const/16 v24, 0xa

    move/from16 v0, v24

    if-ge v8, v0, :cond_13

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mSecondPage:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    goto :goto_9

    .line 632
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mThirdPage:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    goto :goto_9

    .line 644
    .restart local v15    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_14
    const-string v24, "AlwaysOnTopMenuMulti"

    const-string v25, "vg is null!!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mWindowCallback:Landroid/view/Window$Callback;

    .line 359
    return-void
.end method

.method public setWindowService(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 1
    .param p1, "aotmService"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .line 348
    invoke-direct {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->initView()V

    .line 349
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->rearrangeAotItems()V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->rearrangeAotItems_Old()V

    goto :goto_0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 373
    invoke-super {p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->show()V

    .line 374
    return-void
.end method

.method public showAotMenuWindow()Z
    .locals 2

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mIsEmptyItem:Z

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startDrag(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 748
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/pantech/server/aot/drag/DragSource;

    move-object v1, v0

    .line 750
    .local v1, "dragSource":Lcom/pantech/server/aot/drag/DragSource;
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    sget v4, Lcom/pantech/server/aot/drag/DragController;->DRAG_ACTION_MOVE:I

    invoke-virtual {v3, p1, v1, v1, v4}, Lcom/pantech/server/aot/drag/DragController;->startDrag(Landroid/view/View;Lcom/pantech/server/aot/drag/DragSource;Ljava/lang/Object;I)V

    .line 751
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDragLayer:Lcom/pantech/server/aot/drag/DragLayer;

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotContainer:Lcom/pantech/server/aot/menu/AotContainer;

    invoke-virtual {v3, v4}, Lcom/pantech/server/aot/drag/DragLayer;->changeModeToEdit(Landroid/view/View;)I

    .line 752
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    const/4 v3, 0x1

    .line 756
    .end local v1    # "dragSource":Lcom/pantech/server/aot/drag/DragSource;
    :goto_0
    return v3

    .line 755
    :catch_0
    move-exception v2

    .line 756
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method
