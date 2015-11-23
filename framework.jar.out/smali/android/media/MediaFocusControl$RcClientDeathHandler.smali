.class Landroid/media/MediaFocusControl$RcClientDeathHandler;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RcClientDeathHandler"
.end annotation


# instance fields
.field private final mCb:Landroid/os/IBinder;

.field private final mMediaIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 0
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1170
    iput-object p1, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    iput-object p2, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    .line 1172
    iput-object p3, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->mMediaIntent:Landroid/app/PendingIntent;

    .line 1173
    return-void
.end method

.method static synthetic access$3200(Landroid/media/MediaFocusControl$RcClientDeathHandler;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl$RcClientDeathHandler;

    .prologue
    .line 1166
    iget-object v0, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1176
    const-string v0, "MediaFocusControl"

    const-string v1, "  RemoteControlClient died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v0, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v1, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/MediaFocusControl;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    .line 1181
    iget-object v0, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->this$0:Landroid/media/MediaFocusControl;

    # invokes: Landroid/media/MediaFocusControl;->postReevaluateRemote()V
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$3000(Landroid/media/MediaFocusControl;)V

    .line 1182
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
