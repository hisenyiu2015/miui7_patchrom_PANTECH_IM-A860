.class public Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;
.super Ljava/lang/Object;
.source "TdmbPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tdmb/TdmbPlayer$TdmbChannels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TdmbChannelInfo"
.end annotation


# instance fields
.field ChannelID:I

.field ChannelName:Ljava/lang/String;

.field ChannelType:S

.field Frequency:I

.field SId:J

.field ServiceName:Ljava/lang/String;

.field SubChId:I

.field final synthetic this$1:Landroid/tdmb/TdmbPlayer$TdmbChannels;


# direct methods
.method public constructor <init>(Landroid/tdmb/TdmbPlayer$TdmbChannels;)V
    .locals 0

    .prologue
    .line 1331
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;->this$1:Landroid/tdmb/TdmbPlayer$TdmbChannels;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
