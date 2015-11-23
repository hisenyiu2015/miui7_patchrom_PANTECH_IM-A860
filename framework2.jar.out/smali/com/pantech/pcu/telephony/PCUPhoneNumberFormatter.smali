.class public Lcom/pantech/pcu/telephony/PCUPhoneNumberFormatter;
.super Ljava/lang/Object;
.source "PCUPhoneNumberFormatter.java"


# static fields
.field private static final MAX_HYPEN_POSITION:I = 0x8

.field private static final NEED_HYPEN_POSITION:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Landroid/text/Editable;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    const/4 v5, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    .local v1, "nCodePosition":I
    const/4 v2, 0x0

    .line 13
    .local v2, "nHypenPosition":I
    const/4 v0, 0x0

    .line 14
    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 15
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 17
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v0, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/pcu/telephony/PCUPhoneNumberFormatter;->sFindCodeSet(Ljava/lang/String;)I

    move-result v1

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v1, v4}, Lcom/pantech/pcu/telephony/PCUPhoneNumberFormatter;->sFindHypen(Ljava/lang/String;II)I

    move-result v2

    .line 26
    if-lez v2, :cond_2

    .line 28
    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_2

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_2

    .line 29
    invoke-static {p0, v2}, Lcom/pantech/pcu/telephony/PCUPhoneNumberFormatter;->sInsertHypen(Landroid/text/Editable;I)V

    .line 34
    :cond_2
    if-lez v1, :cond_3

    .line 35
    invoke-static {p0, v1}, Lcom/pantech/pcu/telephony/PCUPhoneNumberFormatter;->sInsertHypen(Landroid/text/Editable;I)V

    .line 37
    :cond_3
    return-void
.end method

.method private static sFindCodeSet(Ljava/lang/String;)I
    .locals 5
    .param p0, "szFindNumBuf"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 62
    const/16 v3, 0x27

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "001"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "002"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "008"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "011"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "012"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "015"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "016"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "017"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "018"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "019"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "080"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "010"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string v4, "070"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const-string v4, "0505"

    aput-object v4, v1, v3

    const/16 v3, 0xe

    const-string v4, "050"

    aput-object v4, v1, v3

    const/16 v3, 0xf

    const-string v4, "060"

    aput-object v4, v1, v3

    const/16 v3, 0x10

    const-string v4, "02"

    aput-object v4, v1, v3

    const/16 v3, 0x11

    const-string v4, "031"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    const-string v4, "032"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    const-string v4, "033"

    aput-object v4, v1, v3

    const/16 v3, 0x14

    const-string v4, "041"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    const-string v4, "042"

    aput-object v4, v1, v3

    const/16 v3, 0x16

    const-string v4, "043"

    aput-object v4, v1, v3

    const/16 v3, 0x17

    const-string v4, "044"

    aput-object v4, v1, v3

    const/16 v3, 0x18

    const-string v4, "051"

    aput-object v4, v1, v3

    const/16 v3, 0x19

    const-string v4, "052"

    aput-object v4, v1, v3

    const/16 v3, 0x1a

    const-string v4, "053"

    aput-object v4, v1, v3

    const/16 v3, 0x1b

    const-string v4, "054"

    aput-object v4, v1, v3

    const/16 v3, 0x1c

    const-string v4, "055"

    aput-object v4, v1, v3

    const/16 v3, 0x1d

    const-string v4, "061"

    aput-object v4, v1, v3

    const/16 v3, 0x1e

    const-string v4, "062"

    aput-object v4, v1, v3

    const/16 v3, 0x1f

    const-string v4, "063"

    aput-object v4, v1, v3

    const/16 v3, 0x20

    const-string v4, "064"

    aput-object v4, v1, v3

    const/16 v3, 0x21

    const-string v4, "00700"

    aput-object v4, v1, v3

    const/16 v3, 0x22

    const-string v4, "00770"

    aput-object v4, v1, v3

    const/16 v3, 0x23

    const-string v4, "00300"

    aput-object v4, v1, v3

    const/16 v3, 0x24

    const-string v4, "00365"

    aput-object v4, v1, v3

    const/16 v3, 0x25

    const-string v4, "005"

    aput-object v4, v1, v3

    const/16 v3, 0x26

    const-string v4, "00345"

    aput-object v4, v1, v3

    .line 77
    .local v1, "szKorNeedHypenCode":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 78
    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_1

    .line 86
    :cond_0
    :goto_1
    return v2

    .line 82
    :cond_1
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    .line 77
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static sFindHypen(Ljava/lang/String;II)I
    .locals 4
    .param p0, "szFindNumBuf"    # Ljava/lang/String;
    .param p1, "nCodePos"    # I
    .param p2, "nMaxLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "nPos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    const/4 v3, 0x4

    if-gt v2, v3, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    if-gt v2, p2, :cond_0

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x4

    move v1, v0

    .line 110
    goto :goto_0
.end method

.method private static sInsertCode(Landroid/text/Editable;I)V
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "nPosition"    # I

    .prologue
    .line 51
    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, p1, :cond_2

    invoke-interface {p0, p1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 57
    :cond_2
    const-string v0, ")"

    invoke-interface {p0, p1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method private static sInsertHypen(Landroid/text/Editable;I)V
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "nPosition"    # I

    .prologue
    .line 40
    if-nez p1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, p1, :cond_2

    invoke-interface {p0, p1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    .line 46
    :cond_2
    const-string v0, "-"

    invoke-interface {p0, p1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method
