.class public Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
.super Ljava/lang/Object;
.source "SkyWifiLogInfo.java"


# instance fields
.field public mErrorCode:Ljava/lang/String;

.field public mErrorCode_bak:Ljava/lang/String;

.field public mErrorType:Ljava/lang/String;

.field public mErrorType_bak:Ljava/lang/String;

.field public mID:I

.field public mID_bak:I

.field public mIpAddress:Ljava/lang/String;

.field public mKeyType:Ljava/lang/String;

.field public mKeyType_bak:Ljava/lang/String;

.field public mLeaseDuration:Ljava/lang/String;

.field public mMacAddress:Ljava/lang/String;

.field public mMacAddress_bak:Ljava/lang/String;

.field public mSSID:Ljava/lang/String;

.field public mSSID_bak:Ljava/lang/String;

.field public mTime:J

.field public mTime_bak:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cloneFail()Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;

    invoke-direct {v0}, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;-><init>()V

    .line 40
    .local v0, "info":Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    iget v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mID:I

    iput v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mID:I

    .line 41
    iget-object v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mSSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mSSID:Ljava/lang/String;

    .line 42
    iget-wide v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mTime:J

    iput-wide v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mTime:J

    .line 43
    iget-object v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mKeyType:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mKeyType:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mMacAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mMacAddress:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mErrorType:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mErrorType:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mErrorCode:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mErrorCode:Ljava/lang/String;

    .line 48
    return-object v0
.end method

.method public cloneFailBak()Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;

    invoke-direct {v0}, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;-><init>()V

    .line 54
    .local v0, "info":Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    iget v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mID_bak:I

    iput v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mID_bak:I

    .line 55
    iget-object v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mSSID_bak:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mSSID_bak:Ljava/lang/String;

    .line 56
    iget-wide v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mTime_bak:J

    iput-wide v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mTime_bak:J

    .line 57
    iget-object v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mKeyType_bak:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mKeyType_bak:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mMacAddress_bak:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mMacAddress_bak:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mErrorType_bak:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mErrorType_bak:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mErrorCode_bak:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mErrorCode_bak:Ljava/lang/String;

    .line 62
    return-object v0
.end method

.method public cloneSuccess()Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;

    invoke-direct {v0}, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;-><init>()V

    .line 28
    .local v0, "info":Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    iget v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mID:I

    iput v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mID:I

    .line 29
    iget-object v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mSSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mSSID:Ljava/lang/String;

    .line 30
    iget-wide v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mTime:J

    iput-wide v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mTime:J

    .line 31
    iget-object v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mKeyType:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mKeyType:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mMacAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mMacAddress:Ljava/lang/String;

    .line 34
    return-object v0
.end method
