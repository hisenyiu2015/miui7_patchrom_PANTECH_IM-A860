.class public abstract Lcom/pantech/provider/skycontacts/SpeedDialEntry;
.super Ljava/lang/Object;
.source "SpeedDialEntry.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDataId()J
.end method

.method public abstract getNumber()Ljava/lang/String;
.end method

.method public abstract getRawContactId()J
.end method

.method public abstract getSpeedDialValue()I
.end method

.method public abstract setDataId(J)V
.end method

.method public abstract setNumber(Ljava/lang/String;)V
.end method

.method public abstract setRawContactId(J)V
.end method

.method public abstract setSpeedDialValue(I)V
.end method
