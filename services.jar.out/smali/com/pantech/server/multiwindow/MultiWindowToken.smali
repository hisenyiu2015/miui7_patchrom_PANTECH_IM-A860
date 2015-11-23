.class final Lcom/pantech/server/multiwindow/MultiWindowToken;
.super Ljava/lang/Object;
.source "MultiWindowToken.java"


# instance fields
.field finishing:Z

.field final fullscreen:Z

.field final intent:Landroid/content/Intent;

.field multiple:Z

.field final service:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

.field stringName:Ljava/lang/String;

.field final token:Landroid/os/IBinder;

.field window:Lcom/pantech/server/multiwindow/MultiWindow;

.field windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;


# direct methods
.method public constructor <init>(Lcom/pantech/server/multiwindow/MultiWindowManagerService;Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "service"    # Lcom/pantech/server/multiwindow/MultiWindowManagerService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "fullscreen"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->service:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    .line 26
    iput-object p2, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->token:Landroid/os/IBinder;

    .line 27
    iput-object p3, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->intent:Landroid/content/Intent;

    .line 28
    iput-boolean p4, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->fullscreen:Z

    .line 30
    invoke-virtual {p0}, Lcom/pantech/server/multiwindow/MultiWindowToken;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->multiple:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->window:Lcom/pantech/server/multiwindow/MultiWindow;

    .line 33
    iget-object v0, p1, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 34
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget-object v0, v0, Lcom/pantech/server/multiwindow/MultiWindowZone;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->finishing:Z

    .line 36
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "token="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "intent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->fullscreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 78
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "multiple="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->multiple:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 80
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->window:Lcom/pantech/server/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "window="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->window:Lcom/pantech/server/multiwindow/MultiWindow;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 83
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "windowZone="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "finishing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->finishing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 85
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 40
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMultipleLocked(Z)V
    .locals 2
    .param p1, "multiple"    # Z

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->multiple:Z

    if-ne v0, p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iput-boolean p1, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->multiple:Z

    .line 66
    if-nez p1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->service:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    iget-object v0, v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    invoke-virtual {p0, v0}, Lcom/pantech/server/multiwindow/MultiWindowToken;->setWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->service:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    invoke-virtual {p0}, Lcom/pantech/server/multiwindow/MultiWindowToken;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->multiple:Z

    goto :goto_0
.end method

.method public setWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V
    .locals 1
    .param p1, "windowZone"    # Lcom/pantech/server/multiwindow/MultiWindowZone;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->multiple:Z

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->service:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    iget-object p1, v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    if-ne v0, p1, :cond_1

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget-object v0, v0, Lcom/pantech/server/multiwindow/MultiWindowZone;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p1, Lcom/pantech/server/multiwindow/MultiWindowZone;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iput-object p1, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 56
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->service:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    invoke-virtual {v0, p0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->performWindowStatusChangedLocked(Lcom/pantech/server/multiwindow/MultiWindowToken;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->stringName:Ljava/lang/String;

    .line 97
    :goto_0
    return-object v1

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "MultiWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowToken;->stringName:Ljava/lang/String;

    goto :goto_0
.end method
