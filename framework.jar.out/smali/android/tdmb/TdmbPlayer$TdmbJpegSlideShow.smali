.class public Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;
.super Ljava/lang/Object;
.source "TdmbPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tdmb/TdmbPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TdmbJpegSlideShow"
.end annotation


# instance fields
.field private mDx:I

.field private mDy:I

.field private mEnable:Z

.field private mX:I

.field private mY:I

.field final synthetic this$0:Landroid/tdmb/TdmbPlayer;


# direct methods
.method public constructor <init>(Landroid/tdmb/TdmbPlayer;)V
    .locals 0

    .prologue
    .line 2163
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->this$0:Landroid/tdmb/TdmbPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetJpegSlideShowDx()I
    .locals 1

    .prologue
    .line 2193
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->mDx:I

    return v0
.end method

.method public GetJpegSlideShowDy()I
    .locals 1

    .prologue
    .line 2195
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->mDy:I

    return v0
.end method

.method public GetJpegSlideShowEnable()Z
    .locals 1

    .prologue
    .line 2171
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->mEnable:Z

    return v0
.end method

.method public GetJpegSlideShowXorg()I
    .locals 1

    .prologue
    .line 2189
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->mX:I

    return v0
.end method

.method public GetJpegSlideShowYorg()I
    .locals 1

    .prologue
    .line 2191
    iget v0, p0, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->mY:I

    return v0
.end method

.method public SetJpegSlideShowEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2173
    iput-boolean p1, p0, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->mEnable:Z

    return-void
.end method

.method public SetJpegSlideShowWindow(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 2183
    iput p1, p0, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->mX:I

    .line 2184
    iput p2, p0, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->mY:I

    .line 2185
    iput p3, p0, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->mDx:I

    .line 2186
    iput p4, p0, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->mDy:I

    .line 2187
    return-void
.end method
