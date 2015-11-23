.class public Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;
.super Ljava/lang/Object;
.source "TdmbPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tdmb/TdmbPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TdmbChannelScanInfo"
.end annotation


# instance fields
.field private mAudio_ch_count:I

.field private mData_ch_count:I

.field private mTotal_ch_count:I

.field private mVideo_ch_count:I

.field private mVisual_radio_ch_count:I

.field final synthetic this$0:Landroid/tdmb/TdmbPlayer;


# direct methods
.method public constructor <init>(Landroid/tdmb/TdmbPlayer;)V
    .locals 0

    .prologue
    .line 1310
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->this$0:Landroid/tdmb/TdmbPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$5002(Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;
    .param p1, "x1"    # I

    .prologue
    .line 1310
    iput p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mVideo_ch_count:I

    return p1
.end method

.method static synthetic access$5102(Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;
    .param p1, "x1"    # I

    .prologue
    .line 1310
    iput p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mAudio_ch_count:I

    return p1
.end method

.method static synthetic access$5202(Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;
    .param p1, "x1"    # I

    .prologue
    .line 1310
    iput p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mData_ch_count:I

    return p1
.end method

.method static synthetic access$5302(Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;
    .param p1, "x1"    # I

    .prologue
    .line 1310
    iput p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mVisual_radio_ch_count:I

    return p1
.end method

.method static synthetic access$5400(Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    .prologue
    .line 1310
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mTotal_ch_count:I

    return v0
.end method

.method static synthetic access$5402(Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;
    .param p1, "x1"    # I

    .prologue
    .line 1310
    iput p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mTotal_ch_count:I

    return p1
.end method


# virtual methods
.method public GetAudioChannelCount()I
    .locals 1

    .prologue
    .line 1319
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mAudio_ch_count:I

    return v0
.end method

.method public GetDataChannelCount()I
    .locals 1

    .prologue
    .line 1320
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mData_ch_count:I

    return v0
.end method

.method public GetTotalChannelCount()I
    .locals 1

    .prologue
    .line 1322
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mTotal_ch_count:I

    return v0
.end method

.method public GetVideoChannelCount()I
    .locals 1

    .prologue
    .line 1318
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mVideo_ch_count:I

    return v0
.end method

.method public GetVisualChannelCount()I
    .locals 1

    .prologue
    .line 1321
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mVisual_radio_ch_count:I

    return v0
.end method
