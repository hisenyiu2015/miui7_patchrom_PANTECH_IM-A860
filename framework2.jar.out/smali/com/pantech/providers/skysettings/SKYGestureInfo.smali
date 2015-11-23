.class public Lcom/pantech/providers/skysettings/SKYGestureInfo;
.super Ljava/lang/Object;
.source "SKYGestureInfo.java"


# instance fields
.field public mCategory:Ljava/lang/String;

.field public mCategoryURI:Ljava/lang/String;

.field public mDefault:I

.field public mGesture:Landroid/gesture/Gesture;

.field public mID:I

.field public mIntentURI:Ljava/lang/String;

.field public mScore:I

.field public mTitle:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/pantech/providers/skysettings/SKYGestureInfo;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/pantech/providers/skysettings/SKYGestureInfo;

    invoke-direct {v0}, Lcom/pantech/providers/skysettings/SKYGestureInfo;-><init>()V

    .line 21
    .local v0, "info":Lcom/pantech/providers/skysettings/SKYGestureInfo;
    iget v1, p0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mID:I

    iput v1, v0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mID:I

    .line 22
    iget v1, p0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mDefault:I

    iput v1, v0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mDefault:I

    .line 23
    iget v1, p0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mType:I

    iput v1, v0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mType:I

    .line 24
    iget-object v1, p0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mCategory:Ljava/lang/String;

    iput-object v1, v0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mCategory:Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mTitle:Ljava/lang/String;

    .line 26
    iget v1, p0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mScore:I

    iput v1, v0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mScore:I

    .line 27
    iget-object v1, p0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mIntentURI:Ljava/lang/String;

    iput-object v1, v0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mIntentURI:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mCategoryURI:Ljava/lang/String;

    iput-object v1, v0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mCategoryURI:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mGesture:Landroid/gesture/Gesture;

    iput-object v1, v0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mGesture:Landroid/gesture/Gesture;

    .line 31
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/pantech/providers/skysettings/SKYGestureInfo;->clone()Lcom/pantech/providers/skysettings/SKYGestureInfo;

    move-result-object v0

    return-object v0
.end method
