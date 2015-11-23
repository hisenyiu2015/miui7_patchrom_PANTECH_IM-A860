.class Landroid/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# static fields
.field private static final ATTRS:[I

.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x4

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final OVERLAY_POSITION:I = 0x5

.field private static final PREVIEW_BACKGROUND_LEFT:I = 0x3

.field private static final PREVIEW_BACKGROUND_RIGHT:I = 0x4

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAP_TIMEOUT:J

.field private static final TEXT_COLOR:I = 0x0

.field private static final THUMB_DRAWABLE:I = 0x1

.field private static TOP:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRACK_DRAWABLE:I = 0x2


# instance fields
.field private mAlwaysShow:Z

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private final mDeferStartDrag:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHasPendingDrag:Z

.field private final mHasTrackImage:Z

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mIsPantechTheme:Z

.field private mLayoutFromRight:Z

.field private final mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/widget/ImageView;

.field private final mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/FastScroller;->ATTRS:[I

    .line 106
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    .line 1533
    new-instance v0, Landroid/widget/FastScroller$4;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    .line 1549
    new-instance v0, Landroid/widget/FastScroller$5;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    .line 1565
    new-instance v0, Landroid/widget/FastScroller$6;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    .line 1581
    new-instance v0, Landroid/widget/FastScroller$7;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    return-void

    .line 80
    :array_0
    .array-data 4
        0x1010359
        0x1010336
        0x1010339
        0x1010337
        0x1010338
        0x101033a
    .end array-data
.end method

.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 18
    .param p1, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 252
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 109
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 110
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 124
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/FastScroller;->mPreviewResId:[I

    .line 157
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 160
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 171
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/FastScroller;->mIsPantechTheme:Z

    .line 218
    new-instance v14, Landroid/widget/FastScroller$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/FastScroller$1;-><init>(Landroid/widget/FastScroller;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    .line 235
    new-instance v14, Landroid/widget/FastScroller$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/FastScroller$2;-><init>(Landroid/widget/FastScroller;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 245
    new-instance v14, Landroid/widget/FastScroller$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/FastScroller$3;-><init>(Landroid/widget/FastScroller;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 253
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 257
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    .line 259
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 260
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    sget-object v15, Landroid/widget/FastScroller;->ATTRS:[I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 262
    .local v7, "ta":Landroid/content/res/TypedArray;
    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 263
    .local v12, "trackImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 266
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 267
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    const v15, 0x1010482

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v4, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 269
    iget v14, v4, Landroid/util/TypedValue;->data:I

    if-eqz v14, :cond_4

    .line 270
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/FastScroller;->mIsPantechTheme:Z

    .line 276
    :goto_0
    const/4 v13, 0x0

    .line 279
    .local v13, "width":I
    const/4 v14, 0x2

    invoke-virtual {v7, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 280
    .local v11, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_5

    .line 281
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/FastScroller;->mHasTrackImage:Z

    .line 282
    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v14, v12}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 284
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 289
    :goto_1
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 290
    .local v10, "thumbImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 293
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 294
    .local v9, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_1

    .line 295
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/FastScroller;->mIsPantechTheme:Z

    if-eqz v14, :cond_0

    .line 299
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 303
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v14, v10}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 304
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 308
    :cond_1
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    if-lez v14, :cond_2

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    if-gtz v14, :cond_3

    .line 309
    :cond_2
    const v14, 0x1050019

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 310
    .local v3, "minWidth":I
    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 311
    const v14, 0x105001a

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 313
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 316
    .end local v3    # "minWidth":I
    :cond_3
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FastScroller;->mWidth:I

    .line 318
    const v14, 0x1050016

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 319
    .local v5, "previewSize":I
    new-instance v14, Landroid/widget/ImageView;

    invoke-direct {v14, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 320
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v14, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v14, v5}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 325
    const v14, 0x1050018

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/FastScroller;->mPreviewPadding:I

    .line 327
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FastScroller;->mPreviewPadding:I

    sub-int v15, v5, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 328
    .local v8, "textMinSize":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 329
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 332
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 333
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 334
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mPreviewResId:[I

    const/4 v15, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    aput v16, v14, v15

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mPreviewResId:[I

    const/4 v15, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    aput v16, v14, v15

    .line 339
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/FastScroller;->mOverlayPosition:I

    .line 340
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 343
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 346
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/FastScroller;->mIsPantechTheme:Z

    if-eqz v14, :cond_6

    .line 347
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/FastScroller;->mState:I

    .line 355
    :goto_2
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v15, 0xb

    if-lt v14, v15, :cond_7

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    .line 358
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 359
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 361
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 362
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 363
    return-void

    .line 272
    .end local v5    # "previewSize":I
    .end local v8    # "textMinSize":I
    .end local v9    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "thumbImage":Landroid/widget/ImageView;
    .end local v11    # "trackDrawable":Landroid/graphics/drawable/Drawable;
    .end local v13    # "width":I
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/FastScroller;->mIsPantechTheme:Z

    goto/16 :goto_0

    .line 286
    .restart local v11    # "trackDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "width":I
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/FastScroller;->mHasTrackImage:Z

    goto/16 :goto_1

    .line 350
    .restart local v5    # "previewSize":I
    .restart local v8    # "textMinSize":I
    .restart local v9    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "thumbImage":Landroid/widget/ImageView;
    :cond_6
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/FastScroller;->mState:I

    goto :goto_2

    .line 355
    :cond_7
    const/4 v14, 0x0

    goto :goto_3
.end method

.method static synthetic access$000(Landroid/widget/FastScroller;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/FastScroller;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/FastScroller;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/FastScroller;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/FastScroller;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/FastScroller;

    .prologue
    .line 51
    iget v0, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/FastScroller;F)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/FastScroller;
    .param p1, "x1"    # F

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/FastScroller;F)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/FastScroller;
    .param p1, "x1"    # F

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->scrollTo(F)V

    return-void
.end method

.method static synthetic access$502(Landroid/widget/FastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/FastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mHasPendingDrag:Z

    return p1
.end method

.method static synthetic access$600(Landroid/widget/FastScroller;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/FastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/FastScroller;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/FastScroller;

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$702(Landroid/widget/FastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/FastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1526
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1597
    sget-object v4, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1598
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1599
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1600
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1601
    .local v0, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v7

    aput-object v3, v4, v8

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .prologue
    .line 1519
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 570
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 571
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 572
    return-void

    .line 571
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1293
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 1295
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 1296
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1299
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1301
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1304
    :cond_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 1305
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1267
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1269
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1270
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1271
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    .line 1279
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1280
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mHasPendingDrag:Z

    .line 1281
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ta"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 506
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 508
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 509
    .local v2, "res":Landroid/content/res/Resources;
    const v6, 0x1050016

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 510
    .local v0, "minSize":I
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 511
    .local v3, "textColor":Landroid/content/res/ColorStateList;
    const v6, 0x1050017

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v4, v6

    .line 512
    .local v4, "textSize":F
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 513
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 515
    invoke-virtual {v5, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 516
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 517
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 518
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 519
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 522
    iget-object v6, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 524
    return-object v5
.end method

.method private getPosFromItemCount(III)F
    .locals 15
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1195
    iget-object v13, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_0

    iget-object v13, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v13, :cond_1

    .line 1196
    :cond_0
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1199
    :cond_1
    iget-object v13, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_4

    iget-object v13, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v13, :cond_4

    iget-object v13, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v13, v13

    if-lez v13, :cond_4

    const/4 v2, 0x1

    .line 1201
    .local v2, "hasSections":Z
    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v13, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    if-nez v13, :cond_5

    .line 1202
    :cond_2
    move/from16 v0, p1

    int-to-float v13, v0

    sub-int v14, p3, p2

    int-to-float v14, v14

    div-float v9, v13, v14

    .line 1259
    :cond_3
    :goto_1
    return v9

    .line 1199
    .end local v2    # "hasSections":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1206
    .restart local v2    # "hasSections":Z
    :cond_5
    iget v13, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    sub-int p1, p1, v13

    .line 1207
    if-gez p1, :cond_6

    .line 1208
    const/4 v9, 0x0

    goto :goto_1

    .line 1210
    :cond_6
    iget v13, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    sub-int p3, p3, v13

    .line 1213
    iget-object v13, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1215
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v13

    if-nez v13, :cond_8

    .line 1216
    :cond_7
    const/4 v3, 0x0

    .line 1222
    .local v3, "incrementalPos":F
    :goto_2
    iget-object v13, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v10

    .line 1223
    .local v10, "section":I
    iget-object v13, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    .line 1224
    .local v12, "sectionPos":I
    iget-object v13, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v11, v13

    .line 1226
    .local v11, "sectionCount":I
    add-int/lit8 v13, v11, -0x1

    if-ge v10, v13, :cond_a

    .line 1228
    add-int/lit8 v13, v10, 0x1

    if-ge v13, v11, :cond_9

    .line 1229
    iget-object v13, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v10, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    .line 1233
    .local v6, "nextSectionPos":I
    :goto_3
    sub-int v8, v6, v12

    .line 1240
    .end local v6    # "nextSectionPos":I
    .local v8, "positionsInSection":I
    :goto_4
    if-nez v8, :cond_b

    .line 1241
    const/4 v7, 0x0

    .line 1247
    .local v7, "posWithinSection":F
    :goto_5
    int-to-float v13, v10

    add-float/2addr v13, v7

    int-to-float v14, v11

    div-float v9, v13, v14

    .line 1252
    .local v9, "result":F
    if-lez p1, :cond_3

    add-int v13, p1, p2

    move/from16 v0, p3

    if-ne v13, v0, :cond_3

    .line 1253
    iget-object v13, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    add-int/lit8 v14, p2, -0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1254
    .local v4, "lastChild":Landroid/view/View;
    iget-object v13, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v13}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    iget-object v14, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v5, v13, v14

    .line 1256
    .local v5, "lastItemVisible":F
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v9

    mul-float/2addr v13, v5

    add-float/2addr v9, v13

    goto :goto_1

    .line 1218
    .end local v3    # "incrementalPos":F
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastItemVisible":F
    .end local v7    # "posWithinSection":F
    .end local v8    # "positionsInSection":I
    .end local v9    # "result":F
    .end local v10    # "section":I
    .end local v11    # "sectionCount":I
    .end local v12    # "sectionPos":I
    :cond_8
    iget-object v13, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v13}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v13

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v3, v13, v14

    .restart local v3    # "incrementalPos":F
    goto :goto_2

    .line 1231
    .restart local v10    # "section":I
    .restart local v11    # "sectionCount":I
    .restart local v12    # "sectionPos":I
    :cond_9
    add-int/lit8 v6, p3, -0x1

    .restart local v6    # "nextSectionPos":I
    goto :goto_3

    .line 1235
    .end local v6    # "nextSectionPos":I
    :cond_a
    sub-int v8, p3, v12

    .restart local v8    # "positionsInSection":I
    goto :goto_4

    .line 1243
    :cond_b
    move/from16 v0, p1

    int-to-float v13, v0

    add-float/2addr v13, v3

    int-to-float v14, v12

    sub-float/2addr v13, v14

    int-to-float v14, v8

    div-float v7, v13, v14

    .restart local v7    # "posWithinSection":F
    goto :goto_5
.end method

.method private getPosFromMotionEvent(F)F
    .locals 11
    .param p1, "y"    # F

    .prologue
    const/4 v8, 0x0

    .line 1174
    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1175
    .local v1, "container":Landroid/graphics/Rect;
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 1176
    .local v6, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1178
    .local v0, "bottom":I
    iget-object v7, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1179
    .local v7, "trackImage":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v9

    int-to-float v3, v9

    .line 1180
    .local v3, "min":F
    invoke-virtual {v7}, Landroid/widget/ImageView;->getBottom()I

    move-result v9

    int-to-float v2, v9

    .line 1181
    .local v2, "max":F
    move v4, v3

    .line 1182
    .local v4, "offset":F
    sub-float v5, v2, v3

    .line 1186
    .local v5, "range":F
    cmpg-float v9, v5, v8

    if-gtz v9, :cond_0

    .line 1190
    :goto_0
    return v8

    :cond_0
    sub-float v9, p1, v4

    div-float/2addr v9, v5

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v8, v10}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v8

    goto :goto_0
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 887
    iput-object v3, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 889
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 890
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 891
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    .line 892
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 895
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v2, v0, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 896
    check-cast v2, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 898
    .local v1, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 899
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 900
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 901
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 911
    :cond_1
    :goto_0
    return-void

    .line 903
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 904
    check-cast v2, Landroid/widget/BaseAdapter;

    iput-object v2, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 905
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 906
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 908
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_3
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 909
    iput-object v3, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 1500
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1501
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1503
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1504
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1505
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 1506
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1503
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1508
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1512
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1470
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mHasTrackImage:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/FastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPointInsideX(F)Z
    .locals 3
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1474
    iget-boolean v2, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_2

    .line 1475
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1475
    goto :goto_0

    .line 1477
    :cond_2
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isPointInsideY(F)Z
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 1482
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .line 1483
    .local v1, "offset":F
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float v2, v3, v1

    .line 1484
    .local v2, "top":F
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v3, v1

    .line 1485
    .local v0, "bottom":F
    cmpl-float v3, p1, v2

    if-ltz v3, :cond_0

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private layoutThumb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 724
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 725
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 726
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 727
    return-void
.end method

.method private layoutTrack()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    .line 734
    iget-object v9, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 735
    .local v9, "track":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 736
    .local v6, "thumb":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 737
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 738
    .local v2, "containerWidth":I
    const/high16 v12, -0x80000000

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 739
    .local v11, "widthMeasureSpec":I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 740
    .local v3, "heightMeasureSpec":I
    invoke-virtual {v9, v11, v3}, Landroid/view/View;->measure(II)V

    .line 742
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 743
    .local v10, "trackWidth":I
    if-nez v6, :cond_0

    .line 744
    .local v7, "thumbHalfHeight":I
    :goto_0
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int v4, v12, v13

    .line 745
    .local v4, "left":I
    add-int v5, v4, v10

    .line 746
    .local v5, "right":I
    iget v12, v1, Landroid/graphics/Rect;->top:I

    add-int v8, v12, v7

    .line 747
    .local v8, "top":I
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v12, v7

    .line 748
    .local v0, "bottom":I
    invoke-virtual {v9, v4, v8, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 749
    return-void

    .line 743
    .end local v0    # "bottom":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v7    # "thumbHalfHeight":I
    .end local v8    # "top":I
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v7, v12, 0x2

    goto :goto_0
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 660
    if-nez p2, :cond_0

    .line 661
    const/4 v8, 0x0

    .line 662
    .local v8, "marginLeft":I
    const/4 v10, 0x0

    .line 663
    .local v10, "marginTop":I
    const/4 v9, 0x0

    .line 670
    .local v9, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 671
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 672
    .local v5, "containerWidth":I
    sub-int v15, v5, v8

    sub-int v1, v15, v9

    .line 673
    .local v1, "adjMaxWidth":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 674
    .local v14, "widthMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 675
    .local v6, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v6}, Landroid/view/View;->measure(II)V

    .line 678
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 679
    .local v4, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 680
    .local v13, "width":I
    div-int/lit8 v15, v4, 0xa

    add-int/2addr v15, v10

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v12, v15, v16

    .line 681
    .local v12, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v12, v15

    .line 682
    .local v2, "bottom":I
    sub-int v15, v5, v13

    div-int/lit8 v15, v15, 0x2

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v7, v15, v16

    .line 683
    .local v7, "left":I
    add-int v11, v7, v13

    .line 684
    .local v11, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v12, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 685
    return-void

    .line 665
    .end local v1    # "adjMaxWidth":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerHeight":I
    .end local v5    # "containerWidth":I
    .end local v6    # "heightMeasureSpec":I
    .end local v7    # "left":I
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    .end local v10    # "marginTop":I
    .end local v11    # "right":I
    .end local v12    # "top":I
    .end local v13    # "width":I
    .end local v14    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 666
    .restart local v8    # "marginLeft":I
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 667
    .restart local v10    # "marginTop":I
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .restart local v9    # "marginRight":I
    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 584
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 585
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 586
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 587
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 588
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 590
    iget v1, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 591
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 595
    :goto_0
    return-void

    .line 593
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/FastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 612
    if-nez p3, :cond_0

    .line 613
    const/4 v7, 0x0

    .line 614
    .local v7, "marginLeft":I
    const/4 v9, 0x0

    .line 615
    .local v9, "marginTop":I
    const/4 v8, 0x0

    .line 622
    .local v8, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 623
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 625
    .local v4, "containerWidth":I
    if-nez p2, :cond_1

    .line 626
    move v10, v4

    .line 633
    .local v10, "maxWidth":I
    :goto_1
    sub-int v15, v10, v7

    sub-int v1, v15, v8

    .line 634
    .local v1, "adjMaxWidth":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 635
    .local v14, "widthMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 636
    .local v5, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v5}, Landroid/view/View;->measure(II)V

    .line 639
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 642
    .local v13, "width":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_4

    .line 643
    if-nez p2, :cond_3

    iget v15, v3, Landroid/graphics/Rect;->right:I

    :goto_2
    sub-int v11, v15, v8

    .line 644
    .local v11, "right":I
    sub-int v6, v11, v13

    .line 651
    .local v6, "left":I
    :goto_3
    move v12, v9

    .line 652
    .local v12, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v12, v15

    .line 653
    .local v2, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v12, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 654
    return-void

    .line 617
    .end local v1    # "adjMaxWidth":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerWidth":I
    .end local v5    # "heightMeasureSpec":I
    .end local v6    # "left":I
    .end local v7    # "marginLeft":I
    .end local v8    # "marginRight":I
    .end local v9    # "marginTop":I
    .end local v10    # "maxWidth":I
    .end local v11    # "right":I
    .end local v12    # "top":I
    .end local v13    # "width":I
    .end local v14    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 618
    .restart local v7    # "marginLeft":I
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 619
    .restart local v9    # "marginTop":I
    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->right:I

    .restart local v8    # "marginRight":I
    goto :goto_0

    .line 627
    .restart local v3    # "container":Landroid/graphics/Rect;
    .restart local v4    # "containerWidth":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_2

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v10

    .restart local v10    # "maxWidth":I
    goto :goto_1

    .line 630
    .end local v10    # "maxWidth":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int v10, v4, v15

    .restart local v10    # "maxWidth":I
    goto :goto_1

    .line 643
    .restart local v1    # "adjMaxWidth":I
    .restart local v5    # "heightMeasureSpec":I
    .restart local v13    # "width":I
    .restart local v14    # "widthMeasureSpec":I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    goto :goto_2

    .line 646
    :cond_4
    if-nez p2, :cond_5

    iget v15, v3, Landroid/graphics/Rect;->left:I

    :goto_4
    add-int v6, v15, v7

    .line 647
    .restart local v6    # "left":I
    add-int v11, v6, v13

    .restart local v11    # "right":I
    goto :goto_3

    .line 646
    .end local v6    # "left":I
    .end local v11    # "right":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    goto :goto_4
.end method

.method private onStateDependencyChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 417
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 427
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 428
    return-void

    .line 420
    :cond_1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v1, :cond_0

    .line 421
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_0

    .line 424
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FastScroller;->stop()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 858
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 859
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 860
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    .prologue
    .line 784
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 785
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 786
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 787
    return-void

    .line 784
    .end local v0    # "isPressed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 24
    .param p1, "position"    # F

    .prologue
    .line 922
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    .line 925
    .local v3, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 926
    .local v17, "sections":[Ljava/lang/Object;
    if-nez v17, :cond_3

    const/4 v15, 0x0

    .line 928
    .local v15, "sectionCount":I
    :goto_0
    if-eqz v17, :cond_c

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v15, v0, :cond_c

    .line 929
    int-to-float v0, v15

    move/from16 v21, v0

    mul-float v21, v21, p1

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v15, -0x1

    invoke-static/range {v21 .. v23}, Landroid/util/MathUtils;->constrain(III)I

    move-result v4

    .line 931
    .local v4, "exactSection":I
    move/from16 v20, v4

    .line 932
    .local v20, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v19

    .line 933
    .local v19, "targetIndex":I
    move/from16 v16, v20

    .line 941
    .local v16, "sectionIndex":I
    move v8, v3

    .line 942
    .local v8, "nextIndex":I
    move/from16 v12, v19

    .line 943
    .local v12, "prevIndex":I
    move/from16 v14, v20

    .line 944
    .local v14, "prevSection":I
    add-int/lit8 v11, v20, 0x1

    .line 947
    .local v11, "nextSection":I
    add-int/lit8 v21, v15, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v21, v0

    add-int/lit8 v22, v20, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 952
    :cond_0
    move/from16 v0, v19

    if-ne v8, v0, :cond_2

    .line 954
    :cond_1
    if-lez v20, :cond_2

    .line 955
    add-int/lit8 v20, v20, -0x1

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    .line 957
    move/from16 v0, v19

    if-eq v12, v0, :cond_4

    .line 958
    move/from16 v14, v20

    .line 959
    move/from16 v16, v20

    .line 975
    :cond_2
    :goto_1
    add-int/lit8 v9, v11, 0x1

    .line 977
    .local v9, "nextNextSection":I
    :goto_2
    if-ge v9, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v21

    move/from16 v0, v21

    if-ne v0, v8, :cond_5

    .line 978
    add-int/lit8 v9, v9, 0x1

    .line 979
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 926
    .end local v4    # "exactSection":I
    .end local v8    # "nextIndex":I
    .end local v9    # "nextNextSection":I
    .end local v11    # "nextSection":I
    .end local v12    # "prevIndex":I
    .end local v14    # "prevSection":I
    .end local v15    # "sectionCount":I
    .end local v16    # "sectionIndex":I
    .end local v19    # "targetIndex":I
    .end local v20    # "targetSection":I
    :cond_3
    move-object/from16 v0, v17

    array-length v15, v0

    goto/16 :goto_0

    .line 961
    .restart local v4    # "exactSection":I
    .restart local v8    # "nextIndex":I
    .restart local v11    # "nextSection":I
    .restart local v12    # "prevIndex":I
    .restart local v14    # "prevSection":I
    .restart local v15    # "sectionCount":I
    .restart local v16    # "sectionIndex":I
    .restart local v19    # "targetIndex":I
    .restart local v20    # "targetSection":I
    :cond_4
    if-nez v20, :cond_1

    .line 964
    const/16 v16, 0x0

    .line 965
    goto :goto_1

    .line 986
    .restart local v9    # "nextNextSection":I
    :cond_5
    int-to-float v0, v14

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    div-float v13, v21, v22

    .line 987
    .local v13, "prevPosition":F
    int-to-float v0, v11

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    div-float v10, v21, v22

    .line 988
    .local v10, "nextPosition":F
    if-nez v3, :cond_7

    const v18, 0x7f7fffff    # Float.MAX_VALUE

    .line 989
    .local v18, "snapThreshold":F
    :goto_3
    if-ne v14, v4, :cond_8

    sub-float v21, p1, v13

    cmpg-float v21, v21, v18

    if-gez v21, :cond_8

    .line 990
    move/from16 v19, v12

    .line 997
    :goto_4
    const/16 v21, 0x0

    add-int/lit8 v22, v3, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v19

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 1000
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v5, Landroid/widget/ExpandableListView;

    .line 1002
    .local v5, "expList":Landroid/widget/ExpandableListView;
    iget-boolean v0, v5, Landroid/widget/ExpandableListView;->mIsFastScrollIncludeChild:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 1004
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v19

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1041
    .end local v4    # "exactSection":I
    .end local v5    # "expList":Landroid/widget/ExpandableListView;
    .end local v8    # "nextIndex":I
    .end local v9    # "nextNextSection":I
    .end local v10    # "nextPosition":F
    .end local v11    # "nextSection":I
    .end local v12    # "prevIndex":I
    .end local v13    # "prevPosition":F
    .end local v14    # "prevSection":I
    .end local v18    # "snapThreshold":F
    .end local v19    # "targetIndex":I
    .end local v20    # "targetSection":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mCurrentSection:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    .line 1042
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 1044
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v6

    .line 1045
    .local v6, "hasPreview":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FastScroller;->mShowingPreview:Z

    move/from16 v21, v0

    if-nez v21, :cond_10

    if-eqz v6, :cond_10

    .line 1046
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    .line 1051
    .end local v6    # "hasPreview":Z
    :cond_6
    :goto_6
    return-void

    .line 988
    .restart local v4    # "exactSection":I
    .restart local v8    # "nextIndex":I
    .restart local v9    # "nextNextSection":I
    .restart local v10    # "nextPosition":F
    .restart local v11    # "nextSection":I
    .restart local v12    # "prevIndex":I
    .restart local v13    # "prevPosition":F
    .restart local v14    # "prevSection":I
    .restart local v19    # "targetIndex":I
    .restart local v20    # "targetSection":I
    :cond_7
    const/high16 v21, 0x3e000000    # 0.125f

    int-to-float v0, v3

    move/from16 v22, v0

    div-float v18, v21, v22

    goto :goto_3

    .line 992
    .restart local v18    # "snapThreshold":F
    :cond_8
    sub-int v21, v8, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v22, p1, v13

    mul-float v21, v21, v22

    sub-float v22, v10, v13

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v19, v12, v21

    goto :goto_4

    .line 1008
    .restart local v5    # "expList":Landroid/widget/ExpandableListView;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v19

    invoke-static/range {v21 .. v21}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    goto :goto_5

    .line 1011
    .end local v5    # "expList":Landroid/widget/ExpandableListView;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    check-cast v21, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v19

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_5

    .line 1014
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v19

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView;->setSelection(I)V

    goto/16 :goto_5

    .line 1017
    .end local v4    # "exactSection":I
    .end local v8    # "nextIndex":I
    .end local v9    # "nextNextSection":I
    .end local v10    # "nextPosition":F
    .end local v11    # "nextSection":I
    .end local v12    # "prevIndex":I
    .end local v13    # "prevPosition":F
    .end local v14    # "prevSection":I
    .end local v16    # "sectionIndex":I
    .end local v18    # "snapThreshold":F
    .end local v19    # "targetIndex":I
    .end local v20    # "targetSection":I
    :cond_c
    int-to-float v0, v3

    move/from16 v21, v0

    mul-float v21, v21, p1

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v3, -0x1

    invoke-static/range {v21 .. v23}, Landroid/util/MathUtils;->constrain(III)I

    move-result v7

    .line 1019
    .local v7, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 1020
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v5, Landroid/widget/ExpandableListView;

    .line 1023
    .restart local v5    # "expList":Landroid/widget/ExpandableListView;
    iget-boolean v0, v5, Landroid/widget/ExpandableListView;->mIsFastScrollIncludeChild:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 1025
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v7

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1038
    .end local v5    # "expList":Landroid/widget/ExpandableListView;
    :goto_7
    const/16 v16, -0x1

    .restart local v16    # "sectionIndex":I
    goto/16 :goto_5

    .line 1029
    .end local v16    # "sectionIndex":I
    .restart local v5    # "expList":Landroid/widget/ExpandableListView;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v7

    invoke-static/range {v21 .. v21}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    goto :goto_7

    .line 1032
    .end local v5    # "expList":Landroid/widget/ExpandableListView;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    check-cast v21, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v7

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_7

    .line 1035
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v7

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_7

    .line 1047
    .end local v7    # "index":I
    .restart local v6    # "hasPreview":Z
    .restart local v16    # "sectionIndex":I
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FastScroller;->mShowingPreview:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    if-nez v6, :cond_6

    .line 1048
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 752
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 754
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 755
    const/4 p1, 0x1

    .line 758
    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne p1, v0, :cond_1

    .line 781
    :goto_0
    return-void

    .line 762
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 778
    :goto_1
    iput p1, p0, Landroid/widget/FastScroller;->mState:I

    .line 780
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    goto :goto_0

    .line 764
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToHidden()V

    goto :goto_1

    .line 767
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto :goto_1

    .line 770
    :pswitch_2
    iget v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 771
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    goto :goto_1

    .line 773
    :cond_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto :goto_1

    .line 762
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 21
    .param p1, "position"    # F

    .prologue
    .line 1145
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1146
    .local v3, "container":Landroid/graphics/Rect;
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 1147
    .local v17, "top":I
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 1149
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    .line 1150
    .local v18, "trackImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 1151
    .local v15, "thumbImage":Landroid/widget/ImageView;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getTop()I

    move-result v19

    move/from16 v0, v19

    int-to-float v6, v0

    .line 1152
    .local v6, "min":F
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getBottom()I

    move-result v19

    move/from16 v0, v19

    int-to-float v4, v0

    .line 1153
    .local v4, "max":F
    move v8, v6

    .line 1154
    .local v8, "offset":F
    sub-float v14, v4, v6

    .line 1155
    .local v14, "range":F
    mul-float v19, p1, v14

    add-float v16, v19, v8

    .line 1156
    .local v16, "thumbMiddle":F
    invoke-virtual {v15}, Landroid/widget/ImageView;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v16, v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1158
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlayPosition:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    move/from16 v12, v16

    .line 1161
    .local v12, "previewPos":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 1162
    .local v10, "previewImage":Landroid/widget/ImageView;
    invoke-virtual {v10}, Landroid/widget/ImageView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v9, v19, v20

    .line 1163
    .local v9, "previewHalfHeight":F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v7, v19, v9

    .line 1164
    .local v7, "minP":F
    int-to-float v0, v2

    move/from16 v19, v0

    sub-float v5, v19, v9

    .line 1165
    .local v5, "maxP":F
    invoke-static {v12, v7, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v11

    .line 1166
    .local v11, "previewMiddle":F
    sub-float v13, v11, v9

    .line 1167
    .local v13, "previewTop":F
    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1171
    return-void

    .line 1158
    .end local v5    # "maxP":F
    .end local v7    # "minP":F
    .end local v9    # "previewHalfHeight":F
    .end local v10    # "previewImage":Landroid/widget/ImageView;
    .end local v11    # "previewMiddle":F
    .end local v12    # "previewPos":F
    .end local v13    # "previewTop":F
    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    .line 1288
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mHasPendingDrag:Z

    .line 1289
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    sget-wide v2, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1290
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 21
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1062
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 1063
    .local v11, "sections":[Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1064
    .local v17, "text":Ljava/lang/String;
    if-eqz v11, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1065
    aget-object v10, v11, p1

    .line 1066
    .local v10, "section":Ljava/lang/Object;
    if-eqz v10, :cond_0

    .line 1067
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1071
    .end local v10    # "section":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1072
    .local v2, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 1075
    .local v5, "preview":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1076
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1077
    .local v13, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1084
    .local v15, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1086
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1093
    :cond_1
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v18

    const-wide/16 v19, 0x32

    invoke-virtual/range {v18 .. v20}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v12

    .line 1094
    .local v12, "showTarget":Landroid/animation/Animator;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v13, v0}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v18

    const-wide/16 v19, 0x32

    invoke-virtual/range {v18 .. v20}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v4

    .line 1095
    .local v4, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1098
    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 1099
    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 1100
    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 1101
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 1102
    invoke-static {v5, v2}, Landroid/widget/FastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v7

    .line 1103
    .local v7, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v18, 0x64

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1105
    new-instance v18, Landroid/animation/AnimatorSet;

    invoke-direct/range {v18 .. v18}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 1107
    .local v3, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1111
    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v18

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v19

    sub-int v6, v18, v19

    .line 1116
    .local v6, "previewWidth":I
    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v16

    .line 1117
    .local v16, "targetWidth":I
    move/from16 v0, v16

    if-le v0, v6, :cond_4

    .line 1118
    int-to-float v0, v6

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1119
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v18

    const-wide/16 v19, 0x64

    invoke-virtual/range {v18 .. v20}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 1120
    .local v9, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1126
    .end local v9    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v13}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    .line 1127
    .local v14, "showingWidth":I
    move/from16 v0, v16

    if-le v14, v0, :cond_2

    .line 1128
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v14

    move/from16 v19, v0

    div-float v8, v18, v19

    .line 1129
    .local v8, "scale":F
    invoke-static {v13, v8}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v18

    const-wide/16 v19, 0x64

    invoke-virtual/range {v18 .. v20}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 1130
    .restart local v9    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1133
    .end local v8    # "scale":F
    .end local v9    # "scaleAnim":Landroid/animation/Animator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/AnimatorSet;->start()V

    .line 1135
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    const/16 v18, 0x1

    :goto_2
    return v18

    .line 1079
    .end local v3    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v4    # "hideShowing":Landroid/animation/Animator;
    .end local v6    # "previewWidth":I
    .end local v7    # "resizePreview":Landroid/animation/Animator;
    .end local v12    # "showTarget":Landroid/animation/Animator;
    .end local v13    # "showing":Landroid/widget/TextView;
    .end local v14    # "showingWidth":I
    .end local v15    # "target":Landroid/widget/TextView;
    .end local v16    # "targetWidth":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1080
    .restart local v13    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .restart local v15    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 1122
    .restart local v3    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v4    # "hideShowing":Landroid/animation/Animator;
    .restart local v6    # "previewWidth":I
    .restart local v7    # "resizePreview":Landroid/animation/Animator;
    .restart local v12    # "showTarget":Landroid/animation/Animator;
    .restart local v16    # "targetWidth":I
    :cond_4
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setScaleX(F)V

    goto :goto_1

    .line 1135
    .restart local v14    # "showingWidth":I
    :cond_5
    const/16 v18, 0x0

    goto :goto_2
.end method

.method private transitionToDragging()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x96

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 840
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 841
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 844
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 847
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 850
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 851
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 852
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 854
    iput-boolean v6, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 855
    return-void
.end method

.method private transitionToHidden()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x12c

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 793
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 794
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 797
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    iget-object v6, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v9

    iget-object v6, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 801
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 802
    .local v1, "offset":F
    :goto_0
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v10, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v9

    invoke-static {v3, v1, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 806
    .local v2, "slideOut":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 807
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 808
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 810
    iput-boolean v8, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 811
    return-void

    .line 801
    .end local v1    # "offset":F
    .end local v2    # "slideOut":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v1, v3

    goto :goto_0
.end method

.method private transitionToVisible()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 817
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 818
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 821
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v9, [Landroid/view/View;

    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v7

    iget-object v6, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 823
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v11, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    iget-object v5, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v9

    invoke-static {v3, v10, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 826
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v3, v10, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 829
    .local v2, "slideIn":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 830
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v11, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 831
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 833
    iput-boolean v7, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 834
    return-void
.end method

.method private updateContainerRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000000

    const/4 v4, 0x0

    .line 691
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 692
    .local v1, "list":Landroid/widget/AbsListView;
    invoke-virtual {v1}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 694
    iget-object v0, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 695
    .local v0, "container":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 696
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 697
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 698
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 700
    iget v2, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 701
    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_0

    if-nez v2, :cond_1

    .line 703
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 704
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 705
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 706
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 709
    if-ne v2, v6, :cond_1

    .line 710
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getWidth()I

    move-result v3

    .line 711
    .local v3, "width":I
    iget v4, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 712
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 718
    .end local v3    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 714
    .restart local v3    # "width":I
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private updateLongList(II)V
    .locals 3
    .param p1, "visibleItemCount"    # I
    .param p2, "totalItemCount"    # I

    .prologue
    .line 493
    if-lez p1, :cond_1

    div-int v1, p2, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 495
    .local v0, "longList":Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-eq v1, v0, :cond_0

    .line 496
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 498
    invoke-direct {p0}, Landroid/widget/FastScroller;->onStateDependencyChanged()V

    .line 500
    :cond_0
    return-void

    .line 493
    .end local v0    # "longList":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Landroid/widget/FastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 1606
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1345
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1357
    :cond_0
    :goto_0
    return v3

    .line 1349
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1350
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    :cond_2
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1353
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 1354
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1309
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1341
    :cond_0
    :goto_0
    return v0

    .line 1313
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1315
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1321
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1322
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1323
    const/4 v0, 0x1

    goto :goto_0

    .line 1326
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 1327
    invoke-direct {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    goto :goto_0

    .line 1331
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1332
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1337
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemCountChanged(I)V
    .locals 5
    .param p1, "totalItemCount"    # I

    .prologue
    .line 481
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 482
    .local v2, "visibleItemCount":I
    sub-int v3, p1, v2

    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 483
    .local v1, "hasMoreItems":Z
    :goto_0
    if-eqz v1, :cond_0

    iget v3, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 484
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 485
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, v2, p1}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 488
    .end local v0    # "firstVisibleItem":I
    :cond_0
    invoke-direct {p0, v2, p1}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 489
    return-void

    .line 482
    .end local v1    # "hasMoreItems":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScroll(III)V
    .locals 4
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 863
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 864
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    sub-int v2, p3, p2

    if-lez v2, :cond_2

    move v0, v1

    .line 869
    .local v0, "hasMoreItems":Z
    :cond_2
    if-eqz v0, :cond_3

    iget v2, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v2, v3, :cond_3

    .line 870
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 873
    :cond_3
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 875
    iget v2, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    if-eq v2, p1, :cond_0

    .line 876
    iput p1, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    .line 879
    iget v2, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v2, v3, :cond_0

    .line 880
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 881
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 915
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 477
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 478
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1362
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1456
    :cond_0
    :goto_0
    return v1

    .line 1366
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1370
    :pswitch_0
    iget-boolean v3, p0, Landroid/widget/FastScroller;->mIsPantechTheme:Z

    if-eqz v3, :cond_0

    .line 1371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1377
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1378
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    move v1, v2

    .line 1379
    goto :goto_0

    .line 1382
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 1383
    invoke-direct {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    goto :goto_0

    .line 1391
    :pswitch_1
    iget-boolean v3, p0, Landroid/widget/FastScroller;->mHasPendingDrag:Z

    if-eqz v3, :cond_3

    .line 1393
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1396
    .local v0, "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 1397
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 1399
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    .line 1403
    .end local v0    # "pos":F
    :cond_3
    iget v3, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v3, v5, :cond_0

    .line 1404
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v3, :cond_4

    .line 1408
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1409
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1412
    :cond_4
    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 1413
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    move v1, v2

    .line 1415
    goto :goto_0

    .line 1420
    :pswitch_2
    iget-boolean v3, p0, Landroid/widget/FastScroller;->mHasPendingDrag:Z

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 1421
    invoke-direct {p0, v5}, Landroid/widget/FastScroller;->setState(I)V

    .line 1423
    iget-object v3, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v3, :cond_5

    .line 1424
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1427
    :cond_5
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v3, :cond_6

    .line 1428
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1429
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1432
    :cond_6
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 1433
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    .line 1437
    :cond_7
    iget v3, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v3, v5, :cond_0

    .line 1439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1440
    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 1443
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_8

    .line 1444
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    :cond_8
    move v1, v2

    .line 1447
    goto/16 :goto_0

    .line 1452
    .end local v0    # "pos":F
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 370
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 371
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 372
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 373
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 374
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 398
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 399
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    .line 401
    invoke-direct {p0}, Landroid/widget/FastScroller;->onStateDependencyChanged()V

    .line 403
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 380
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 381
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mEnabled:Z

    .line 383
    invoke-direct {p0}, Landroid/widget/FastScroller;->onStateDependencyChanged()V

    .line 385
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 431
    iget v0, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 432
    iput p1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 434
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 436
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 446
    if-nez p1, :cond_0

    .line 447
    iget-object v4, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    move p1, v3

    .line 451
    :cond_0
    :goto_0
    iget v4, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    if-eq v4, p1, :cond_2

    .line 452
    iput p1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 453
    if-eq p1, v3, :cond_4

    move v4, v3

    :goto_1
    iput-boolean v4, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    .line 455
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    iget-boolean v6, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v6, :cond_5

    :goto_2
    aget v2, v4, v3

    .line 456
    .local v2, "previewResId":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 459
    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 460
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 461
    iget-object v1, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 462
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 463
    iget v3, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    iget v4, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 464
    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 468
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 470
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v2    # "previewResId":I
    :cond_2
    return-void

    .line 447
    :cond_3
    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    move v4, v5

    .line 453
    goto :goto_1

    :cond_5
    move v3, v5

    .line 455
    goto :goto_2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 443
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    .line 533
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    .line 560
    :goto_0
    return-void

    .line 537
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    .line 539
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateContainerRect()V

    .line 541
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutThumb()V

    .line 542
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutTrack()V

    .line 544
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 545
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 546
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 547
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 548
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 550
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 552
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 553
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 554
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 555
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 556
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 559
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    goto :goto_0
.end method
