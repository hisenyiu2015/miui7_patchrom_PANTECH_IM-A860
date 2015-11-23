.class public Landroid/media/audiofx/QXtremeVolume;
.super Landroid/media/audiofx/AudioEffect;
.source "QXtremeVolume.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/QXtremeVolume$1;,
        Landroid/media/audiofx/QXtremeVolume$Settings;,
        Landroid/media/audiofx/QXtremeVolume$BaseParameterListener;,
        Landroid/media/audiofx/QXtremeVolume$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_STRENGTH:I = 0x1

.field public static final PARAM_STRENGTH_SUPPORTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "QXtremeVolume"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/QXtremeVolume$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/QXtremeVolume$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mStrengthSupported:Z


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 90
    sget-object v0, Landroid/media/audiofx/QXtremeVolume;->EFFECT_TYPE_QXV:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/QXtremeVolume;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/audiofx/QXtremeVolume;->mStrengthSupported:Z

    .line 61
    iput-object v2, p0, Landroid/media/audiofx/QXtremeVolume;->mParamListener:Landroid/media/audiofx/QXtremeVolume$OnParameterChangeListener;

    .line 66
    iput-object v2, p0, Landroid/media/audiofx/QXtremeVolume;->mBaseParamListener:Landroid/media/audiofx/QXtremeVolume$BaseParameterListener;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/QXtremeVolume;->mParamListenerLock:Ljava/lang/Object;

    .line 92
    if-nez p2, :cond_0

    .line 93
    const-string v0, "QXtremeVolume"

    const-string v1, "WARNING: attaching a QXtremeVolume to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/QXtremeVolume;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/QXtremeVolume;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/media/audiofx/QXtremeVolume;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/QXtremeVolume;)Landroid/media/audiofx/QXtremeVolume$OnParameterChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/QXtremeVolume;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/media/audiofx/QXtremeVolume;->mParamListener:Landroid/media/audiofx/QXtremeVolume$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getProperties()Landroid/media/audiofx/QXtremeVolume$Settings;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 266
    new-instance v0, Landroid/media/audiofx/QXtremeVolume$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/QXtremeVolume$Settings;-><init>()V

    .line 267
    .local v0, "settings":Landroid/media/audiofx/QXtremeVolume$Settings;
    new-array v1, v2, [S

    .line 268
    .local v1, "value":[S
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/QXtremeVolume;->getParameter(I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/QXtremeVolume;->checkStatus(I)V

    .line 269
    const/4 v2, 0x0

    aget-short v2, v1, v2

    iput-short v2, v0, Landroid/media/audiofx/QXtremeVolume$Settings;->strength:S

    .line 270
    return-object v0
.end method

.method public getRoundedStrength()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 138
    new-array v0, v1, [S

    .line 139
    .local v0, "value":[S
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/QXtremeVolume;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/QXtremeVolume;->checkStatus(I)V

    .line 140
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getStrengthSupported()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Landroid/media/audiofx/QXtremeVolume;->mStrengthSupported:Z

    return v0
.end method

.method public setParameterListener(Landroid/media/audiofx/QXtremeVolume$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/QXtremeVolume$OnParameterChangeListener;

    .prologue
    .line 198
    iget-object v1, p0, Landroid/media/audiofx/QXtremeVolume;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/QXtremeVolume;->mParamListener:Landroid/media/audiofx/QXtremeVolume$OnParameterChangeListener;

    if-nez v0, :cond_0

    .line 200
    iput-object p1, p0, Landroid/media/audiofx/QXtremeVolume;->mParamListener:Landroid/media/audiofx/QXtremeVolume$OnParameterChangeListener;

    .line 201
    new-instance v0, Landroid/media/audiofx/QXtremeVolume$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/QXtremeVolume$BaseParameterListener;-><init>(Landroid/media/audiofx/QXtremeVolume;Landroid/media/audiofx/QXtremeVolume$1;)V

    iput-object v0, p0, Landroid/media/audiofx/QXtremeVolume;->mBaseParamListener:Landroid/media/audiofx/QXtremeVolume$BaseParameterListener;

    .line 202
    iget-object v0, p0, Landroid/media/audiofx/QXtremeVolume;->mBaseParamListener:Landroid/media/audiofx/QXtremeVolume$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 204
    :cond_0
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/QXtremeVolume$Settings;)V
    .locals 2
    .param p1, "settings"    # Landroid/media/audiofx/QXtremeVolume$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x1

    iget-short v1, p1, Landroid/media/audiofx/QXtremeVolume$Settings;->strength:S

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/QXtremeVolume;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/QXtremeVolume;->checkStatus(I)V

    .line 284
    return-void
.end method

.method public setStrength(S)V
    .locals 1
    .param p1, "strength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/QXtremeVolume;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/QXtremeVolume;->checkStatus(I)V

    .line 126
    return-void
.end method
