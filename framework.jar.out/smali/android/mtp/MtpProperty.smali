.class public final Landroid/mtp/MtpProperty;
.super Ljava/lang/Object;
.source "MtpProperty.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpProperty"


# instance fields
.field private lsValue:I

.field private mCode:I

.field private mType:I

.field private mWritable:Z

.field private msValue:I

.field private strValue:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Landroid/mtp/MtpProperty;->mCode:I

    return v0
.end method

.method public final getPropertyValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 36
    iget v0, p0, Landroid/mtp/MtpProperty;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 47
    const-string v0, "MtpProperty"

    const-string/jumbo v1, "mType default"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 43
    :sswitch_0
    iget v0, p0, Landroid/mtp/MtpProperty;->lsValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 45
    :sswitch_1
    iget-object v0, p0, Landroid/mtp/MtpProperty;->strValue:Ljava/lang/String;

    goto :goto_0

    .line 36
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0xffff -> :sswitch_1
    .end sparse-switch
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Landroid/mtp/MtpProperty;->mType:I

    return v0
.end method

.method public final setPropertyValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 55
    iget v0, p0, Landroid/mtp/MtpProperty;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 68
    const-string v0, "MtpProperty"

    const-string/jumbo v1, "setPropertyValue default"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 62
    .restart local p1    # "value":Ljava/lang/Object;
    :sswitch_0
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/mtp/MtpProperty;->lsValue:I

    goto :goto_0

    .line 65
    .restart local p1    # "value":Ljava/lang/Object;
    :sswitch_1
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    iput-object p1, p0, Landroid/mtp/MtpProperty;->strValue:Ljava/lang/String;

    goto :goto_0

    .line 55
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0xffff -> :sswitch_1
    .end sparse-switch
.end method
