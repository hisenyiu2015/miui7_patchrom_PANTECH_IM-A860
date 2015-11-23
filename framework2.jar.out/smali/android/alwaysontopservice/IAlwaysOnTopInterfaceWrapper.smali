.class Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;
.super Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub;
.source "IAlwaysOnTopInterfaceWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper$Notifier;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DO_ATTACH_TOKEN:I = 0xa

.field private static final DO_HIDE_ALWAYSONTOP:I = 0x46

.field private static final DO_MEDIA_STATE:I = 0x64

.field private static final DO_MOVE_AOT_FRAME:I = 0x406

.field private static final DO_RESTORE_STATE:I = 0x3f2

.field private static final DO_SAVE_STATE:I = 0x3e8

.field private static final DO_SHOW_ALWAYSONTOP:I = 0x3c

.field private static final DO_SKIP_WINDOW:I = 0x3fc

.field private static final DO_VISIBLE_AOT_FRAME:I = 0x410

.field private static final TAG:Ljava/lang/String; = "IAlwaysOnTopInterfaceWrapper"


# instance fields
.field final mAlwaysOntop:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInterface;",
            ">;"
        }
    .end annotation
.end field

.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/alwaysontopservice/AlwaysOnTopService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/alwaysontopservice/AlwaysOnTopService;Landroid/view/alwaysontop/AlwaysOnTopInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/alwaysontopservice/AlwaysOnTopService;
    .param p2, "alwaysontop"    # Landroid/view/alwaysontop/AlwaysOnTopInterface;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    .line 71
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p1}, Landroid/alwaysontopservice/AlwaysOnTopService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mAlwaysOntop:Ljava/lang/ref/WeakReference;

    .line 73
    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 101
    iget-object v0, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 102
    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    iget-object v2, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mAlwaysOntop:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/alwaysontop/AlwaysOnTopInterface;

    .line 142
    .local v0, "AlwaysOntop":Landroid/view/alwaysontop/AlwaysOnTopInterface;
    if-nez v0, :cond_0

    .line 143
    const-string v2, "IAlwaysOnTopInterfaceWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "always on top reference was null, ignoring message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    return-void

    .line 147
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 198
    const-string v2, "IAlwaysOnTopInterfaceWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :sswitch_0
    const-string v2, "IAlwaysOnTopInterfaceWrapper"

    const-string v3, "showAlwaysOnTop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-interface {v0}, Landroid/view/alwaysontop/AlwaysOnTopInterface;->showAlwaysOnTop()V

    goto :goto_0

    .line 153
    :sswitch_1
    const-string v2, "IAlwaysOnTopInterfaceWrapper"

    const-string v3, "hideAlwaysOnTop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-interface {v0}, Landroid/view/alwaysontop/AlwaysOnTopInterface;->hideAlwaysOnTop()V

    goto :goto_0

    .line 157
    :sswitch_2
    const-string v2, "IAlwaysOnTopInterfaceWrapper"

    const-string v3, "attachToken"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/view/alwaysontop/AlwaysOnTopInterface;->attachToken(Landroid/os/IBinder;)V

    goto :goto_0

    .line 163
    :sswitch_3
    const-string v2, "IAlwaysOnTopInterfaceWrapper"

    const-string v3, "sendMediaStateEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2, v3}, Landroid/view/alwaysontop/AlwaysOnTopInterface;->sendMediaStateEvent(II)V

    goto :goto_0

    .line 168
    :sswitch_4
    const-string v2, "IAlwaysOnTopInterfaceWrapper"

    const-string v3, "saveState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-interface {v0}, Landroid/view/alwaysontop/AlwaysOnTopInterface;->saveState()V

    goto :goto_0

    .line 173
    :sswitch_5
    const-string v2, "IAlwaysOnTopInterfaceWrapper"

    const-string v3, "restoreState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-interface {v0}, Landroid/view/alwaysontop/AlwaysOnTopInterface;->restoreState()V

    goto :goto_0

    .line 178
    :sswitch_6
    const-string v2, "IAlwaysOnTopInterfaceWrapper"

    const-string v3, "skipAOTWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-interface {v0}, Landroid/view/alwaysontop/AlwaysOnTopInterface;->skipAOTWindow()V

    goto :goto_0

    .line 184
    :sswitch_7
    const-string v2, "IAlwaysOnTopInterfaceWrapper"

    const-string v3, "DO_MOVE_AOT_FRAME"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-interface {v0}, Landroid/view/alwaysontop/AlwaysOnTopInterface;->moveAOTFrame()V

    goto :goto_0

    .line 190
    :sswitch_8
    const-string v2, "IAlwaysOnTopInterfaceWrapper"

    const-string v3, "DO_VISIBLE_AOT_FRAME"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v2, "IAlwaysOnTopInterfaceWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg.arg1 int = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 193
    .local v1, "flipFlag":Z
    :goto_1
    const-string v2, "IAlwaysOnTopInterfaceWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flipFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-interface {v0, v1}, Landroid/view/alwaysontop/AlwaysOnTopInterface;->visibleAOTFrame(Z)V

    goto/16 :goto_0

    .line 192
    .end local v1    # "flipFlag":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 147
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x3c -> :sswitch_0
        0x46 -> :sswitch_1
        0x64 -> :sswitch_3
        0x3e8 -> :sswitch_4
        0x3f2 -> :sswitch_5
        0x3fc -> :sswitch_6
        0x406 -> :sswitch_7
        0x410 -> :sswitch_8
    .end sparse-switch
.end method

.method public hideAlwaysOnTop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 97
    iget-object v0, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x46

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 98
    return-void
.end method

.method public moveAOTFrame()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 126
    const-string v0, "IAlwaysOnTopInterfaceWrapper"

    const-string v1, "moveAOTFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x406

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 128
    return-void
.end method

.method public restoreState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    const-string v0, "IAlwaysOnTopInterfaceWrapper"

    const-string v1, "restoreState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3f2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 117
    return-void
.end method

.method public saveState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    const-string v0, "IAlwaysOnTopInterfaceWrapper"

    const-string v1, "saveState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 112
    return-void
.end method

.method public sendMediaStateEvent(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "state"    # I

    .prologue
    .line 105
    const-string v0, "IAlwaysOnTopInterfaceWrapper"

    const-string v1, "sendMediaStateEvent!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 107
    return-void
.end method

.method public showAlwaysOnTop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 85
    iget-object v0, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 86
    return-void
.end method

.method public skipAOTWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 120
    const-string v0, "IAlwaysOnTopInterfaceWrapper"

    const-string v1, "restoreState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3fc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 122
    return-void
.end method

.method public visibleAOTFrame(Z)V
    .locals 4
    .param p1, "flipFlag"    # Z

    .prologue
    .line 133
    const-string v0, "IAlwaysOnTopInterfaceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visibleAOTFrame : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x410

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 136
    return-void
.end method
