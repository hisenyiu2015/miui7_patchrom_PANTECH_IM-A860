.class Landroid/widget/Editor$EditorActionMode;
.super Landroid/view/ActionMode;
.source "Editor.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditorActionMode"
.end annotation


# instance fields
.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mContext:Landroid/content/Context;

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cb"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 2942
    iput-object p1, p0, Landroid/widget/Editor$EditorActionMode;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 2943
    iput-object p2, p0, Landroid/widget/Editor$EditorActionMode;->mContext:Landroid/content/Context;

    .line 2944
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/widget/Editor$EditorActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$EditorActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 2945
    iget-object v0, p0, Landroid/widget/Editor$EditorActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 2946
    iput-object p3, p0, Landroid/widget/Editor$EditorActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    .line 2947
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    .line 2991
    iget-object v0, p0, Landroid/widget/Editor$EditorActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 2993
    :try_start_0
    iget-object v0, p0, Landroid/widget/Editor$EditorActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/widget/Editor$EditorActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2995
    iget-object v1, p0, Landroid/widget/Editor$EditorActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/widget/Editor$EditorActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3001
    iget-object v0, p0, Landroid/widget/Editor$EditorActionMode;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/widget/Editor$EditorActionMode;

    if-eq v0, p0, :cond_0

    .line 3010
    :goto_0
    return-void

    .line 3006
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$EditorActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 3007
    iput-object v1, p0, Landroid/widget/Editor$EditorActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    .line 3009
    iget-object v0, p0, Landroid/widget/Editor$EditorActionMode;->this$0:Landroid/widget/Editor;

    iput-object v1, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/widget/Editor$EditorActionMode;

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 3029
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 3014
    iget-object v0, p0, Landroid/widget/Editor$EditorActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 3034
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/widget/Editor$EditorActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3024
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3019
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 2982
    iget-object v0, p0, Landroid/widget/Editor$EditorActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 2984
    :try_start_0
    iget-object v0, p0, Landroid/widget/Editor$EditorActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/widget/Editor$EditorActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2986
    iget-object v0, p0, Landroid/widget/Editor$EditorActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 2988
    return-void

    .line 2986
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/widget/Editor$EditorActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 2972
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3039
    iget-object v0, p0, Landroid/widget/Editor$EditorActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 3040
    iget-object v0, p0, Landroid/widget/Editor$EditorActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 3042
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 3047
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2978
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 2967
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 2962
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 2957
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2952
    return-void
.end method
