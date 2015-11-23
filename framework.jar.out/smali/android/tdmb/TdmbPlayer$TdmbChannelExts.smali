.class public Landroid/tdmb/TdmbPlayer$TdmbChannelExts;
.super Landroid/tdmb/TdmbPlayer$TdmbChannels;
.source "TdmbPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tdmb/TdmbPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TdmbChannelExts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;
    }
.end annotation


# instance fields
.field public channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

.field final synthetic this$0:Landroid/tdmb/TdmbPlayer;


# direct methods
.method public constructor <init>(Landroid/tdmb/TdmbPlayer;)V
    .locals 0

    .prologue
    .line 1374
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->this$0:Landroid/tdmb/TdmbPlayer;

    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer$TdmbChannels;-><init>(Landroid/tdmb/TdmbPlayer;)V

    .line 1375
    return-void
.end method


# virtual methods
.method public GetEnsembleId(I)S
    .locals 1
    .param p1, "chIdx"    # I

    .prologue
    .line 1387
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    aget-object v0, v0, p1

    iget-short v0, v0, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;->EnsembleId:S

    return v0
.end method

.method public GetReserved1(I)I
    .locals 1
    .param p1, "chIdx"    # I

    .prologue
    .line 1391
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;->reserved1:I

    return v0
.end method

.method public GetReserved2(I)I
    .locals 1
    .param p1, "chIdx"    # I

    .prologue
    .line 1395
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;->reserved2:I

    return v0
.end method

.method public GetReserved3(I)I
    .locals 1
    .param p1, "chIdx"    # I

    .prologue
    .line 1399
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;->reserved3:I

    return v0
.end method

.method public GetReserved4(I)C
    .locals 1
    .param p1, "chIdx"    # I

    .prologue
    .line 1403
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    aget-object v0, v0, p1

    iget-char v0, v0, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;->reserved4:C

    return v0
.end method

.method public GetReserved5(I)Ljava/lang/String;
    .locals 1
    .param p1, "chIdx"    # I

    .prologue
    .line 1407
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;->reserved5:Ljava/lang/String;

    return-object v0
.end method
