.class public Lcom/pantech/test/Audiotest;
.super Ljava/lang/Object;
.source "Audiotest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "sky audio test"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "Audiotest"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static native java_audio_control_func(III)I
.end method

.method static native java_audio_test_command(III)I
.end method

.method static native java_audiotest_AudioCmd_ForInt(III)I
.end method

.method static native java_audiotest_AudioCmd_ForString(III)Ljava/lang/String;
.end method

.method static native java_audiotest_get_ampvolume(I)I
.end method

.method static native java_audiotest_loopback_en(I)I
.end method

.method static native java_audiotest_loopback_setdevice(I)I
.end method

.method static native java_audiotest_set_ampvolume(I)I
.end method

.method static native java_audiotest_set_device(I)I
.end method

.method static native java_sdcard_get_detection_count()I
.end method

.method static native java_sdcard_set_detection_count(I)I
.end method

.method static native java_sdcard_set_testresult(I)I
.end method


# virtual methods
.method public AudioCmd_ForInt(III)I
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # I

    .prologue
    .line 70
    const-string v0, "sky audio test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioCmd_ForInt() cmd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value1("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value2("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {p1, p2, p3}, Lcom/pantech/test/Audiotest;->java_audiotest_AudioCmd_ForInt(III)I

    move-result v0

    return v0
.end method

.method public AudioCmd_ForString(III)Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # I

    .prologue
    .line 74
    const-string v0, "sky audio test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioCmd_ForString() cmd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value1("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value2("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p1, p2, p3}, Lcom/pantech/test/Audiotest;->java_audiotest_AudioCmd_ForString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public audio_control_func(III)I
    .locals 4
    .param p1, "CmdID"    # I
    .param p2, "subCmdID"    # I
    .param p3, "data"    # I

    .prologue
    .line 116
    invoke-static {p1, p2, p3}, Lcom/pantech/test/Audiotest;->java_audio_control_func(III)I

    move-result v0

    .line 117
    .local v0, "result":I
    const-string v1, "sky audio test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = audio_control_func("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v0
.end method

.method public audio_test_command(III)I
    .locals 4
    .param p1, "CmdID"    # I
    .param p2, "subCmdID"    # I
    .param p3, "data"    # I

    .prologue
    .line 110
    invoke-static {p1, p2, p3}, Lcom/pantech/test/Audiotest;->java_audio_test_command(III)I

    move-result v0

    .line 111
    .local v0, "result":I
    const-string v1, "sky audio test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = audio_test_command("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v0
.end method

.method public get_ampvolume(I)I
    .locals 1
    .param p1, "whichamp"    # I

    .prologue
    .line 105
    invoke-static {p1}, Lcom/pantech/test/Audiotest;->java_audiotest_get_ampvolume(I)I

    move-result v0

    return v0
.end method

.method public loopback_enable(I)V
    .locals 4
    .param p1, "en"    # I

    .prologue
    const/4 v3, 0x1

    .line 57
    const-string v0, "sky audio test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loopback_enable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-ne p1, v3, :cond_0

    .line 59
    const-string v0, "sky audio test"

    const-string v1, "loopback enable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {v3}, Lcom/pantech/test/Audiotest;->java_audiotest_loopback_en(I)I

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v0, "sky audio test"

    const-string v1, "loopback disable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/test/Audiotest;->java_audiotest_loopback_en(I)I

    goto :goto_0
.end method

.method public loopback_setdevice(I)V
    .locals 2
    .param p1, "dev"    # I

    .prologue
    .line 80
    const-string v0, "sky audio test"

    const-string v1, "loopback_setdevice"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p1}, Lcom/pantech/test/Audiotest;->java_audiotest_loopback_setdevice(I)I

    .line 82
    return-void
.end method

.method public sdcard_get_detection_count()I
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/pantech/test/Audiotest;->java_sdcard_get_detection_count()I

    move-result v0

    return v0
.end method

.method public declared-synchronized sdcard_set_detection_count(I)V
    .locals 1
    .param p1, "adjust"    # I

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/pantech/test/Audiotest;->java_sdcard_set_detection_count(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sdcard_set_testresult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 93
    invoke-static {p1}, Lcom/pantech/test/Audiotest;->java_sdcard_set_testresult(I)I

    .line 94
    return-void
.end method

.method public set_ampvolume(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 85
    invoke-static {p1}, Lcom/pantech/test/Audiotest;->java_audiotest_set_ampvolume(I)I

    .line 86
    return-void
.end method

.method public set_device(I)V
    .locals 0
    .param p1, "device"    # I

    .prologue
    .line 89
    invoke-static {p1}, Lcom/pantech/test/Audiotest;->java_audiotest_set_device(I)I

    .line 90
    return-void
.end method
