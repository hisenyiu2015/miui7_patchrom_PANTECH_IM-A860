.class public Lcom/deskangel/lights/LightsController;
.super Ljava/lang/Object;
.source "LightsController.java"


# static fields
.field static LCD_BUTTON_BACKLIGHT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "/sys/class/leds/button-backlight/brightness"

    sput-object v0, Lcom/deskangel/lights/LightsController;->LCD_BUTTON_BACKLIGHT:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/deskangel/lights/LightsController;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/deskangel/lights/LightsController;->execCmd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private execCmd(Ljava/lang/String;)Z
    .locals 9
    .param p1, "strCmd"    # Ljava/lang/String;

    .prologue
    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 59
    :cond_0
    const/4 v6, 0x0

    .line 111
    :goto_0
    return v6

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 64
    .local v0, "bResult":Z
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 65
    .local v5, "r":Ljava/lang/Runtime;
    const/4 v2, 0x0

    .line 66
    .local v2, "os":Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    .line 70
    .local v4, "p":Ljava/lang/Process;
    :try_start_0
    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 72
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v2    # "os":Ljava/io/DataOutputStream;
    .local v3, "os":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 76
    const-string v6, "exit\n"

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 81
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    const/4 v0, 0x1

    .line 96
    if-eqz v3, :cond_2

    .line 98
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 106
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 107
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    :cond_3
    move-object v2, v3

    .end local v3    # "os":Ljava/io/DataOutputStream;
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    :cond_4
    :goto_2
    move v6, v0

    .line 111
    goto :goto_0

    .line 84
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 85
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    const-string v6, "lights"

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    if-eqz v2, :cond_5

    .line 98
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 106
    :cond_5
    :goto_4
    if-eqz v4, :cond_4

    .line 107
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    goto :goto_2

    .line 99
    :catch_1
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    const-string v6, "lights"

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 87
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 88
    .local v1, "e":Ljava/lang/SecurityException;
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 89
    const-string v6, "lights"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 96
    if-eqz v2, :cond_6

    .line 98
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 106
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_6
    :goto_6
    if-eqz v4, :cond_4

    .line 107
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    goto :goto_2

    .line 99
    .restart local v1    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    const-string v6, "lights"

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    move-object v1, v6

    .line 92
    .local v1, "e":Ljava/lang/InterruptedException;
    :goto_7
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 93
    const-string v6, "lights"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 96
    if-eqz v2, :cond_7

    .line 98
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 106
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_7
    :goto_8
    if-eqz v4, :cond_4

    .line 107
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    goto :goto_2

    .line 99
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    const-string v6, "lights"

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 96
    :goto_9
    if-eqz v2, :cond_8

    .line 98
    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 106
    :cond_8
    :goto_a
    if-eqz v4, :cond_9

    .line 107
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    .line 109
    :cond_9
    throw v6

    .line 99
    :catch_6
    move-exception v1

    .line 100
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    const-string v7, "lights"

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 99
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "os":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v1

    .line 100
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    const-string v6, "lights"

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "os":Ljava/io/DataOutputStream;
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    goto :goto_9

    .line 91
    .end local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "os":Ljava/io/DataOutputStream;
    :catch_8
    move-exception v6

    move-object v1, v6

    move-object v2, v3

    .end local v3    # "os":Ljava/io/DataOutputStream;
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    goto :goto_7

    .line 87
    .end local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "os":Ljava/io/DataOutputStream;
    :catch_9
    move-exception v6

    move-object v1, v6

    move-object v2, v3

    .end local v3    # "os":Ljava/io/DataOutputStream;
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    goto :goto_5

    .line 84
    .end local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "os":Ljava/io/DataOutputStream;
    :catch_a
    move-exception v6

    move-object v1, v6

    move-object v2, v3

    .end local v3    # "os":Ljava/io/DataOutputStream;
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    goto/16 :goto_3
.end method

.method private execCmdThread(Ljava/lang/String;)V
    .locals 2
    .param p1, "strCommand"    # Ljava/lang/String;

    .prologue
    .line 44
    move-object v0, p1

    .line 46
    .local v0, "strCmd":Ljava/lang/String;
    new-instance v1, Lcom/deskangel/lights/LightsController$1;

    invoke-direct {v1, p0, v0}, Lcom/deskangel/lights/LightsController$1;-><init>(Lcom/deskangel/lights/LightsController;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Lcom/deskangel/lights/LightsController$1;->start()V

    .line 55
    return-void
.end method


# virtual methods
.method public lockOffButtonBkLight()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, "strCommand":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 644 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/deskangel/lights/LightsController;->LCD_BUTTON_BACKLIGHT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "echo 0 > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/deskangel/lights/LightsController;->LCD_BUTTON_BACKLIGHT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "chmod 444 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/deskangel/lights/LightsController;->LCD_BUTTON_BACKLIGHT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-direct {p0, v0}, Lcom/deskangel/lights/LightsController;->execCmdThread(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public lockOnButtonBkLight()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 15
    .local v0, "strCommand":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 644 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/deskangel/lights/LightsController;->LCD_BUTTON_BACKLIGHT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "echo 1 > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/deskangel/lights/LightsController;->LCD_BUTTON_BACKLIGHT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "chmod 444 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/deskangel/lights/LightsController;->LCD_BUTTON_BACKLIGHT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Lcom/deskangel/lights/LightsController;->execCmdThread(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public unlockButtonBkLight()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "strCommand":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 644 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/deskangel/lights/LightsController;->LCD_BUTTON_BACKLIGHT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Lcom/deskangel/lights/LightsController;->execCmdThread(Ljava/lang/String;)V

    .line 40
    return-void
.end method
