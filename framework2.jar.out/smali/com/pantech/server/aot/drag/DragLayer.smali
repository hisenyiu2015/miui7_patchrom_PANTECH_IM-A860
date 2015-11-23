.class public Lcom/pantech/server/aot/drag/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"

# interfaces
.implements Lcom/pantech/server/aot/drag/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;,
        Lcom/pantech/server/aot/drag/DragLayer$Callback;
    }
.end annotation


# static fields
.field public static final DRAG_END:I = 0x3

.field public static final DRAG_ENTER:I = 0x2

.field public static final DRAG_START:I = 0x1


# instance fields
.field mCallback:Lcom/pantech/server/aot/drag/DragLayer$Callback;

.field private mChildLayout:Landroid/view/ViewGroup;

.field mDragController:Lcom/pantech/server/aot/drag/DragController;

.field mGridView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragLayer;->mCallback:Lcom/pantech/server/aot/drag/DragLayer$Callback;

    .line 56
    return-void
.end method


# virtual methods
.method public addDropTargetToController(Landroid/view/View;)I
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, "numChild":I
    const/4 v1, 0x0

    .line 118
    .local v1, "nReturnChild":I
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 119
    check-cast v3, Landroid/view/ViewGroup;

    .line 120
    .local v3, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 122
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/pantech/server/aot/drag/DragLayer;->addDropTargetToController(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "i":I
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lcom/pantech/server/aot/drag/DropTarget;

    if-eqz v4, :cond_1

    .line 127
    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragLayer;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    check-cast p1, Lcom/pantech/server/aot/drag/DropTarget;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {v4, p1}, Lcom/pantech/server/aot/drag/DragController;->addDropTarget(Lcom/pantech/server/aot/drag/DropTarget;)V

    .line 128
    const/4 v1, 0x1

    .line 131
    :cond_1
    return v1
.end method

.method public changeModeNormal(Landroid/view/View;)I
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, "numChild":I
    const/4 v1, 0x0

    .line 159
    .local v1, "nReturnChild":I
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 160
    check-cast v3, Landroid/view/ViewGroup;

    .line 161
    .local v3, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 164
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/pantech/server/aot/drag/DragLayer;->changeModeNormal(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lcom/pantech/server/aot/menu/AotItem;

    if-eqz v4, :cond_1

    .line 169
    check-cast p1, Lcom/pantech/server/aot/menu/AotItem;

    .end local p1    # "view":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/pantech/server/aot/menu/AotItem;->changeMode(I)V

    .line 170
    const/4 v1, 0x1

    .line 173
    :cond_1
    return v1
.end method

.method public changeModeToEdit(Landroid/view/View;)I
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, "numChild":I
    const/4 v1, 0x0

    .line 138
    .local v1, "nReturnChild":I
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 139
    check-cast v3, Landroid/view/ViewGroup;

    .line 140
    .local v3, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 143
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/pantech/server/aot/drag/DragLayer;->changeModeToEdit(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "i":I
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lcom/pantech/server/aot/menu/AotItem;

    if-eqz v4, :cond_1

    .line 148
    check-cast p1, Lcom/pantech/server/aot/menu/AotItem;

    .end local p1    # "view":Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/pantech/server/aot/menu/AotItem;->changeMode(I)V

    .line 149
    const/4 v1, 0x1

    .line 152
    :cond_1
    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragLayer;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    invoke-virtual {v0, p1}, Lcom/pantech/server/aot/drag/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragLayer;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/server/aot/drag/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public getChildLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragLayer;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public onDragEnd()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragLayer;->mCallback:Lcom/pantech/server/aot/drag/DragLayer$Callback;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragLayer;->mCallback:Lcom/pantech/server/aot/drag/DragLayer$Callback;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/pantech/server/aot/drag/DragLayer$Callback;->dragHandler(I)Z

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragLayer;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    invoke-virtual {v0}, Lcom/pantech/server/aot/drag/DragController;->removeAllDropTargets()V

    .line 206
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/pantech/server/aot/drag/DragLayer;->changeModeNormal(Landroid/view/View;)I

    .line 209
    :cond_1
    return-void
.end method

.method public onDragEnter(Lcom/pantech/server/aot/drag/DragSource;Lcom/pantech/server/aot/drag/DropTarget;)V
    .locals 1
    .param p1, "src"    # Lcom/pantech/server/aot/drag/DragSource;
    .param p2, "target"    # Lcom/pantech/server/aot/drag/DropTarget;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    check-cast v0, Lcom/pantech/server/aot/menu/AotContainer;

    check-cast p1, Landroid/view/View;

    .end local p1    # "src":Lcom/pantech/server/aot/drag/DragSource;
    check-cast p2, Landroid/view/View;

    .end local p2    # "target":Lcom/pantech/server/aot/drag/DropTarget;
    invoke-virtual {v0, p1, p2}, Lcom/pantech/server/aot/menu/AotContainer;->rearrangeAotItem(Landroid/view/View;Landroid/view/View;)V

    .line 221
    return-void
.end method

.method public onDragStart(Lcom/pantech/server/aot/drag/DragSource;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "source"    # Lcom/pantech/server/aot/drag/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/pantech/server/aot/drag/DragLayer;->addDropTargetToController(Landroid/view/View;)I

    .line 194
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragLayer;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    invoke-virtual {v0, p1}, Lcom/pantech/server/aot/drag/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 238
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 239
    invoke-virtual {p0}, Lcom/pantech/server/aot/drag/DragLayer;->getChildCount()I

    move-result v1

    .line 240
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 241
    invoke-virtual {p0, v3}, Lcom/pantech/server/aot/drag/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 243
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, v2, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 244
    check-cast v4, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;

    .line 245
    .local v4, "lp":Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;
    iget-boolean v5, v4, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_0

    .line 246
    iget v5, v4, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->x:I

    iget v6, v4, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->y:I

    iget v7, v4, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->x:I

    iget v8, v4, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->y:I

    iget v9, v4, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 240
    .end local v4    # "lp":Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragLayer;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    invoke-virtual {v0, p1}, Lcom/pantech/server/aot/drag/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setChildLayout(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "newValue"    # Landroid/view/ViewGroup;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/pantech/server/aot/drag/DragLayer;->mChildLayout:Landroid/view/ViewGroup;

    .line 111
    return-void
.end method

.method public setDragController(Lcom/pantech/server/aot/drag/DragController;)V
    .locals 0
    .param p1, "controller"    # Lcom/pantech/server/aot/drag/DragController;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/pantech/server/aot/drag/DragLayer;->mDragController:Lcom/pantech/server/aot/drag/DragController;

    .line 60
    return-void
.end method

.method public setDragLayerCallback(Lcom/pantech/server/aot/drag/DragLayer$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/pantech/server/aot/drag/DragLayer$Callback;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/pantech/server/aot/drag/DragLayer;->mCallback:Lcom/pantech/server/aot/drag/DragLayer$Callback;

    .line 64
    return-void
.end method

.method public setGridView(Landroid/widget/GridView;)V
    .locals 0
    .param p1, "newValue"    # Landroid/widget/GridView;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/pantech/server/aot/drag/DragLayer;->mGridView:Landroid/widget/GridView;

    .line 106
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/pantech/server/aot/drag/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 234
    return-void
.end method
