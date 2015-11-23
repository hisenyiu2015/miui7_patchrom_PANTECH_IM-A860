.class Landroid/media/MediaScanner$1;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaScanner;->registerRingtoneObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaScanner;

.field final synthetic val$ringtoneUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/media/MediaScanner;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1917
    iput-object p1, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    iput-object p2, p0, Landroid/media/MediaScanner$1;->val$ringtoneUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1919
    iget-object v0, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    new-instance v1, Landroid/media/MediaScanner$1$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Landroid/media/MediaScanner$1$1;-><init>(Landroid/media/MediaScanner$1;Landroid/os/Handler;)V

    # setter for: Landroid/media/MediaScanner;->mRingtoneSettingObserver:Landroid/database/ContentObserver;
    invoke-static {v0, v1}, Landroid/media/MediaScanner;->access$2902(Landroid/media/MediaScanner;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 1925
    iget-object v0, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mRingtoneSettingObserver:Landroid/database/ContentObserver;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Landroid/database/ContentObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1926
    iget-object v0, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$1;->val$ringtoneUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mRingtoneSettingObserver:Landroid/database/ContentObserver;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1931
    :goto_0
    return-void

    .line 1929
    :cond_0
    const-string v0, "MediaScanner"

    const-string v1, "mContext or mRingtoneSettingObserver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
