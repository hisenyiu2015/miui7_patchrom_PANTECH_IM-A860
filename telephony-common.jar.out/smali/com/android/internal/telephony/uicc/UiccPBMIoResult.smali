.class public Lcom/android/internal/telephony/uicc/UiccPBMIoResult;
.super Ljava/lang/Object;
.source "UiccPBMIoResult.java"


# instance fields
.field private num_fields:I

.field private num_recs:I

.field private payload:Ljava/lang/String;

.field private rec_id:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "rec_id"    # I
    .param p2, "num_fields"    # I
    .param p3, "num_recs"    # I
    .param p4, "payload"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->rec_id:I

    .line 45
    iput p2, p0, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->num_fields:I

    .line 46
    iput p3, p0, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->num_recs:I

    .line 47
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->payload:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getNumFields()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->num_fields:I

    return v0
.end method

.method public getNumRecs()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->num_recs:I

    return v0
.end method

.method public getPayLoad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public getRecid()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->rec_id:I

    return v0
.end method
