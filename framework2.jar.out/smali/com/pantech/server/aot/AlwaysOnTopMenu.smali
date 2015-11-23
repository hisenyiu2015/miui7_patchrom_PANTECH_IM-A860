.class public Lcom/pantech/server/aot/AlwaysOnTopMenu;
.super Landroid/app/Dialog;
.source "AlwaysOnTopMenu.java"


# static fields
.field public static final AlwaysOnTopIdList:[Ljava/lang/String;

.field public static final AlwaysOnTopIdList_EF51KK:[Ljava/lang/String;

.field public static final AlwaysOnTopIdList_EF52:[Ljava/lang/String;

.field public static final AlwaysOnTopIdList_EF56:[Ljava/lang/String;

.field public static final AlwaysOnTopIdList_EF59:[Ljava/lang/String;

.field public static final AlwaysOnTopIdList_EF60:[Ljava/lang/String;

.field public static final AlwaysOnTopIdList_EF63:[Ljava/lang/String;

.field public static final EF51DeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EF52DeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EF56DeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EF59DeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EF60DeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EF63DeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "AlwaysOnTopMenu"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/pantech/server/aot/AlwaysOnTopMenu$1;

    invoke-direct {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenu$1;-><init>()V

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->EF51DeviceList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Lcom/pantech/server/aot/AlwaysOnTopMenu$2;

    invoke-direct {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenu$2;-><init>()V

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->EF52DeviceList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/pantech/server/aot/AlwaysOnTopMenu$3;

    invoke-direct {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenu$3;-><init>()V

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->EF56DeviceList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Lcom/pantech/server/aot/AlwaysOnTopMenu$4;

    invoke-direct {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenu$4;-><init>()V

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->EF59DeviceList:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/pantech/server/aot/AlwaysOnTopMenu$5;

    invoke-direct {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenu$5;-><init>()V

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->EF60DeviceList:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Lcom/pantech/server/aot/AlwaysOnTopMenu$6;

    invoke-direct {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenu$6;-><init>()V

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->EF63DeviceList:Ljava/util/ArrayList;

    .line 141
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.pantech.app.minisketch/.main.miniSketch"

    aput-object v1, v0, v3

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    aput-object v1, v0, v4

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    aput-object v1, v0, v5

    const-string v1, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    aput-object v1, v0, v6

    const-string v1, "com.pantech.app.aotdialer/.PCUAOTDialer"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.pantech.app.aotcalculator/.AOTCalculator"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.pantech.app.aotdictionary/.AOTDictionary"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.pantech.app.tdmb/.DmbAotPlayer"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.pantech.app.aotfolder/.AOTFolder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->AlwaysOnTopIdList:[Ljava/lang/String;

    .line 154
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.browser/.aot.AOTBrowser"

    aput-object v1, v0, v3

    const-string v1, "com.pantech.app.minisketch/.main.miniSketch"

    aput-object v1, v0, v4

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    aput-object v1, v0, v5

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    aput-object v1, v0, v6

    const-string v1, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.pantech.app.aotdialer/.PCUAOTDialer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.pantech.app.aotcalculator/.AOTCalculator"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.pantech.app.aotdictionary/.AOTDictionary"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.pantech.app.tdmb/.DmbAotPlayer"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.pantech.app.aotcalendar/.AOTCalendar"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.pantech.app.aotfolder/.AOTFolder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->AlwaysOnTopIdList_EF51KK:[Ljava/lang/String;

    .line 169
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.pantech.app.minisketch/.main.miniSketch"

    aput-object v1, v0, v3

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    aput-object v1, v0, v4

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    aput-object v1, v0, v5

    const-string v1, "com.pantech.app.tdmb/.DmbAotPlayer"

    aput-object v1, v0, v6

    const-string v1, "com.android.browser/.aot.AOTBrowser"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.pantech.app.aotcalculator/.AOTCalculator"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.pantech.app.aotdictionary/.AOTDictionary"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.pantech.app.aotdialer/.PCUAOTDialer"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.pantech.app.aotcalendar/.AOTCalendar"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.pantech.app.aotfolder/.AOTFolder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->AlwaysOnTopIdList_EF52:[Ljava/lang/String;

    .line 184
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    aput-object v1, v0, v3

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    aput-object v1, v0, v4

    const-string v1, "com.pantech.app.tdmb/.DmbAotPlayer"

    aput-object v1, v0, v5

    const-string v1, "com.android.browser/.aot.AOTBrowser"

    aput-object v1, v0, v6

    const-string v1, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.pantech.app.aotcalculator/.AOTCalculator"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.pantech.app.aotdictionary/.AOTDictionary"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.pantech.app.minisketch/.main.miniSketch"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.pantech.app.aotcalendar/.AOTCalendar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.pantech.app.aotdialer/.PCUAOTDialer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.pantech.app.aotfolder/.AOTFolder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->AlwaysOnTopIdList_EF56:[Ljava/lang/String;

    .line 199
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.pantech.app.minisketch/.main.miniSketch"

    aput-object v1, v0, v3

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    aput-object v1, v0, v4

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    aput-object v1, v0, v5

    const-string v1, "com.pantech.app.tdmb/.DmbAotPlayer"

    aput-object v1, v0, v6

    const-string v1, "com.android.browser/.aot.AOTBrowser"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.pantech.app.aotcalculator/.AOTCalculator"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.pantech.app.aotdictionary/.AOTDictionary"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.pantech.app.aotcalendar/.AOTCalendar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.pantech.app.aotdialer/.PCUAOTDialer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.pantech.app.aotfolder/.AOTFolder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->AlwaysOnTopIdList_EF59:[Ljava/lang/String;

    .line 214
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.pantech.app.minisketch/.main.miniSketch"

    aput-object v1, v0, v3

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    aput-object v1, v0, v4

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    aput-object v1, v0, v5

    const-string v1, "com.pantech.app.tdmb/.DmbAotPlayer"

    aput-object v1, v0, v6

    const-string v1, "com.android.browser/.aot.AOTBrowser"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.pantech.app.aotcalculator/.AOTCalculator"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.pantech.app.aotdictionary/.AOTDictionary"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.pantech.app.aotcalendar/.AOTCalendar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.pantech.app.aotdialer/.PCUAOTDialer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.pantech.app.aotfolder/.AOTFolder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->AlwaysOnTopIdList_EF60:[Ljava/lang/String;

    .line 232
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    aput-object v1, v0, v3

    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    aput-object v1, v0, v4

    const-string v1, "com.pantech.app.tdmb/.DmbAotPlayer"

    aput-object v1, v0, v5

    const-string v1, "com.android.browser/.aot.AOTBrowser"

    aput-object v1, v0, v6

    const-string v1, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.pantech.app.aotcalculator/.AOTCalculator"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.pantech.app.aotdictionary/.AOTDictionary"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.pantech.app.aotcalendar/.AOTCalendar"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.pantech.app.aotdialer/.PCUAOTDialer"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.pantech.app.aotfolder/.AOTFolder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->AlwaysOnTopIdList_EF63:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 248
    return-void
.end method

.method public static final getAlwaysOnTopList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->EF51DeviceList:Ljava/util/ArrayList;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->AlwaysOnTopIdList_EF51KK:[Ljava/lang/String;

    .line 129
    :goto_0
    return-object v0

    .line 115
    :cond_0
    sget-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->EF52DeviceList:Ljava/util/ArrayList;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->AlwaysOnTopIdList_EF52:[Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_1
    sget-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->EF56DeviceList:Ljava/util/ArrayList;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    sget-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->AlwaysOnTopIdList_EF56:[Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_2
    sget-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->EF59DeviceList:Ljava/util/ArrayList;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    sget-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->AlwaysOnTopIdList_EF59:[Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_3
    sget-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->EF60DeviceList:Ljava/util/ArrayList;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    sget-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->AlwaysOnTopIdList_EF60:[Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_4
    sget-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->EF63DeviceList:Ljava/util/ArrayList;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    sget-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->AlwaysOnTopIdList_EF63:[Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_5
    sget-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->AlwaysOnTopIdList:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static final getAlwaysOnTopMenuLayout()I
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/pantech/server/aot/AlwaysOnTopMenu;->EF51DeviceList:Ljava/util/ArrayList;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const v0, 0x1090030

    .line 137
    :goto_0
    return v0

    :cond_0
    const v0, 0x109002e

    goto :goto_0
.end method

.method public static setShowOnList(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 284
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 285
    .local v3, "aotOrder":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 286
    .local v5, "count":I
    invoke-static {}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getAlwaysOnTopList()[Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "aotList":[Ljava/lang/String;
    array-length v0, v1

    .line 289
    .local v0, "N":I
    const/4 v4, 0x0

    .line 290
    .local v4, "bInit":Z
    new-array v9, v0, [Ljava/lang/String;

    .line 292
    .local v9, "viewTag":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 293
    const-string v10, "AlwaysOnTopMenu"

    const-string v11, "setShowOnList fail. context is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v10, 0x0

    .line 326
    :goto_0
    return v10

    .line 297
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    move v6, v5

    .end local v5    # "count":I
    .local v6, "count":I
    :goto_1
    if-ge v7, v0, :cond_2

    .line 298
    aget-object v10, v1, v7

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 300
    .local v8, "isCmp":Z
    if-eqz v8, :cond_1

    if-eqz v8, :cond_9

    if-eqz p2, :cond_9

    .line 301
    :cond_1
    aget-object v10, v1, v7

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "count":I
    .restart local v5    # "count":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "count":I
    .restart local v6    # "count":I
    goto :goto_1

    .line 305
    .end local v8    # "isCmp":Z
    :cond_2
    new-instance v2, Lcom/pantech/server/aot/menu/AotListFile;

    const-string v10, "AotMenu"

    invoke-direct {v2, p0, v10}, Lcom/pantech/server/aot/menu/AotListFile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 307
    .local v2, "aotListFile":Lcom/pantech/server/aot/menu/AotListFile;
    array-length v10, v9

    invoke-virtual {v2, v9, v10, v3}, Lcom/pantech/server/aot/menu/AotListFile;->loadListIndex([Ljava/lang/String;ILjava/util/HashMap;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 308
    invoke-virtual {v2, v3}, Lcom/pantech/server/aot/menu/AotListFile;->saveListIndex(Ljava/util/HashMap;)V

    move v5, v6

    .line 326
    .end local v6    # "count":I
    .restart local v5    # "count":I
    :goto_3
    const/4 v10, 0x1

    goto :goto_0

    .line 310
    .end local v5    # "count":I
    .restart local v6    # "count":I
    :cond_3
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 311
    const/4 v5, 0x0

    .line 312
    .end local v6    # "count":I
    .restart local v5    # "count":I
    const/4 v7, 0x0

    move v6, v5

    .end local v5    # "count":I
    .restart local v6    # "count":I
    :goto_4
    if-ge v7, v0, :cond_6

    .line 313
    aget-object v10, v9, v7

    if-nez v10, :cond_4

    move v5, v6

    .line 312
    .end local v6    # "count":I
    .restart local v5    # "count":I
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "count":I
    .restart local v6    # "count":I
    goto :goto_4

    .line 315
    :cond_4
    aget-object v10, v9, v7

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 316
    .restart local v8    # "isCmp":Z
    if-eqz v8, :cond_5

    if-eqz v8, :cond_8

    if-eqz p2, :cond_8

    :cond_5
    aget-object v10, v9, v7

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 317
    aget-object v10, v9, v7

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "count":I
    .restart local v5    # "count":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 319
    .end local v5    # "count":I
    .end local v8    # "isCmp":Z
    .restart local v6    # "count":I
    :cond_6
    if-eqz p2, :cond_7

    .line 320
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_7

    .line 321
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, p1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_7
    invoke-virtual {v2, v3}, Lcom/pantech/server/aot/menu/AotListFile;->saveListIndex(Ljava/util/HashMap;)V

    move v5, v6

    .end local v6    # "count":I
    .restart local v5    # "count":I
    goto :goto_3

    .end local v5    # "count":I
    .restart local v6    # "count":I
    .restart local v8    # "isCmp":Z
    :cond_8
    move v5, v6

    .end local v6    # "count":I
    .restart local v5    # "count":I
    goto :goto_5

    .end local v2    # "aotListFile":Lcom/pantech/server/aot/menu/AotListFile;
    .end local v5    # "count":I
    .restart local v6    # "count":I
    :cond_9
    move v5, v6

    .end local v6    # "count":I
    .restart local v5    # "count":I
    goto :goto_2
.end method


# virtual methods
.method public endAnimation()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public endDrag()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public hideAotMenuWindow()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public initWindow()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 256
    return-void
.end method

.method public setWindowService(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 0
    .param p1, "aotmService"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .prologue
    .line 252
    return-void
.end method

.method public showAotMenuWindow()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public startDrag(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method
