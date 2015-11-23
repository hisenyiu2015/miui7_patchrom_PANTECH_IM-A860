.class public Lcom/pantech/server/aot/menu/AotItem;
.super Landroid/widget/LinearLayout;
.source "AotItem.java"

# interfaces
.implements Lcom/pantech/server/aot/drag/DragSource;
.implements Lcom/pantech/server/aot/drag/DropTarget;


# static fields
.field public static final EDIT_MODE:I = 0x1

.field public static final MAX_MODE:I = 0x2

.field public static final NORMAL_MODE:I = 0x0

.field private static final TEXT_FONT_SIZE:I = 0xb

.field private static final TEXT_TOP_MARGIN:I = 0xd


# instance fields
.field mContext:Landroid/content/Context;

.field mMarkImage:Landroid/graphics/drawable/BitmapDrawable;

.field mModeState:I

.field mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotItem;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/pantech/server/aot/menu/AotItem;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotItem;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/pantech/server/aot/menu/AotItem;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotItem;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/pantech/server/aot/menu/AotItem;->init()V

    .line 63
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 66
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pantech/server/aot/menu/AotItem;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v1, "item":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/pantech/server/aot/menu/AotItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 68
    .local v0, "density":F
    const/4 v3, 0x1

    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 70
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    const/16 v3, 0x33

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 72
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 73
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 74
    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x41500000    # 13.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 79
    iput-object v1, p0, Lcom/pantech/server/aot/menu/AotItem;->mTextView:Landroid/widget/TextView;

    .line 80
    iget-object v3, p0, Lcom/pantech/server/aot/menu/AotItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v2}, Lcom/pantech/server/aot/menu/AotItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iput v5, p0, Lcom/pantech/server/aot/menu/AotItem;->mModeState:I

    .line 84
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "source"    # Lcom/pantech/server/aot/drag/DragSource;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "dragView"    # Lcom/pantech/server/aot/drag/DragView;
    .param p7, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 161
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 163
    .local v0, "srcView":Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 164
    const/4 v1, 0x0

    .line 165
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public changeMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 116
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 117
    iput p1, p0, Lcom/pantech/server/aot/menu/AotItem;->mModeState:I

    .line 118
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotItem;->invalidate()V

    .line 120
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 136
    return-void
.end method

.method public estimateDropLocation(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "source"    # Lcom/pantech/server/aot/drag/DragSource;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "dragView"    # Lcom/pantech/server/aot/drag/DragView;
    .param p7, "dragInfo"    # Ljava/lang/Object;
    .param p8, "recycle"    # Landroid/graphics/Rect;

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDragEnter(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Lcom/pantech/server/aot/drag/DragSource;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "dragView"    # Lcom/pantech/server/aot/drag/DragView;
    .param p7, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 146
    return-void
.end method

.method public onDragExit(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Lcom/pantech/server/aot/drag/DragSource;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "dragView"    # Lcom/pantech/server/aot/drag/DragView;
    .param p7, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 156
    return-void
.end method

.method public onDragOver(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Lcom/pantech/server/aot/drag/DragSource;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "dragView"    # Lcom/pantech/server/aot/drag/DragView;
    .param p7, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 151
    return-void
.end method

.method public onDrop(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Lcom/pantech/server/aot/drag/DragSource;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "dragView"    # Lcom/pantech/server/aot/drag/DragView;
    .param p7, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 141
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "success"    # Z

    .prologue
    .line 181
    return-void
.end method

.method public setDragController(Lcom/pantech/server/aot/drag/DragController;)V
    .locals 0
    .param p1, "dragger"    # Lcom/pantech/server/aot/drag/DragController;

    .prologue
    .line 177
    return-void
.end method

.method public setDrawableResource(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "draw"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/pantech/server/aot/menu/AotItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    return-void
.end method

.method public setIdAndFocus(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/pantech/server/aot/menu/AotItem;->setId(I)V

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/server/aot/menu/AotItem;->setFocusable(Z)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusUpId(I)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/pantech/server/aot/menu/AotItem;->setNextFocusDownId(I)V

    .line 110
    if-nez p1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotItem;->requestFocus()Z

    .line 113
    :cond_0
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotItem;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotItem;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    return-void
.end method
