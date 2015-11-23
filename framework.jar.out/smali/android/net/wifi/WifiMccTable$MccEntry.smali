.class Landroid/net/wifi/WifiMccTable$MccEntry;
.super Ljava/lang/Object;
.source "WifiMccTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMccTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MccEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/net/wifi/WifiMccTable$MccEntry;",
        ">;"
    }
.end annotation


# instance fields
.field iso:Ljava/lang/String;

.field language:Ljava/lang/String;

.field mcc:I

.field smallestDigitsMnc:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "mnc"    # I
    .param p2, "iso"    # Ljava/lang/String;
    .param p3, "smallestDigitsMCC"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/wifi/WifiMccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 56
    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "mnc"    # I
    .param p2, "iso"    # Ljava/lang/String;
    .param p3, "smallestDigitsMCC"    # I
    .param p4, "language"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Landroid/net/wifi/WifiMccTable$MccEntry;->mcc:I

    .line 60
    iput-object p2, p0, Landroid/net/wifi/WifiMccTable$MccEntry;->iso:Ljava/lang/String;

    .line 61
    iput p3, p0, Landroid/net/wifi/WifiMccTable$MccEntry;->smallestDigitsMnc:I

    .line 62
    iput-object p4, p0, Landroid/net/wifi/WifiMccTable$MccEntry;->language:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/net/wifi/WifiMccTable$MccEntry;)I
    .locals 2
    .param p1, "o"    # Landroid/net/wifi/WifiMccTable$MccEntry;

    .prologue
    .line 68
    iget v0, p0, Landroid/net/wifi/WifiMccTable$MccEntry;->mcc:I

    iget v1, p1, Landroid/net/wifi/WifiMccTable$MccEntry;->mcc:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Landroid/net/wifi/WifiMccTable$MccEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiMccTable$MccEntry;->compareTo(Landroid/net/wifi/WifiMccTable$MccEntry;)I

    move-result v0

    return v0
.end method
