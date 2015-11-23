.class public Landroid/tdmb/TdmbPlayer$TdmbChannels;
.super Ljava/lang/Object;
.source "TdmbPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tdmb/TdmbPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TdmbChannels"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;
    }
.end annotation


# instance fields
.field public channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

.field private mTotalChannelNum:I

.field final synthetic this$0:Landroid/tdmb/TdmbPlayer;


# direct methods
.method public constructor <init>(Landroid/tdmb/TdmbPlayer;)V
    .locals 0

    .prologue
    .line 1327
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannels;->this$0:Landroid/tdmb/TdmbPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetChannelChannelName(I)Ljava/lang/String;
    .locals 1
    .param p1, "chIdx"    # I

    .prologue
    .line 1361
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannels;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;->ChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public GetChannelFrequency(I)I
    .locals 1
    .param p1, "chIdx"    # I

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannels;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;->Frequency:I

    return v0
.end method

.method public GetChannelID(I)I
    .locals 1
    .param p1, "chIdx"    # I

    .prologue
    .line 1345
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannels;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;->ChannelID:I

    return v0
.end method

.method public GetChannelSID(I)J
    .locals 2
    .param p1, "chIdx"    # I

    .prologue
    .line 1349
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannels;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    aget-object v0, v0, p1

    iget-wide v0, v0, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;->SId:J

    return-wide v0
.end method

.method public GetChannelServiceName(I)Ljava/lang/String;
    .locals 1
    .param p1, "chIdx"    # I

    .prologue
    .line 1357
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannels;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;->ServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public GetChannelSubChId(I)I
    .locals 1
    .param p1, "chIdx"    # I

    .prologue
    .line 1369
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannels;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;->SubChId:I

    return v0
.end method

.method public GetChannelType(I)S
    .locals 1
    .param p1, "chIdx"    # I

    .prologue
    .line 1353
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannels;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    aget-object v0, v0, p1

    iget-short v0, v0, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;->ChannelType:S

    return v0
.end method
