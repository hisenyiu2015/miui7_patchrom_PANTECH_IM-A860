.class final Lcom/pantech/server/multiwindow/MultiWindowZone;
.super Ljava/lang/Object;
.source "MultiWindowZone.java"


# instance fields
.field final frame:Landroid/graphics/Rect;

.field final id:I

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
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->frame:Landroid/graphics/Rect;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->windowTokens:Ljava/util/ArrayList;

    .line 18
    iput-object p1, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->service:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    .line 19
    iput p2, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    .line 20
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "frame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->frame:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 36
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 37
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "windowTokens:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setFrameLocked(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 23
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->frame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    :cond_0
    return-void

    .line 27
    :cond_1
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->frame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 29
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->windowTokens:Ljava/util/ArrayList;

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

    .line 30
    .local v1, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->service:Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    invoke-virtual {v2, v1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->performWindowStatusChangedLocked(Lcom/pantech/server/multiwindow/MultiWindowToken;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->stringName:Ljava/lang/String;

    .line 54
    :goto_0
    return-object v1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 49
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "MultiWindowZone{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v1, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowZone;->stringName:Ljava/lang/String;

    goto :goto_0
.end method
