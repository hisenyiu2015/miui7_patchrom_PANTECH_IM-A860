.class public Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;
.super Ljava/lang/Object;
.source "SkyWifiDhcpLogInfo.java"


# instance fields
.field public mID:I

.field public mID_bak:I

.field public mIpAddress:Ljava/lang/String;

.field public mMacAddress:Ljava/lang/String;

.field public mMacAddress_bak:Ljava/lang/String;

.field public mTime:J

.field public mTime_bak:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cloneFail()Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;

    invoke-direct {v0}, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;-><init>()V

    .line 39
    .local v0, "info":Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;
    iget v1, p0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mID:I

    iput v1, v0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mID:I

    .line 41
    iget-wide v1, p0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mTime:J

    iput-wide v1, v0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mTime:J

    .line 43
    iget-object v1, p0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mMacAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mMacAddress:Ljava/lang/String;

    .line 46
    return-object v0
.end method

.method public cloneFailBak()Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;

    invoke-direct {v0}, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;-><init>()V

    .line 52
    .local v0, "info":Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;
    iget v1, p0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mID_bak:I

    iput v1, v0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mID_bak:I

    .line 54
    iget-wide v1, p0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mTime_bak:J

    iput-wide v1, v0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mTime_bak:J

    .line 56
    iget-object v1, p0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mMacAddress_bak:Ljava/lang/String;

    iput-object v1, v0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mMacAddress_bak:Ljava/lang/String;

    .line 59
    return-object v0
.end method

.method public cloneSuccess()Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;

    invoke-direct {v0}, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;-><init>()V

    .line 27
    .local v0, "info":Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;
    iget v1, p0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mID:I

    iput v1, v0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mID:I

    .line 29
    iget-wide v1, p0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mTime:J

    iput-wide v1, v0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mTime:J

    .line 31
    iget-object v1, p0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mMacAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/pantech/providers/skynetworksettings/SkyWifiDhcpLogInfo;->mMacAddress:Ljava/lang/String;

    .line 33
    return-object v0
.end method
