.class final Lcom/pantech/server/multiwindow/MultiWindow;
.super Ljava/lang/Object;
.source "MultiWindow.java"


# instance fields
.field final id:I

.field isHome:Z

.field final service:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

.field stringName:Ljava/lang/String;

.field final windowTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/server/multiwindow/MultiWindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/server/multiwindow/MultiWindowManagerService;I)V
    .locals 1
    .param p1, "service"    # Lcom/pantech/server/multiwindow/MultiWindowManagerService;
    .param p2, "id"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindow;->windowTokens:Ljava/util/ArrayList;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/server/multiwindow/MultiWindow;->isHome:Z

    .line 19
    iput-object p1, p0, Lcom/pantech/server/multiwindow/MultiWindow;->service:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    .line 20
    iput p2, p0, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    .line 21
    return-void
.end method


# virtual methods
.method public addWindowTokenLocked(Lcom/pantech/server/multiwindow/MultiWindowToken;)V
    .locals 1
    .param p1, "windowToken"    # Lcom/pantech/server/multiwindow/MultiWindowToken;

    .prologue
    .line 24
    iput-object p0, p1, Lcom/pantech/server/multiwindow/MultiWindowToken;->window:Lcom/pantech/server/multiwindow/MultiWindow;

    .line 25
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindow;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public currentWindowTokenLocked()Lcom/pantech/server/multiwindow/MultiWindowToken;
    .locals 3

    .prologue
    .line 44
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindow;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 45
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindow;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/server/multiwindow/MultiWindowToken;

    .line 46
    .local v1, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    iget-boolean v2, v1, Lcom/pantech/server/multiwindow/MultiWindowToken;->finishing:Z

    if-nez v2, :cond_0

    .line 50
    .end local v1    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :goto_1
    return-object v1

    .line 44
    .restart local v1    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 50
    .end local v1    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindow;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 85
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "windowTokens:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindow;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindow;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/server/multiwindow/MultiWindowToken;

    .line 88
    .local v1, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/pantech/server/multiwindow/MultiWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "i":I
    .end local v1    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "isHome="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/server/multiwindow/MultiWindow;->isHome:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 94
    return-void
.end method

.method public findWindowTokenLocked(Landroid/os/IBinder;)Lcom/pantech/server/multiwindow/MultiWindowToken;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 35
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindow;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/server/multiwindow/MultiWindowToken;

    .line 36
    .local v1, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    iget-object v2, v1, Lcom/pantech/server/multiwindow/MultiWindowToken;->token:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 40
    .end local v1    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeWindowTokenLocked(Lcom/pantech/server/multiwindow/MultiWindowToken;)V
    .locals 1
    .param p1, "windowToken"    # Lcom/pantech/server/multiwindow/MultiWindowToken;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindow;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p1, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget-object v0, v0, Lcom/pantech/server/multiwindow/MultiWindowZone;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/pantech/server/multiwindow/MultiWindowToken;->window:Lcom/pantech/server/multiwindow/MultiWindow;

    .line 32
    return-void
.end method

.method public setMultipleLocked(Z)V
    .locals 4
    .param p1, "multiple"    # Z

    .prologue
    .line 71
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindow;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/server/multiwindow/MultiWindowToken;

    .line 72
    .local v1, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    invoke-virtual {v1, p1}, Lcom/pantech/server/multiwindow/MultiWindowToken;->setMultipleLocked(Z)V

    goto :goto_0

    .line 75
    .end local v1    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_0
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindow;->service:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    iget v2, v2, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedId:I

    iget v3, p0, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    if-ne v2, v3, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/pantech/server/multiwindow/MultiWindow;->currentWindowTokenLocked()Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v1

    .line 77
    .restart local v1    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-eqz v1, :cond_1

    .line 78
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindow;->service:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    iget-object v3, v1, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v3, v3, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    invoke-virtual {v2, v3}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->performFocusedZoneChangedLocked(I)V

    .line 81
    .end local v1    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_1
    return-void
.end method

.method public setWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V
    .locals 5
    .param p1, "windowZone"    # Lcom/pantech/server/multiwindow/MultiWindowZone;

    .prologue
    .line 54
    iget-object v3, p0, Lcom/pantech/server/multiwindow/MultiWindow;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/server/multiwindow/MultiWindowToken;

    .line 55
    .local v1, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    invoke-virtual {v1, p1}, Lcom/pantech/server/multiwindow/MultiWindowToken;->setWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V

    goto :goto_0

    .line 58
    .end local v1    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/multiwindow/MultiWindow;->service:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    iget v3, v3, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedId:I

    iget v4, p0, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    if-ne v3, v4, :cond_2

    .line 59
    iget v2, p1, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    .line 61
    .local v2, "zone":I
    invoke-virtual {p0}, Lcom/pantech/server/multiwindow/MultiWindow;->currentWindowTokenLocked()Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v1

    .line 62
    .restart local v1    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-eqz v1, :cond_1

    .line 63
    iget-object v3, v1, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v2, v3, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    .line 66
    :cond_1
    iget-object v3, p0, Lcom/pantech/server/multiwindow/MultiWindow;->service:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    invoke-virtual {v3, v2}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->performFocusedZoneChangedLocked(I)V

    .line 68
    .end local v1    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    .end local v2    # "zone":I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindow;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindow;->stringName:Ljava/lang/String;

    .line 106
    :goto_0
    return-object v1

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 101
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "MultiWindow{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v1, p0, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindow;->stringName:Ljava/lang/String;

    goto :goto_0
.end method
