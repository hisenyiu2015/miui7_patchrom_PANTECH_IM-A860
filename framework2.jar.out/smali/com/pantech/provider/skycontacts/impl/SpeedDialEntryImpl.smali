.class public final Lcom/pantech/provider/skycontacts/impl/SpeedDialEntryImpl;
.super Lcom/pantech/provider/skycontacts/SpeedDialEntry;
.source "SpeedDialEntryImpl.java"


# instance fields
.field private mDataId:J

.field private mRawContactId:J

.field private mSpeedDial:Ljava/lang/String;

.field private mSpeedDialValue:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/pantech/provider/skycontacts/SpeedDialEntry;-><init>(ILjava/lang/String;)V

    .line 17
    iput p1, p0, Lcom/pantech/provider/skycontacts/impl/SpeedDialEntryImpl;->mSpeedDialValue:I

    .line 18
    iput-object p2, p0, Lcom/pantech/provider/skycontacts/impl/SpeedDialEntryImpl;->mSpeedDial:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getDataId()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/pantech/provider/skycontacts/impl/SpeedDialEntryImpl;->mDataId:J

    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/SpeedDialEntryImpl;->mSpeedDial:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/pantech/provider/skycontacts/impl/SpeedDialEntryImpl;->mRawContactId:J

    return-wide v0
.end method

.method public getSpeedDialValue()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/pantech/provider/skycontacts/impl/SpeedDialEntryImpl;->mSpeedDialValue:I

    return v0
.end method

.method public setDataId(J)V
    .locals 0
    .param p1, "phoneId"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/pantech/provider/skycontacts/impl/SpeedDialEntryImpl;->mDataId:J

    .line 43
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "speedDial"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/SpeedDialEntryImpl;->mSpeedDial:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setRawContactId(J)V
    .locals 0
    .param p1, "rawcontactId"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/pantech/provider/skycontacts/impl/SpeedDialEntryImpl;->mRawContactId:J

    .line 35
    return-void
.end method

.method public setSpeedDialValue(I)V
    .locals 0
    .param p1, "speedDialValue"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/pantech/provider/skycontacts/impl/SpeedDialEntryImpl;->mSpeedDialValue:I

    .line 27
    return-void
.end method
