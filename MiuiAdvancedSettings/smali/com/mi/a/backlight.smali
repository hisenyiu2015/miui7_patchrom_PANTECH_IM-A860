.class public Lcom/mi/a/backlight;
.super Ljava/lang/Object;
.source "backlight.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closebacklight()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "chmod 666 /sys/class/leds/button-backlight/brightness\necho 0 >/sys/class/leds/button-backlight/brightness\nchmod 444 /sys/class/leds/button-backlight/brightness"

    .line 11
    .local v0, "Shellstr":Ljava/lang/String;
    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 13
    return-void
.end method

.method public openbacklight()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "chmod 666 /sys/class/leds/button-backlight/brightness\necho 255 >/sys/class/leds/button-backlight/brightness\nchmod 444 /sys/class/leds/button-backlight/brightness"

    .line 18
    .local v0, "Shellstr":Ljava/lang/String;
    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 20
    return-void
.end method
