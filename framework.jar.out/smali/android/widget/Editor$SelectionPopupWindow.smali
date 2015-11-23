.class Landroid/widget/Editor$SelectionPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x10900aa


# instance fields
.field private mAllTextView:Landroid/widget/TextView;

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mPasteTextView:Landroid/widget/TextView;

.field private mReplaceTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    .line 3051
    iput-object p1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 3051
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 7
    .param p1, "positionY"    # I

    .prologue
    .line 3243
    if-gez p1, :cond_0

    .line 3244
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionPopupWindow;->getTextOffset()I

    move-result v3

    .line 3245
    .local v3, "offset":I
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 3246
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 3247
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr p1, v5

    .line 3249
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    add-int/2addr p1, v5

    .line 3252
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    iget v6, v6, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3254
    .local v0, "handle":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr p1, v5

    .line 3257
    .end local v0    # "handle":Landroid/graphics/drawable/Drawable;
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "offset":I
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3258
    .local v4, "statusBarHeight":I
    if-ge p1, v4, :cond_1

    .line 3259
    move p1, v4

    .line 3262
    :cond_1
    return p1
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    .line 3062
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3064
    iget-object v0, p0, Landroid/widget/Editor$SelectionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3065
    iget-object v0, p0, Landroid/widget/Editor$SelectionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3066
    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 3233
    iget-object v0, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 3238
    iget-object v0, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected initContentView()V
    .locals 19

    .prologue
    .line 3071
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 3072
    .local v4, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v2, v14}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 3073
    .local v2, "horizontalscrollview":Landroid/widget/HorizontalScrollView;
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 3078
    const/16 v11, 0x3e

    .line 3079
    .local v11, "minHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v9, v14, Landroid/util/DisplayMetrics;->density:F

    .line 3080
    .local v9, "mScale":F
    int-to-float v14, v11

    mul-float/2addr v14, v9

    float-to-int v1, v14

    .line 3082
    .local v1, "calWidth":I
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 3083
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3084
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x10806a2

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3085
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 3086
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 3088
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v14}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 3090
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/Editor$SelectionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3092
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3097
    .local v13, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    const v14, 0x10900aa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mAllTextView:Landroid/widget/TextView;

    .line 3098
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mAllTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3099
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionPopupWindow;->mAllTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3100
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mAllTextView:Landroid/widget/TextView;

    const v15, 0x104000d

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 3101
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mAllTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3102
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mAllTextView:Landroid/widget/TextView;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x108060b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3104
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mAllTextView:Landroid/widget/TextView;

    const v15, 0x10805eb

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3106
    const v14, 0x10900aa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    .line 3107
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3108
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3109
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const v15, 0x1040003

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 3110
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3111
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1080607

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3112
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const v15, 0x10805eb

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3114
    const v14, 0x10900aa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 3115
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3116
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3117
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const v15, 0x1040001

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 3118
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3119
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1080606

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3120
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const v15, 0x10805eb

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3122
    const v14, 0x10900aa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 3123
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3124
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3125
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v15, 0x104000b

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 3126
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3127
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x108060a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3128
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v15, 0x10805eb

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3130
    const v14, 0x10900aa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    .line 3131
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3132
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3133
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v15, 0x104042b

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 3134
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3135
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1080605

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3136
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v15, 0x10805eb

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3138
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v14, v14, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v14, v14, Landroid/widget/Editor;->mSelectionActionMode:Landroid/widget/Editor$EditorActionMode;

    if-eqz v14, :cond_2

    .line 3139
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v14, v14, Landroid/widget/Editor;->mSelectionActionMode:Landroid/widget/Editor$EditorActionMode;

    invoke-virtual {v14}, Landroid/widget/Editor$EditorActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v8

    .line 3140
    .local v8, "mMenu":Landroid/view/Menu;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/view/Menu;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 3141
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v8}, Landroid/view/Menu;->size()I

    move-result v14

    if-ge v3, v14, :cond_2

    .line 3143
    invoke-interface {v8, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 3144
    .local v10, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v10}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3145
    .local v5, "itemIcon":Landroid/graphics/drawable/Drawable;
    invoke-interface {v10}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 3146
    .local v6, "itemId":I
    invoke-interface {v10}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    .line 3148
    .local v7, "itemTiele":Ljava/lang/CharSequence;
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, ""

    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 3149
    const v14, 0x10900aa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 3150
    .local v12, "tvItem":Landroid/widget/TextView;
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3151
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3152
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3153
    if-eqz v5, :cond_0

    .line 3154
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v5, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3155
    const v14, 0x10805eb

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3158
    :cond_0
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setId(I)V

    .line 3159
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3160
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3141
    .end local v12    # "tvItem":Landroid/widget/TextView;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3166
    .end local v3    # "i":I
    .end local v5    # "itemIcon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "itemId":I
    .end local v7    # "itemTiele":Ljava/lang/CharSequence;
    .end local v8    # "mMenu":Landroid/view/Menu;
    .end local v10    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v15, 0x10806a6

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 3167
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3209
    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3210
    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1020022

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3211
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionPopupWindow;->hide()V

    .line 3229
    :cond_0
    :goto_0
    return-void

    .line 3212
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3213
    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1020020

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3214
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionPopupWindow;->hide()V

    goto :goto_0

    .line 3215
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3216
    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1020021

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3217
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionPopupWindow;->hide()V

    goto :goto_0

    .line 3218
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->mAllTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->selectAllText()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3219
    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    # invokes: Landroid/widget/Editor;->setShowSuggestionSpan(Z)V
    invoke-static {v1, v2}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;Z)V

    .line 3220
    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x102001f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    goto :goto_0

    .line 3221
    :cond_4
    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v1}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isShowSuggestionSpan()Z
    invoke-static {v1}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3222
    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 3223
    .local v0, "middle":I
    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 3224
    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3225
    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->showSuggestions()V

    goto/16 :goto_0

    .line 3226
    .end local v0    # "middle":I
    :cond_5
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v1, :cond_0

    .line 3227
    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v2, v1, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v3, v1, Landroid/widget/Editor;->mSelectionActionMode:Landroid/widget/Editor$EditorActionMode;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v2, v3, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    goto/16 :goto_0
.end method

.method public show()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 3171
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canPaste()Z

    move-result v2

    .line 3172
    .local v2, "canPaste":Z
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canCut()Z

    move-result v1

    .line 3173
    .local v1, "canCut":Z
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    .line 3174
    .local v0, "canCopy":Z
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isShowSuggestionSpan()Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 3176
    .local v3, "canSuggest":Z
    :goto_0
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->mAllTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3177
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->mAllTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3180
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    .line 3181
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3186
    :goto_1
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    .line 3187
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3192
    :goto_2
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 3193
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3198
    :goto_3
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    .line 3199
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3204
    :goto_4
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    .line 3205
    return-void

    .end local v3    # "canSuggest":Z
    :cond_1
    move v3, v4

    .line 3174
    goto :goto_0

    .line 3183
    .restart local v3    # "canSuggest":Z
    :cond_2
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 3189
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 3195
    :cond_4
    iget-object v5, p0, Landroid/widget/Editor$SelectionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 3201
    :cond_5
    iget-object v4, p0, Landroid/widget/Editor$SelectionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
