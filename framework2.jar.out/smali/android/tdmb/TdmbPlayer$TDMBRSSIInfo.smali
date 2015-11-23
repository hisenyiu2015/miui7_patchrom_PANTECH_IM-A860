.class public Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;
.super Ljava/lang/Object;
.source "TdmbPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tdmb/TdmbPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TDMBRSSIInfo"
.end annotation


# instance fields
.field private mPCBER:I

.field private mRSBER:I

.field private mRSSI:I

.field private mRxPowerLevel:I

.field private mSNR:I

.field final synthetic this$0:Landroid/tdmb/TdmbPlayer;


# direct methods
.method public constructor <init>(Landroid/tdmb/TdmbPlayer;)V
    .locals 0

    .prologue
    .line 2085
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->this$0:Landroid/tdmb/TdmbPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$5902(Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;
    .param p1, "x1"    # I

    .prologue
    .line 2085
    iput p1, p0, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mSNR:I

    return p1
.end method

.method static synthetic access$6002(Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;
    .param p1, "x1"    # I

    .prologue
    .line 2085
    iput p1, p0, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mPCBER:I

    return p1
.end method

.method static synthetic access$6102(Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;
    .param p1, "x1"    # I

    .prologue
    .line 2085
    iput p1, p0, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mRSBER:I

    return p1
.end method

.method static synthetic access$6202(Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;
    .param p1, "x1"    # I

    .prologue
    .line 2085
    iput p1, p0, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mRSSI:I

    return p1
.end method

.method static synthetic access$6302(Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;
    .param p1, "x1"    # I

    .prologue
    .line 2085
    iput p1, p0, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mRxPowerLevel:I

    return p1
.end method


# virtual methods
.method public GetPCBER()I
    .locals 1

    .prologue
    .line 2094
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mPCBER:I

    return v0
.end method

.method public GetRSBER()I
    .locals 1

    .prologue
    .line 2095
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mRSBER:I

    return v0
.end method

.method public GetRSSI()I
    .locals 1

    .prologue
    .line 2096
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mRSSI:I

    return v0
.end method

.method public GetRxPowerLevel()I
    .locals 1

    .prologue
    .line 2097
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mRxPowerLevel:I

    return v0
.end method

.method public GetSNR()I
    .locals 1

    .prologue
    .line 2093
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mSNR:I

    return v0
.end method
