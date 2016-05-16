.class public Lcom/deskangel/kblight/BkService;
.super Landroid/app/Service;
.source "BkService.java"


# instance fields
.field mScrEvnt:Lcom/deskangel/kblight/ScreenEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deskangel/kblight/BkService;->mScrEvnt:Lcom/deskangel/kblight/ScreenEvent;

    .line 10
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/deskangel/kblight/ScreenEvent;

    invoke-direct {v0}, Lcom/deskangel/kblight/ScreenEvent;-><init>()V

    iput-object v0, p0, Lcom/deskangel/kblight/BkService;->mScrEvnt:Lcom/deskangel/kblight/ScreenEvent;

    .line 24
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 25
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lcom/deskangel/kblight/BkService;->mScrEvnt:Lcom/deskangel/kblight/ScreenEvent;

    if-eqz v1, :cond_0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/deskangel/kblight/BkService;->mScrEvnt:Lcom/deskangel/kblight/ScreenEvent;

    invoke-virtual {p0, v1}, Lcom/deskangel/kblight/BkService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 43
    return-void

    .line 36
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 54
    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    .local v2, "screenOnfilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/deskangel/kblight/BkService;->mScrEvnt:Lcom/deskangel/kblight/ScreenEvent;

    invoke-virtual {p0, v3, v2}, Lcom/deskangel/kblight/BkService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "screenOfffilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/deskangel/kblight/BkService;->mScrEvnt:Lcom/deskangel/kblight/ScreenEvent;

    invoke-virtual {p0, v3, v1}, Lcom/deskangel/kblight/BkService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "screenOfffilter":Landroid/content/IntentFilter;
    .end local v2    # "screenOnfilter":Landroid/content/IntentFilter;
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 68
    return-void

    .line 61
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
