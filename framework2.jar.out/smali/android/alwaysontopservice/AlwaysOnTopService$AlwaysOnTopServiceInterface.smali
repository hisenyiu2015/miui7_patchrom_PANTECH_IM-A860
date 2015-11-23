.class public Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;
.super Ljava/lang/Object;
.source "AlwaysOnTopService.java"

# interfaces
.implements Landroid/view/alwaysontop/AlwaysOnTopInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/alwaysontopservice/AlwaysOnTopService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlwaysOnTopServiceInterface"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/alwaysontopservice/AlwaysOnTopService;


# direct methods
.method public constructor <init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 203
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v0, v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput-object p1, v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mToken:Landroid/os/IBinder;

    .line 205
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v0, v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v0, p1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->setToken(Landroid/os/IBinder;)V

    .line 207
    :cond_0
    return-void
.end method

.method public hideAlwaysOnTop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    const-string v0, "AlwaysOnTopService"

    const-string v1, "hideAlwaysOnTop()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v2, v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnFlags:I

    .line 182
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput-boolean v2, v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    .line 183
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput-boolean v2, v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnForced:Z

    .line 184
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->hideWindow()V

    .line 185
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v0, v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v1, v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mCurId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/alwaysontop/AlwaysOnTopManager;->hideAlwaysOnTop(Ljava/lang/String;)Z

    .line 186
    return-void
.end method

.method public moveAOTFrame()V
    .locals 3

    .prologue
    .line 247
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-boolean v0, v0, Landroid/alwaysontopservice/AlwaysOnTopService;->check:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Landroid/alwaysontopservice/AlwaysOnTopService;->check:Z

    .line 248
    const-string v0, "AlwaysOnTopService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveAOTFrame, check : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-boolean v2, v2, Landroid/alwaysontopservice/AlwaysOnTopService;->check:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-boolean v1, v1, Landroid/alwaysontopservice/AlwaysOnTopService;->check:Z

    invoke-virtual {v0, v1}, Landroid/alwaysontopservice/AlwaysOnTopService;->onMoveFrame(Z)V

    .line 250
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState()V
    .locals 2

    .prologue
    .line 227
    const-string v0, "AlwaysOnTopService"

    const-string v1, "restoreState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-boolean v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFinishMiniMode:Z

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "AlwaysOnTopService"

    const-string v1, "change mFinishMiniMode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    sput-boolean v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFinishMiniMode:Z

    .line 232
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRestoreMode:Z

    .line 233
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->OnRestoreState()V

    .line 234
    return-void
.end method

.method public saveState()V
    .locals 2

    .prologue
    .line 219
    const-string v0, "AlwaysOnTopService"

    const-string v1, "saveState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->OnSaveState()V

    .line 222
    return-void
.end method

.method public sendMediaStateEvent(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "state"    # I

    .prologue
    .line 212
    const-string v0, "AlwaysOnTopService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMediaStateEvent() : type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v0, p1, p2}, Landroid/alwaysontopservice/AlwaysOnTopService;->OnMediaState(II)V

    .line 214
    return-void
.end method

.method public showAlwaysOnTop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    const-string v1, "AlwaysOnTopService"

    const-string v2, "showAlwaysOnTop()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v3, v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnFlags:I

    .line 194
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->showWindow(Z)V

    .line 196
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v1, v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 197
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->setSkipWindow(Z)Z

    .line 199
    :cond_0
    return-void
.end method

.method public skipAOTWindow()V
    .locals 2

    .prologue
    .line 239
    const-string v0, "AlwaysOnTopService"

    const-string v1, "skipAOTWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->OnSkipWindow()V

    .line 242
    return-void
.end method

.method public visibleAOTFrame(Z)V
    .locals 1
    .param p1, "flipFlag"    # Z

    .prologue
    .line 256
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v0, p1}, Landroid/alwaysontopservice/AlwaysOnTopService;->onVisibleFrame(Z)V

    .line 257
    return-void
.end method
