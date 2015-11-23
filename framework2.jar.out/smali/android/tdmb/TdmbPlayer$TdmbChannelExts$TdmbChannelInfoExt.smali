.class public Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;
.super Ljava/lang/Object;
.source "TdmbPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tdmb/TdmbPlayer$TdmbChannelExts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TdmbChannelInfoExt"
.end annotation


# instance fields
.field EnsembleId:S

.field reserved1:I

.field reserved2:I

.field reserved3:I

.field reserved4:C

.field reserved5:Ljava/lang/String;

.field final synthetic this$1:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;


# direct methods
.method public constructor <init>(Landroid/tdmb/TdmbPlayer$TdmbChannelExts;)V
    .locals 0

    .prologue
    .line 1375
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;->this$1:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
