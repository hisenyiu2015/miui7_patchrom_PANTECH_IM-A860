.class public Lcom/android/internal/telephony/gsm/SkyUsim;
.super Ljava/lang/Object;
.source "SkyUsim.java"


# static fields
.field public static final GSDI_CARD_GSM:B = 0x1t

.field public static final GSDI_CARD_MODE_UNKNOWN:B = 0x0t

.field public static final GSDI_CARD_TYPE_ALLOWABLE:I = 0xc

.field public static final GSDI_CARD_TYPE_FORBIDDEN:I = 0xb

.field public static final GSDI_CARD_TYPE_INIT:I = -0x1

.field public static final GSDI_CARD_TYPE_KT_EMPTY_USIM:I = 0x3

.field public static final GSDI_CARD_TYPE_LGU_USIM:I = 0x14

.field public static final GSDI_CARD_TYPE_LG_EMPTY_HOME:I = 0xd

.field public static final GSDI_CARD_TYPE_NONE:I = 0x0

.field public static final GSDI_CARD_TYPE_ONCHIP:I = 0xa

.field public static final GSDI_CARD_TYPE_OTHER_MCC_USIM:I = 0x6

.field public static final GSDI_CARD_TYPE_OTHER_MNC_USIM:I = 0x5

.field public static final GSDI_CARD_TYPE_PLMN_USIM:I = 0x1

.field public static final GSDI_CARD_TYPE_RUIM:I = 0x4

.field public static final GSDI_CARD_TYPE_SIM:I = 0x8

.field public static final GSDI_CARD_TYPE_SKT_EMPTY_USIM:I = 0x2

.field public static final GSDI_CARD_TYPE_TEST_USIM:I = 0x7

.field public static final GSDI_CARD_TYPE_UNKNOWN:I = 0x9

.field public static final GSDI_CARD_USIM:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "SKY USIM"

.field private static mode:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-byte v0, Lcom/android/internal/telephony/gsm/SkyUsim;->mode:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCardMode()I
    .locals 4

    .prologue
    .line 23
    const-string v1, "gsm.usim.cardmode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 24
    .local v0, "CardMode":I
    const-string v1, "SKY USIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCardMode() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return v0
.end method

.method public static getCardType()I
    .locals 4

    .prologue
    .line 50
    const-string v1, "gsm.usim.cardtype"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, "CardType":I
    const-string v1, "SKY USIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCardType() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return v0
.end method

.method public static isUsimCard()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkyUsim;->getCardMode()I

    move-result v1

    .line 59
    .local v1, "mode":I
    const-string v3, "SKY USIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCardMode() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-nez v1, :cond_2

    .line 62
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkyUsim;->getCardType()I

    move-result v0

    .line 63
    .local v0, "card_type":I
    if-eqz v0, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    .line 74
    .end local v0    # "card_type":I
    :cond_0
    :goto_0
    return v2

    .line 67
    .restart local v0    # "card_type":I
    :cond_1
    const/4 v1, 0x2

    .line 71
    .end local v0    # "card_type":I
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 72
    const/4 v2, 0x1

    goto :goto_0
.end method
