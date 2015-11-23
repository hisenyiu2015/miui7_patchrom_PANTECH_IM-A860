.class public Lcom/pantech/provider/skycontacts/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static final DEFAULT_MODEL:Ljava/lang/String; = "EF63S"

.field private static final DEFAULT_VERSION:Ljava/lang/String; = "Kitkat44"

.field private static final DEVICES:[[Ljava/lang/String;

.field public static final EF44:Ljava/lang/String; = "44"

.field public static final EF44S:Ljava/lang/String; = "EF44S"

.field public static final EF454647:Ljava/lang/String; = "454647"

.field public static final EF45K:Ljava/lang/String; = "EF45K"

.field public static final EF46L:Ljava/lang/String; = "EF46L"

.field public static final EF47S:Ljava/lang/String; = "EF47S"

.field public static final EF484950:Ljava/lang/String; = "484950"

.field public static final EF48S:Ljava/lang/String; = "EF48S"

.field public static final EF49K:Ljava/lang/String; = "EF49K"

.field public static final EF50L:Ljava/lang/String; = "EF50L"

.field public static final EF51:Ljava/lang/String; = "51"

.field public static final EF51K:Ljava/lang/String; = "EF51K"

.field public static final EF51L:Ljava/lang/String; = "EF51L"

.field public static final EF51S:Ljava/lang/String; = "EF51S"

.field public static final EF52:Ljava/lang/String; = "52"

.field public static final EF52K:Ljava/lang/String; = "EF52K"

.field public static final EF52L:Ljava/lang/String; = "EF52L"

.field public static final EF52S:Ljava/lang/String; = "EF52S"

.field public static final EF55:Ljava/lang/String; = "55"

.field public static final EF55K:Ljava/lang/String; = "EF55K"

.field public static final EF55L:Ljava/lang/String; = "EF55L"

.field public static final EF55S:Ljava/lang/String; = "EF55S"

.field public static final EF5678:Ljava/lang/String; = "565758"

.field public static final EF56S:Ljava/lang/String; = "EF56S"

.field public static final EF57K:Ljava/lang/String; = "EF57K"

.field public static final EF58L:Ljava/lang/String; = "EF58L"

.field public static final EF59:Ljava/lang/String; = "59"

.field public static final EF59K:Ljava/lang/String; = "EF59K"

.field public static final EF59L:Ljava/lang/String; = "EF59L"

.field public static final EF59S:Ljava/lang/String; = "EF59S"

.field public static final EF606162:Ljava/lang/String; = "606162"

.field public static final EF60S:Ljava/lang/String; = "EF60S"

.field public static final EF61K:Ljava/lang/String; = "EF61K"

.field public static final EF62L:Ljava/lang/String; = "EF62L"

.field public static final EF63:Ljava/lang/String; = "63"

.field public static final EF63K:Ljava/lang/String; = "EF63K"

.field public static final EF63L:Ljava/lang/String; = "EF63L"

.field public static final EF63S:Ljava/lang/String; = "EF63S"

.field private static final GROUP:I = 0x2

.field public static final ICS40:Ljava/lang/String; = "IceCream40"

.field public static final JB41:Ljava/lang/String; = "Jellybean41"

.field public static final JB42:Ljava/lang/String; = "Jellybean42"

.field public static final JB43:Ljava/lang/String; = "Jellybean43"

.field public static final KK44:Ljava/lang/String; = "Kitkat44"

.field public static final KT:Ljava/lang/String; = "KT"

.field public static final LGU:Ljava/lang/String; = "LGU"

.field private static final MODEL:I = 0x0

.field private static final OPERATOR:I = 0x1

.field private static final SEQUENTIAL_GROUPS:[Ljava/lang/String;

.field public static final SKT:Ljava/lang/String; = "SKT"

.field private static mGroup:Ljava/lang/String;

.field private static mModel:Ljava/lang/String;

.field private static mOperator:Ljava/lang/String;

.field private static mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 28
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "454647"

    aput-object v4, v3, v7

    const-string v4, "484950"

    aput-object v4, v3, v8

    const-string v4, "44"

    aput-object v4, v3, v9

    const-string v4, "51"

    aput-object v4, v3, v10

    const-string v4, "52"

    aput-object v4, v3, v6

    const/4 v4, 0x5

    const-string v5, "565758"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "59"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "606162"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "55"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "63"

    aput-object v5, v3, v4

    sput-object v3, Lcom/pantech/provider/skycontacts/DeviceInfo;->SEQUENTIAL_GROUPS:[Ljava/lang/String;

    .line 82
    const/16 v3, 0x1c

    new-array v3, v3, [[Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "EF44S"

    aput-object v5, v4, v7

    const-string v5, "SKT"

    aput-object v5, v4, v8

    const-string v5, "44"

    aput-object v5, v4, v9

    aput-object v4, v3, v7

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "EF45K"

    aput-object v5, v4, v7

    const-string v5, "KT"

    aput-object v5, v4, v8

    const-string v5, "454647"

    aput-object v5, v4, v9

    aput-object v4, v3, v8

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "EF46L"

    aput-object v5, v4, v7

    const-string v5, "LGU"

    aput-object v5, v4, v8

    const-string v5, "454647"

    aput-object v5, v4, v9

    aput-object v4, v3, v9

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "EF47S"

    aput-object v5, v4, v7

    const-string v5, "SKT"

    aput-object v5, v4, v8

    const-string v5, "454647"

    aput-object v5, v4, v9

    aput-object v4, v3, v10

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "EF48S"

    aput-object v5, v4, v7

    const-string v5, "SKT"

    aput-object v5, v4, v8

    const-string v5, "484950"

    aput-object v5, v4, v9

    aput-object v4, v3, v6

    const/4 v4, 0x5

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF49K"

    aput-object v6, v5, v7

    const-string v6, "KT"

    aput-object v6, v5, v8

    const-string v6, "484950"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF50L"

    aput-object v6, v5, v7

    const-string v6, "LGU"

    aput-object v6, v5, v8

    const-string v6, "484950"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF51S"

    aput-object v6, v5, v7

    const-string v6, "SKT"

    aput-object v6, v5, v8

    const-string v6, "51"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF51K"

    aput-object v6, v5, v7

    const-string v6, "KT"

    aput-object v6, v5, v8

    const-string v6, "51"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF51L"

    aput-object v6, v5, v7

    const-string v6, "LGU"

    aput-object v6, v5, v8

    const-string v6, "51"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0xa

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF52S"

    aput-object v6, v5, v7

    const-string v6, "SKT"

    aput-object v6, v5, v8

    const-string v6, "52"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0xb

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF52K"

    aput-object v6, v5, v7

    const-string v6, "KT"

    aput-object v6, v5, v8

    const-string v6, "52"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0xc

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF52L"

    aput-object v6, v5, v7

    const-string v6, "LGU"

    aput-object v6, v5, v8

    const-string v6, "52"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0xd

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF56S"

    aput-object v6, v5, v7

    const-string v6, "SKT"

    aput-object v6, v5, v8

    const-string v6, "565758"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0xe

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF57K"

    aput-object v6, v5, v7

    const-string v6, "KT"

    aput-object v6, v5, v8

    const-string v6, "565758"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0xf

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF58L"

    aput-object v6, v5, v7

    const-string v6, "LGU"

    aput-object v6, v5, v8

    const-string v6, "565758"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x10

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF59S"

    aput-object v6, v5, v7

    const-string v6, "SKT"

    aput-object v6, v5, v8

    const-string v6, "59"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x11

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF59K"

    aput-object v6, v5, v7

    const-string v6, "KT"

    aput-object v6, v5, v8

    const-string v6, "59"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x12

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF59L"

    aput-object v6, v5, v7

    const-string v6, "LGU"

    aput-object v6, v5, v8

    const-string v6, "59"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x13

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF60S"

    aput-object v6, v5, v7

    const-string v6, "SKT"

    aput-object v6, v5, v8

    const-string v6, "606162"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x14

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF61K"

    aput-object v6, v5, v7

    const-string v6, "KT"

    aput-object v6, v5, v8

    const-string v6, "606162"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x15

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF62L"

    aput-object v6, v5, v7

    const-string v6, "LGU"

    aput-object v6, v5, v8

    const-string v6, "606162"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x16

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF55S"

    aput-object v6, v5, v7

    const-string v6, "SKT"

    aput-object v6, v5, v8

    const-string v6, "55"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x17

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF55K"

    aput-object v6, v5, v7

    const-string v6, "KT"

    aput-object v6, v5, v8

    const-string v6, "55"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x18

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF55L"

    aput-object v6, v5, v7

    const-string v6, "LGU"

    aput-object v6, v5, v8

    const-string v6, "55"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x19

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF63S"

    aput-object v6, v5, v7

    const-string v6, "SKT"

    aput-object v6, v5, v8

    const-string v6, "63"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF63K"

    aput-object v6, v5, v7

    const-string v6, "KT"

    aput-object v6, v5, v8

    const-string v6, "63"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "EF63L"

    aput-object v6, v5, v7

    const-string v6, "LGU"

    aput-object v6, v5, v8

    const-string v6, "63"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    sput-object v3, Lcom/pantech/provider/skycontacts/DeviceInfo;->DEVICES:[[Ljava/lang/String;

    .line 121
    const-string v3, "ro.build.product"

    const-string v4, "EF63S"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "modelProperty":Ljava/lang/String;
    sget-object v3, Lcom/pantech/provider/skycontacts/DeviceInfo;->DEVICES:[[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 123
    sget-object v3, Lcom/pantech/provider/skycontacts/DeviceInfo;->DEVICES:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v7

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    sget-object v3, Lcom/pantech/provider/skycontacts/DeviceInfo;->DEVICES:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v7

    sput-object v3, Lcom/pantech/provider/skycontacts/DeviceInfo;->mModel:Ljava/lang/String;

    .line 125
    sget-object v3, Lcom/pantech/provider/skycontacts/DeviceInfo;->DEVICES:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v8

    sput-object v3, Lcom/pantech/provider/skycontacts/DeviceInfo;->mOperator:Ljava/lang/String;

    .line 126
    sget-object v3, Lcom/pantech/provider/skycontacts/DeviceInfo;->DEVICES:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v9

    sput-object v3, Lcom/pantech/provider/skycontacts/DeviceInfo;->mGroup:Ljava/lang/String;

    .line 131
    :cond_0
    const-string v3, "ro.build.version.release"

    const-string v4, "Kitkat44"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "versionProperty":Ljava/lang/String;
    const-string v3, "4.4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Kitkat44"

    :goto_1
    sput-object v3, Lcom/pantech/provider/skycontacts/DeviceInfo;->mVersion:Ljava/lang/String;

    .line 137
    return-void

    .line 122
    .end local v2    # "versionProperty":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 132
    .restart local v2    # "versionProperty":Ljava/lang/String;
    :cond_2
    const-string v3, "4.3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Jellybean43"

    goto :goto_1

    :cond_3
    const-string v3, "4.2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Jellybean42"

    goto :goto_1

    :cond_4
    const-string v3, "4.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Jellybean41"

    goto :goto_1

    :cond_5
    const-string v3, "IceCream40"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalsBoth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/pantech/provider/skycontacts/DeviceInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/pantech/provider/skycontacts/DeviceInfo;->mModel:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static equalsGroup(Ljava/lang/String;)Z
    .locals 1
    .param p0, "group"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/pantech/provider/skycontacts/DeviceInfo;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsGroupOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/pantech/provider/skycontacts/DeviceInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/pantech/provider/skycontacts/DeviceInfo;->mGroup:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static equalsModel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "model"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/pantech/provider/skycontacts/DeviceInfo;->mModel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsOperator(Ljava/lang/String;)Z
    .locals 1
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/pantech/provider/skycontacts/DeviceInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsOrNextGroup(Ljava/lang/String;)Z
    .locals 1
    .param p0, "baseGroup"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-static {p0}, Lcom/pantech/provider/skycontacts/DeviceInfo;->isPreviousGroup(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equalsVersion(Ljava/lang/String;)Z
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/pantech/provider/skycontacts/DeviceInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPreviousGroup(Ljava/lang/String;)Z
    .locals 7
    .param p0, "baseGroup"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 199
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v3

    .line 203
    :cond_1
    const/4 v1, -0x1

    .line 204
    .local v1, "currentGroupIndex":I
    const/4 v0, -0x1

    .line 205
    .local v0, "baseGroupIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v4, Lcom/pantech/provider/skycontacts/DeviceInfo;->SEQUENTIAL_GROUPS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 206
    sget-object v4, Lcom/pantech/provider/skycontacts/DeviceInfo;->mGroup:Ljava/lang/String;

    sget-object v5, Lcom/pantech/provider/skycontacts/DeviceInfo;->SEQUENTIAL_GROUPS:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 207
    move v1, v2

    .line 212
    :cond_2
    :goto_2
    if-eq v1, v6, :cond_5

    if-eq v0, v6, :cond_5

    .line 217
    :cond_3
    if-ge v1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 208
    :cond_4
    sget-object v4, Lcom/pantech/provider/skycontacts/DeviceInfo;->SEQUENTIAL_GROUPS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 209
    move v0, v2

    goto :goto_2

    .line 205
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static printDiviceInfo()V
    .locals 3

    .prologue
    .line 229
    const-string v0, "DeviceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODEL-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pantech/provider/skycontacts/DeviceInfo;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", OPERATOR-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pantech/provider/skycontacts/DeviceInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", VERSION-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pantech/provider/skycontacts/DeviceInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method
