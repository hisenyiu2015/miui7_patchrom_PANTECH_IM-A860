.class public Lcom/android/internal/telephony/gsm/NwRegInfoInd;
.super Ljava/lang/Object;
.source "NwRegInfoInd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;,
        Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "NwRegInfoInd"


# instance fields
.field private mcc:I

.field private mnc:I

.field private needDisp:Z

.field private permReject:Z

.field private rat:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

.field private regSuccess:Z

.field private rejCause:I

.field private rejDomain:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;->UNKNOWN:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rejDomain:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    .line 43
    iput v1, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rejCause:I

    .line 44
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->permReject:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->needDisp:Z

    .line 46
    iput v1, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->mcc:I

    .line 47
    iput v1, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->mnc:I

    .line 48
    sget-object v0, Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;->UNKNOWN:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rat:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    .line 49
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->regSuccess:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getDomain()Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rejDomain:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    return-object v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->mcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->mnc:I

    return v0
.end method

.method public getRadioTech()Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rat:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    return-object v0
.end method

.method public getRejCause()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rejCause:I

    return v0
.end method

.method public isRegSuccess()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->regSuccess:Z

    return v0
.end method

.method public needDisplay()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->needDisp:Z

    return v0
.end method

.method public setRegInfo([I)V
    .locals 3
    .param p1, "regArray"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    aget v0, p1, v2

    packed-switch v0, :pswitch_data_0

    .line 65
    sget-object v0, Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;->UNKNOWN:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rejDomain:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    .line 69
    :goto_0
    aget v0, p1, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rejCause:I

    .line 70
    const/4 v0, 0x2

    aget v0, p1, v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->permReject:Z

    .line 71
    const/4 v0, 0x3

    aget v0, p1, v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->needDisp:Z

    .line 72
    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->mcc:I

    .line 73
    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->mnc:I

    .line 75
    const/4 v0, 0x6

    aget v0, p1, v0

    packed-switch v0, :pswitch_data_1

    .line 86
    sget-object v0, Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;->UNKNOWN:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rat:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    .line 90
    :goto_3
    const/4 v0, 0x7

    aget v0, p1, v0

    if-ne v0, v1, :cond_2

    :goto_4
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->regSuccess:Z

    .line 92
    return-void

    .line 56
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;->CS:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rejDomain:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    goto :goto_0

    .line 59
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;->PS:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rejDomain:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    goto :goto_0

    .line 62
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;->CSPS:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rejDomain:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    goto :goto_0

    :cond_0
    move v0, v2

    .line 70
    goto :goto_1

    :cond_1
    move v0, v2

    .line 71
    goto :goto_2

    .line 77
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;->GSM:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rat:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    goto :goto_3

    .line 80
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;->UMTS:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rat:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    goto :goto_3

    .line 83
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;->LTE:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rat:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    goto :goto_3

    :cond_2
    move v1, v2

    .line 90
    goto :goto_4

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 75
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NwRegInfoInd {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rejDomain:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rejCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rejCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->rat:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " permReject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->permReject:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " needDisp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->needDisp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " regSuccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->regSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
