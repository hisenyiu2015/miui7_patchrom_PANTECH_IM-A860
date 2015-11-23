.class Landroid/media/MediaScanner$1$1;
.super Landroid/database/ContentObserver;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaScanner$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaScanner$1;


# direct methods
.method constructor <init>(Landroid/media/MediaScanner$1;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1919
    iput-object p1, p0, Landroid/media/MediaScanner$1$1;->this$1:Landroid/media/MediaScanner$1;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 1922
    iget-object v0, p0, Landroid/media/MediaScanner$1$1;->this$1:Landroid/media/MediaScanner$1;

    iget-object v0, v0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    const-string v1, "external"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner;->backupRingtonePath(Ljava/lang/String;I)V

    .line 1923
    return-void
.end method
