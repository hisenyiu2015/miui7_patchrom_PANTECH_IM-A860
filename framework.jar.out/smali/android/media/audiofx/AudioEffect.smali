.class public Landroid/media/audiofx/AudioEffect;
.super Ljava/lang/Object;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/AudioEffect$NativeEventHandler;,
        Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$Descriptor;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final ACTION_DISPLAY_AUDIO_EFFECT_CONTROL_PANEL:Ljava/lang/String; = "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

.field public static final ACTION_OPEN_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final ALREADY_EXISTS:I = -0x2

.field public static final CONTENT_TYPE_GAME:I = 0x2

.field public static final CONTENT_TYPE_MOVIE:I = 0x1

.field public static final CONTENT_TYPE_MUSIC:I = 0x0

.field public static final CONTENT_TYPE_VOICE:I = 0x3

.field public static final EFFECT_AUXILIARY:Ljava/lang/String; = "Auxiliary"

.field public static final EFFECT_INSERT:Ljava/lang/String; = "Insert"

.field public static final EFFECT_PRE_PROCESSING:Ljava/lang/String; = "Pre Processing"

.field public static final EFFECT_TYPE_AEC:Ljava/util/UUID;

.field public static final EFFECT_TYPE_AGC:Ljava/util/UUID;

.field public static final EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

.field public static final EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

.field public static final EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

.field public static final EFFECT_TYPE_EXCITER:Ljava/util/UUID;

.field public static final EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

.field public static final EFFECT_TYPE_NS:Ljava/util/UUID;

.field public static final EFFECT_TYPE_NULL:Ljava/util/UUID;

.field public static final EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

.field public static final EFFECT_TYPE_QXV:Ljava/util/UUID;

.field public static final EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final ERROR_INVALID_OPERATION:I = -0x5

.field public static final ERROR_NO_INIT:I = -0x3

.field public static final ERROR_NO_MEMORY:I = -0x6

.field public static final EXTRA_AUDIO_SESSION:Ljava/lang/String; = "android.media.extra.AUDIO_SESSION"

.field public static final EXTRA_CONTENT_TYPE:Ljava/lang/String; = "android.media.extra.CONTENT_TYPE"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.media.extra.PACKAGE_NAME"

.field public static final NATIVE_EVENT_CONTROL_STATUS:I = 0x0

.field public static final NATIVE_EVENT_ENABLED_STATUS:I = 0x1

.field public static final NATIVE_EVENT_PARAMETER_CHANGED:I = 0x2

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioEffect-JAVA"


# instance fields
.field private mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

.field private mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

.field private mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

.field private mId:I

.field private mJniData:I

.field public final mListenerLock:Ljava/lang/Object;

.field private mNativeAudioEffect:I

.field public mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

.field private mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_init()V

    .line 78
    const-string v0, "c2e5d5f0-94bd-4763-9cac-4e234d06839e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

    .line 83
    const-string v0, "47382d60-ddd8-11db-bf3a-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

    .line 88
    const-string v0, "0bed4300-ddd6-11db-8f34-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    .line 93
    const-string v0, "0634f220-ddd4-11db-a0fc-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

    .line 98
    const-string v0, "37cc2c00-dddd-11db-8577-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    .line 107
    const-string v0, "0a8abfe0-654c-11e0-ba26-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    .line 113
    const-string v0, "7b491460-8d4d-11e0-bd61-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    .line 119
    const-string v0, "58b4b260-8e06-11e0-aa8e-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    .line 125
    const-string v0, "fe3199be-aed0-413f-87bb-11260eb63cf1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    .line 133
    const-string v0, "422a02a0-84fc-11e1-889f-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_QXV:Ljava/util/UUID;

    .line 140
    const-string v0, "bce39df4-d218-4a19-1092-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_EXCITER:Ljava/util/UUID;

    .line 148
    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;II)V
    .locals 10
    .param p1, "type"    # Ljava/util/UUID;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "priority"    # I
    .param p4, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput v9, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 330
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    .line 350
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 356
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 362
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 367
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    .line 372
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    .line 413
    new-array v6, v2, [I

    .line 414
    .local v6, "id":[I
    new-array v7, v2, [Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 416
    .local v7, "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Landroid/media/audiofx/AudioEffect;->native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;)I

    move-result v8

    .line 419
    .local v8, "initResult":I
    if-eqz v8, :cond_0

    const/4 v0, -0x2

    if-eq v8, v0, :cond_0

    .line 420
    const-string v0, "AudioEffect-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing AudioEffect."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    packed-switch v8, :pswitch_data_0

    .line 430
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot initialize effect engine for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Effect library not loaded"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_0
    aget v0, v6, v9

    iput v0, p0, Landroid/media/audiofx/AudioEffect;->mId:I

    .line 436
    aget-object v0, v7, v9

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 437
    iget-object v1, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 439
    monitor-exit v1

    .line 440
    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/AudioEffect;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/AudioEffect;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/AudioEffect;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    return-object v0
.end method

.method private createNativeEventHandler()V
    .locals 2

    .prologue
    .line 961
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 962
    new-instance v1, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    .line 968
    :goto_0
    return-void

    .line 963
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 964
    new-instance v1, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_0

    .line 966
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_0
.end method

.method public static isEffectTypeAvailable(Ljava/util/UUID;)Z
    .locals 3
    .param p0, "type"    # Ljava/util/UUID;

    .prologue
    .line 505
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    .line 506
    .local v0, "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 507
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v2, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    const/4 v2, 0x1

    .line 511
    :goto_1
    return v2

    .line 506
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isError(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 1304
    if-gez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final native native_command(II[BI[B)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getEnabled()Z
.end method

.method private final native native_getParameter(I[BI[B)I
.end method

.method private final native native_hasControl()Z
.end method

.method private static final native native_init()V
.end method

.method private static native native_query_effects()[Ljava/lang/Object;
.end method

.method private static native native_query_pre_processing(I)[Ljava/lang/Object;
.end method

.method private final native native_release()V
.end method

.method private final native native_setEnabled(Z)I
.end method

.method private final native native_setParameter(I[BI[B)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "effect_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1217
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "effect_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/AudioEffect;

    .line 1218
    .local v0, "effect":Landroid/media/audiofx/AudioEffect;
    if-nez v0, :cond_1

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-eqz v2, :cond_0

    .line 1222
    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1224
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-virtual {v2, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1

    .prologue
    .line 482
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_query_effects()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public static queryPreProcessings(I)[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1
    .param p0, "audioSession"    # I

    .prologue
    .line 495
    invoke-static {p0}, Landroid/media/audiofx/AudioEffect;->native_query_pre_processing(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method


# virtual methods
.method public byteArrayToInt([B)I
    .locals 1
    .param p1, "valueBuf"    # [B

    .prologue
    .line 1311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v0

    return v0
.end method

.method public byteArrayToInt([BI)I
    .locals 2
    .param p1, "valueBuf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 1319
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1320
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1321
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public byteArrayToShort([B)S
    .locals 1
    .param p1, "valueBuf"    # [B

    .prologue
    .line 1339
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v0

    return v0
.end method

.method public byteArrayToShort([BI)S
    .locals 2
    .param p1, "valueBuf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 1346
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1347
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1348
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1
.end method

.method public checkState(Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1269
    iget-object v1, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1270
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 1271
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " called on uninitialized AudioEffect."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1275
    return-void
.end method

.method public checkStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 1281
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->isError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1282
    packed-switch p1, :pswitch_data_0

    .line 1295
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioEffect: set/get parameter error. Status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1284
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AudioEffect: bad parameter value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1287
    :pswitch_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "AudioEffect: invalid parameter operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1291
    :pswitch_3
    const-string v0, "AudioEffect-JAVA"

    const-string v1, "[SND]checkStatus(): Dead object"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_0
    return-void

    .line 1282
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public command(I[B[B)I
    .locals 6
    .param p1, "cmdCode"    # I
    .param p2, "command"    # [B
    .param p3, "reply"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 863
    const-string v0, "command()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 864
    array-length v2, p2

    array-length v4, p3

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/AudioEffect;->native_command(II[BI[B)I

    move-result v0

    return v0
.end method

.method public varargs concatArrays([[B)[B
    .locals 9
    .param p1, "arrays"    # [[B

    .prologue
    .line 1367
    const/4 v4, 0x0

    .line 1368
    .local v4, "len":I
    move-object v1, p1

    .local v1, "arr$":[[B
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    .line 1369
    .local v0, "a":[B
    array-length v7, v0

    add-int/2addr v4, v7

    .line 1368
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1371
    .end local v0    # "a":[B
    :cond_0
    new-array v2, v4, [B

    .line 1373
    .local v2, "b":[B
    const/4 v6, 0x0

    .line 1374
    .local v6, "offs":I
    move-object v1, p1

    array-length v5, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 1375
    .restart local v0    # "a":[B
    const/4 v7, 0x0

    array-length v8, v0

    invoke-static {v0, v7, v2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1376
    array-length v7, v0

    add-int/2addr v6, v7

    .line 1374
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1378
    .end local v0    # "a":[B
    :cond_1
    return-object v2
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_finalize()V

    .line 457
    return-void
.end method

.method public getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 466
    const-string v0, "getDescriptor()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 891
    const-string v0, "getEnabled()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 892
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_getEnabled()Z

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 880
    const-string v0, "getId()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 881
    iget v0, p0, Landroid/media/audiofx/AudioEffect;->mId:I

    return v0
.end method

.method public getParameter(I[B)I
    .locals 2
    .param p1, "param"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 700
    .local v0, "p":[B
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    return v1
.end method

.method public getParameter(I[I)I
    .locals 7
    .param p1, "param"    # I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    .line 713
    array-length v3, p2

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 714
    const/4 v1, -0x4

    .line 731
    :goto_0
    return v1

    .line 716
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 718
    .local v0, "p":[B
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x4

    new-array v2, v3, [B

    .line 720
    .local v2, "v":[B
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    .line 722
    .local v1, "status":I
    if-eq v1, v5, :cond_1

    if-ne v1, v6, :cond_3

    .line 723
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v4

    aput v4, p2, v3

    .line 724
    if-ne v1, v6, :cond_2

    .line 725
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v4

    aput v4, p2, v3

    .line 727
    :cond_2
    div-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 729
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getParameter(I[S)I
    .locals 7
    .param p1, "param"    # I
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 744
    array-length v3, p2

    if-le v3, v5, :cond_0

    .line 745
    const/4 v1, -0x4

    .line 762
    :goto_0
    return v1

    .line 747
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 749
    .local v0, "p":[B
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 751
    .local v2, "v":[B
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    .line 753
    .local v1, "status":I
    if-eq v1, v5, :cond_1

    if-ne v1, v6, :cond_3

    .line 754
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v4

    aput-short v4, p2, v3

    .line 755
    if-ne v1, v6, :cond_2

    .line 756
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v4

    aput-short v4, p2, v3

    .line 758
    :cond_2
    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 760
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getParameter([B[B)I
    .locals 2
    .param p1, "param"    # [B
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 685
    const-string v0, "getParameter()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 686
    array-length v0, p1

    array-length v1, p2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_getParameter(I[BI[B)I

    move-result v0

    return v0
.end method

.method public getParameter([I[B)I
    .locals 6
    .param p1, "param"    # [I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 842
    array-length v2, p1

    if-le v2, v5, :cond_0

    .line 843
    const/4 v2, -0x4

    .line 851
    :goto_0
    return v2

    .line 845
    :cond_0
    aget v2, p1, v4

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 846
    .local v0, "p":[B
    array-length v2, p1

    if-le v2, v3, :cond_1

    .line 847
    aget v2, p1, v3

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 848
    .local v1, "p2":[B
    new-array v2, v5, [[B

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 851
    .end local v1    # "p2":[B
    :cond_1
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v2

    goto :goto_0
.end method

.method public getParameter([I[I)I
    .locals 10
    .param p1, "param"    # [I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 775
    array-length v4, p1

    if-gt v4, v7, :cond_0

    array-length v4, p2

    if-le v4, v7, :cond_1

    .line 776
    :cond_0
    const/4 v2, -0x4

    .line 796
    :goto_0
    return v2

    .line 778
    :cond_1
    aget v4, p1, v6

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 779
    .local v0, "p":[B
    array-length v4, p1

    if-le v4, v5, :cond_2

    .line 780
    aget v4, p1, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 781
    .local v1, "p2":[B
    new-array v4, v7, [[B

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 783
    .end local v1    # "p2":[B
    :cond_2
    array-length v4, p2

    mul-int/lit8 v4, v4, 0x4

    new-array v3, v4, [B

    .line 785
    .local v3, "v":[B
    invoke-virtual {p0, v0, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v2

    .line 787
    .local v2, "status":I
    if-eq v2, v8, :cond_3

    if-ne v2, v9, :cond_5

    .line 788
    :cond_3
    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v4

    aput v4, p2, v6

    .line 789
    if-ne v2, v9, :cond_4

    .line 790
    invoke-virtual {p0, v3, v8}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v4

    aput v4, p2, v5

    .line 792
    :cond_4
    div-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 794
    :cond_5
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getParameter([I[S)I
    .locals 9
    .param p1, "param"    # [I
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 809
    array-length v4, p1

    if-gt v4, v5, :cond_0

    array-length v4, p2

    if-le v4, v5, :cond_1

    .line 810
    :cond_0
    const/4 v2, -0x4

    .line 830
    :goto_0
    return v2

    .line 812
    :cond_1
    aget v4, p1, v7

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 813
    .local v0, "p":[B
    array-length v4, p1

    if-le v4, v6, :cond_2

    .line 814
    aget v4, p1, v6

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 815
    .local v1, "p2":[B
    new-array v4, v5, [[B

    aput-object v0, v4, v7

    aput-object v1, v4, v6

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 817
    .end local v1    # "p2":[B
    :cond_2
    array-length v4, p2

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 819
    .local v3, "v":[B
    invoke-virtual {p0, v0, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v2

    .line 821
    .local v2, "status":I
    if-eq v2, v5, :cond_3

    if-ne v2, v8, :cond_5

    .line 822
    :cond_3
    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v4

    aput-short v4, p2, v7

    .line 823
    if-ne v2, v8, :cond_4

    .line 824
    invoke-virtual {p0, v3, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v4

    aput-short v4, p2, v6

    .line 826
    :cond_4
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 828
    :cond_5
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public hasControl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 903
    const-string v0, "hasControl()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 904
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_hasControl()Z

    move-result v0

    return v0
.end method

.method public intToByteArray(I)[B
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1329
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1330
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1331
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1332
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 448
    iget-object v1, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_0
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_release()V

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 451
    monitor-exit v1

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setControlStatusListener(Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .prologue
    .line 932
    iget-object v1, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 933
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 934
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_0

    .line 936
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    .line 938
    :cond_0
    return-void

    .line 934
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setEnableStatusListener(Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .prologue
    .line 917
    iget-object v1, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 918
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 919
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_0

    .line 921
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    .line 923
    :cond_0
    return-void

    .line 919
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setEnabled(Z)I
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 531
    const-string/jumbo v0, "setEnabled()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 532
    invoke-direct {p0, p1}, Landroid/media/audiofx/AudioEffect;->native_setEnabled(Z)I

    move-result v0

    return v0
.end method

.method public setParameter(II)I
    .locals 3
    .param p1, "param"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 566
    .local v0, "p":[B
    invoke-virtual {p0, p2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 567
    .local v1, "v":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method

.method public setParameter(IS)I
    .locals 3
    .param p1, "param"    # I
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 580
    .local v0, "p":[B
    invoke-virtual {p0, p2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v1

    .line 581
    .local v1, "v":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method

.method public setParameter(I[B)I
    .locals 2
    .param p1, "param"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 594
    .local v0, "p":[B
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v1

    return v1
.end method

.method public setParameter([B[B)I
    .locals 2
    .param p1, "param"    # [B
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 554
    const-string/jumbo v0, "setParameter()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 555
    array-length v0, p1

    array-length v1, p2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_setParameter(I[BI[B)I

    move-result v0

    return v0
.end method

.method public setParameter([I[B)I
    .locals 6
    .param p1, "param"    # [I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 657
    array-length v2, p1

    if-le v2, v5, :cond_0

    .line 658
    const/4 v2, -0x4

    .line 665
    :goto_0
    return v2

    .line 660
    :cond_0
    aget v2, p1, v4

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 661
    .local v0, "p":[B
    array-length v2, p1

    if-le v2, v3, :cond_1

    .line 662
    aget v2, p1, v3

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 663
    .local v1, "p2":[B
    new-array v2, v5, [[B

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 665
    .end local v1    # "p2":[B
    :cond_1
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    goto :goto_0
.end method

.method public setParameter([I[I)I
    .locals 8
    .param p1, "param"    # [I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 606
    array-length v4, p1

    if-gt v4, v7, :cond_0

    array-length v4, p2

    if-le v4, v7, :cond_1

    .line 607
    :cond_0
    const/4 v4, -0x4

    .line 619
    :goto_0
    return v4

    .line 609
    :cond_1
    aget v4, p1, v6

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 610
    .local v0, "p":[B
    array-length v4, p1

    if-le v4, v5, :cond_2

    .line 611
    aget v4, p1, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 612
    .local v1, "p2":[B
    new-array v4, v7, [[B

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 614
    .end local v1    # "p2":[B
    :cond_2
    aget v4, p2, v6

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 615
    .local v2, "v":[B
    array-length v4, p2

    if-le v4, v5, :cond_3

    .line 616
    aget v4, p2, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 617
    .local v3, "v2":[B
    new-array v4, v7, [[B

    aput-object v2, v4, v6

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 619
    .end local v3    # "v2":[B
    :cond_3
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v4

    goto :goto_0
.end method

.method public setParameter([I[S)I
    .locals 8
    .param p1, "param"    # [I
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 631
    array-length v4, p1

    if-gt v4, v7, :cond_0

    array-length v4, p2

    if-le v4, v7, :cond_1

    .line 632
    :cond_0
    const/4 v4, -0x4

    .line 645
    :goto_0
    return v4

    .line 634
    :cond_1
    aget v4, p1, v6

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 635
    .local v0, "p":[B
    array-length v4, p1

    if-le v4, v5, :cond_2

    .line 636
    aget v4, p1, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 637
    .local v1, "p2":[B
    new-array v4, v7, [[B

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 640
    .end local v1    # "p2":[B
    :cond_2
    aget-short v4, p2, v6

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v2

    .line 641
    .local v2, "v":[B
    array-length v4, p2

    if-le v4, v5, :cond_3

    .line 642
    aget-short v4, p2, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v3

    .line 643
    .local v3, "v2":[B
    new-array v4, v7, [[B

    aput-object v2, v4, v6

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 645
    .end local v3    # "v2":[B
    :cond_3
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v4

    goto :goto_0
.end method

.method public setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .prologue
    .line 947
    iget-object v1, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 948
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 949
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_0

    .line 951
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    .line 953
    :cond_0
    return-void

    .line 949
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shortToByteArray(S)[B
    .locals 3
    .param p1, "value"    # S

    .prologue
    .line 1356
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1357
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1358
    move v1, p1

    .line 1359
    .local v1, "sValue":S
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1360
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method
