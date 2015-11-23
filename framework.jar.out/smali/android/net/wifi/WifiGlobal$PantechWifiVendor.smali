.class public final enum Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
.super Ljava/lang/Enum;
.source "WifiGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PantechWifiVendor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/WifiGlobal$PantechWifiVendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

.field public static final enum VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

.field public static final enum VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

.field public static final enum VENDOR_NONE:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

.field public static final enum VENDOR_OTHERS:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

.field public static final enum VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    const-string v1, "VENDOR_NONE"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_NONE:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .line 40
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    const-string v1, "VENDOR_SKT"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .line 41
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    const-string v1, "VENDOR_KT"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .line 42
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    const-string v1, "VENDOR_LGU"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .line 43
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    const-string v1, "VENDOR_OTHERS"

    invoke-direct {v0, v1, v6}, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_OTHERS:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_NONE:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_OTHERS:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    aput-object v1, v0, v6

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->$VALUES:[Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->$VALUES:[Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    invoke-virtual {v0}, [Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    return-object v0
.end method
