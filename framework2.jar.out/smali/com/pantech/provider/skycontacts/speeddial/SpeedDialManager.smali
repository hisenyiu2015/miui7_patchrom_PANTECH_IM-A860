.class public interface abstract Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;
.super Ljava/lang/Object;
.source "SpeedDialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager$SpeedDialManagerFactory;
    }
.end annotation


# virtual methods
.method public abstract deleteSpeedDial(I)Z
.end method

.method public abstract getSpeedDial(I)Lcom/pantech/provider/skycontacts/SpeedDialEntry;
.end method

.method public abstract insertSpeedDial(IJ)Landroid/net/Uri;
.end method

.method public abstract refreshSpeedDialData(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSpeedDial(IJ)Z
.end method
