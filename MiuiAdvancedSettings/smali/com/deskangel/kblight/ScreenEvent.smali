.class public Lcom/deskangel/kblight/ScreenEvent;
.super Landroid/content/BroadcastReceiver;
.source "ScreenEvent.java"


# instance fields
.field cntxt:Landroid/content/Context;

.field mStrAction:Ljava/lang/String;

.field sensorEventListener:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/deskangel/kblight/ScreenEvent;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 14
    iput-object v0, p0, Lcom/deskangel/kblight/ScreenEvent;->cntxt:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/deskangel/kblight/ScreenEvent;->mStrAction:Ljava/lang/String;

    .line 11
    return-void
.end method

.method static synthetic access$0(Lcom/deskangel/kblight/ScreenEvent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/deskangel/kblight/ScreenEvent;->changeBkLightOfButtons(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private changeBkLightOfButtons(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strAction"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    new-instance v0, Lcom/deskangel/lights/LightsController;

    invoke-direct {v0}, Lcom/deskangel/lights/LightsController;-><init>()V

    .line 41
    .local v0, "lc":Lcom/deskangel/lights/LightsController;
    invoke-virtual {v0}, Lcom/deskangel/lights/LightsController;->lockOffButtonBkLight()V

    .line 48
    .end local v0    # "lc":Lcom/deskangel/lights/LightsController;
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    new-instance v0, Lcom/deskangel/lights/LightsController;

    invoke-direct {v0}, Lcom/deskangel/lights/LightsController;-><init>()V

    .line 46
    .restart local v0    # "lc":Lcom/deskangel/lights/LightsController;
    invoke-virtual {v0}, Lcom/deskangel/lights/LightsController;->lockOnButtonBkLight()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deskangel/kblight/ScreenEvent;->mStrAction:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/deskangel/kblight/ScreenEvent;->cntxt:Landroid/content/Context;

    .line 24
    new-instance v0, Lcom/deskangel/kblight/ScreenEvent$1;

    invoke-direct {v0, p0}, Lcom/deskangel/kblight/ScreenEvent$1;-><init>(Lcom/deskangel/kblight/ScreenEvent;)V

    .line 31
    invoke-virtual {v0}, Lcom/deskangel/kblight/ScreenEvent$1;->start()V

    .line 34
    return-void
.end method
