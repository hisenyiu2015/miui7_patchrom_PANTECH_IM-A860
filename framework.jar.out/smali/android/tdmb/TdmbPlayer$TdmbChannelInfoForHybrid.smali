.class public Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;
.super Ljava/lang/Object;
.source "TdmbPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tdmb/TdmbPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TdmbChannelInfoForHybrid"
.end annotation


# instance fields
.field private mEId:I

.field private mIdx:I

.field private mSCIds:I

.field private mSId:J

.field private mSubCHId:I

.field final synthetic this$0:Landroid/tdmb/TdmbPlayer;


# direct methods
.method public constructor <init>(Landroid/tdmb/TdmbPlayer;)V
    .locals 0

    .prologue
    .line 1279
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->this$0:Landroid/tdmb/TdmbPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;)I
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;

    .prologue
    .line 1279
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mIdx:I

    return v0
.end method

.method static synthetic access$1002(Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;I)I
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;
    .param p1, "x1"    # I

    .prologue
    .line 1279
    iput p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mIdx:I

    return p1
.end method

.method static synthetic access$5502(Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;I)I
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;
    .param p1, "x1"    # I

    .prologue
    .line 1279
    iput p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mEId:I

    return p1
.end method

.method static synthetic access$5602(Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;J)J
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;
    .param p1, "x1"    # J

    .prologue
    .line 1279
    iput-wide p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mSId:J

    return-wide p1
.end method

.method static synthetic access$5702(Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;I)I
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;
    .param p1, "x1"    # I

    .prologue
    .line 1279
    iput p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mSCIds:I

    return p1
.end method

.method static synthetic access$5802(Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;I)I
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;
    .param p1, "x1"    # I

    .prologue
    .line 1279
    iput p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mSubCHId:I

    return p1
.end method


# virtual methods
.method public GetEId()I
    .locals 1

    .prologue
    .line 1289
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mEId:I

    return v0
.end method

.method public GetIdx()I
    .locals 1

    .prologue
    .line 1287
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mIdx:I

    return v0
.end method

.method public GetSCIds()I
    .locals 1

    .prologue
    .line 1291
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mSCIds:I

    return v0
.end method

.method public GetSId()J
    .locals 2

    .prologue
    .line 1288
    iget-wide v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mSId:J

    return-wide v0
.end method

.method public GetSubCHId()I
    .locals 1

    .prologue
    .line 1290
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mSubCHId:I

    return v0
.end method
