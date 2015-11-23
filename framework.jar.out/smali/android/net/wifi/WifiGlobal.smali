.class public Landroid/net/wifi/WifiGlobal;
.super Ljava/lang/Object;
.source "WifiGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiGlobal$1;,
        Landroid/net/wifi/WifiGlobal$PantechWifiFeature;,
        Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;,
        Landroid/net/wifi/WifiGlobal$PantechWifiModel;,
        Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    }
.end annotation


# static fields
.field public static final ALL_LOG_LEVEL:I = 0x0

.field public static DialogThemeContext:Landroid/content/Context; = null

.field public static final PACKAGE_STRING:Ljava/lang/String; = "android.net.wifi"

.field public static final PANTECH_WIFIINFO_FEATURE_INDEX:I = 0x3

.field public static final PANTECH_WIFIINFO_MODEL_INDEX:I = 0x1

.field public static final PANTECH_WIFIINFO_UXTHEME_INDEX:I = 0x2

.field public static final PANTECH_WIFIINFO_VENDOR_INDEX:I = 0x0

.field public static PantechWifiFeatureTable:[C = null

.field public static final TAG:Ljava/lang/String; = "WifiGlobal"

.field public static ThemeContext:Landroid/content/Context; = null

.field public static final WFLAG_OFF:C = '0'

.field public static final WFLAG_ON:C = '1'

.field public static final WFLAG_TBD:C = 'X'

.field public static WifiFeatureTable:[C

.field public static WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

.field public static WifiUxtheme:Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;

.field public static WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

.field public static WifiVendorStr:Ljava/lang/String;

.field public static bInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    sget-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_NONE:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sput-object v0, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/wifi/WifiGlobal;->bInitialized:Z

    .line 84
    sput-object v1, Landroid/net/wifi/WifiGlobal;->ThemeContext:Landroid/content/Context;

    .line 85
    sput-object v1, Landroid/net/wifi/WifiGlobal;->DialogThemeContext:Landroid/content/Context;

    .line 123
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/wifi/WifiGlobal;->PantechWifiFeatureTable:[C

    return-void

    :array_0
    .array-data 2
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x58s
        0x58s
        0x31s
        0x58s
        0x31s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static CheckVendorFile(Landroid/content/Context;)Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 547
    sget-object v4, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_NONE:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .line 549
    .local v4, "vendor_file":Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "vendor_skt.do"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 550
    .local v3, "sFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "vendor_kt.do"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 551
    .local v0, "kFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "vendor_lgu.do"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 552
    .local v1, "lFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "vendor_others.do"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 554
    .local v2, "oFile":Ljava/io/File;
    const-string v5, "WifiGlobal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Check vendor at : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    if-eqz v3, :cond_0

    .line 560
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 562
    sget-object v4, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .line 578
    :cond_0
    :goto_0
    return-object v4

    .line 564
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 566
    sget-object v4, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    goto :goto_0

    .line 568
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 570
    sget-object v4, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    goto :goto_0

    .line 572
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 574
    sget-object v4, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_OTHERS:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    goto :goto_0
.end method

.method public static checkFeature(Landroid/net/wifi/WifiGlobal$PantechWifiFeature;)Z
    .locals 3
    .param p0, "f"    # Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->ordinal()I

    move-result v0

    .line 275
    .local v0, "index":I
    sget-object v1, Landroid/net/wifi/WifiGlobal;->PantechWifiFeatureTable:[C

    aget-char v1, v1, v0

    const/16 v2, 0x31

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 277
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkVendor(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;)Z
    .locals 1
    .param p0, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .prologue
    .line 203
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAllowLogLevel()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public static getGuaranteedVendor(Landroid/content/Context;)Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-static {p0}, Landroid/net/wifi/WifiGlobal;->guaranteeInitVal(Landroid/content/Context;)V

    .line 186
    const-string v0, "WifiGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getGuaranteedVendor :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v0, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    return-object v0
.end method

.method public static getModel()Landroid/net/wifi/WifiGlobal$PantechWifiModel;
    .locals 1

    .prologue
    .line 260
    sget-object v0, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    return-object v0
.end method

.method public static getMyModelInfo(C)C
    .locals 2
    .param p0, "m"    # C

    .prologue
    .line 266
    const/16 v0, 0x30

    .line 267
    .local v0, "modelInfoBase":C
    add-int/lit8 v1, p0, -0x30

    int-to-char v1, v1

    return v1
.end method

.method public static getMyThemeContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    sget-object v0, Landroid/net/wifi/WifiGlobal;->ThemeContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 236
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getModel()Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiGlobal;->getTheme(Landroid/net/wifi/WifiGlobal$PantechWifiModel;)Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiGlobal;->WifiUxtheme:Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;

    .line 237
    sget-object v0, Landroid/net/wifi/WifiGlobal;->WifiUxtheme:Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;->UXTHEME_BLACK:Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;

    if-ne v0, v1, :cond_1

    .line 239
    sput-object p0, Landroid/net/wifi/WifiGlobal;->ThemeContext:Landroid/content/Context;

    .line 241
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030305

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal;->ThemeContext:Landroid/content/Context;

    .line 255
    :cond_0
    :goto_0
    sget-object v0, Landroid/net/wifi/WifiGlobal;->ThemeContext:Landroid/content/Context;

    return-object v0

    .line 243
    :cond_1
    sget-object v0, Landroid/net/wifi/WifiGlobal;->WifiUxtheme:Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;->UXTHEME_WHITE:Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;

    if-ne v0, v1, :cond_2

    .line 245
    sput-object p0, Landroid/net/wifi/WifiGlobal;->ThemeContext:Landroid/content/Context;

    .line 247
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030304

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal;->ThemeContext:Landroid/content/Context;

    goto :goto_0

    .line 251
    :cond_2
    sput-object p0, Landroid/net/wifi/WifiGlobal;->ThemeContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getTheme(Landroid/net/wifi/WifiGlobal$PantechWifiModel;)Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;
    .locals 2
    .param p0, "model"    # Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    .prologue
    .line 213
    sget-object v0, Landroid/net/wifi/WifiGlobal$1;->$SwitchMap$android$net$wifi$WifiGlobal$PantechWifiModel:[I

    invoke-virtual {p0}, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 228
    sget-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;->UXTHEME_DEFAULT:Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;

    :goto_0
    return-object v0

    .line 221
    :pswitch_0
    sget-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;->UXTHEME_WHITE:Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;

    goto :goto_0

    .line 225
    :pswitch_1
    sget-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;->UXTHEME_BLACK:Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    return-object v0
.end method

.method public static getVendorStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 283
    const-string v2, ""

    sput-object v2, Landroid/net/wifi/WifiGlobal;->WifiVendorStr:Ljava/lang/String;

    .line 285
    if-eqz p0, :cond_1

    .line 287
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 288
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "vnd":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 291
    const-string v2, "45005"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    :cond_0
    const-string v2, "SKT"

    sput-object v2, Landroid/net/wifi/WifiGlobal;->WifiVendorStr:Ljava/lang/String;

    .line 306
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v1    # "vnd":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v2, "WifiGlobal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getVendorStr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/WifiGlobal;->WifiVendorStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object v2, Landroid/net/wifi/WifiGlobal;->WifiVendorStr:Ljava/lang/String;

    return-object v2

    .line 295
    .restart local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v1    # "vnd":Ljava/lang/String;
    :cond_2
    const-string v2, "45002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "45004"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "45008"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 297
    :cond_3
    const-string v2, "KT"

    sput-object v2, Landroid/net/wifi/WifiGlobal;->WifiVendorStr:Ljava/lang/String;

    goto :goto_0

    .line 299
    :cond_4
    const-string v2, "45006"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    const-string v2, "LGU"

    sput-object v2, Landroid/net/wifi/WifiGlobal;->WifiVendorStr:Ljava/lang/String;

    goto :goto_0
.end method

.method public static guaranteeInitVal(Landroid/content/Context;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 170
    sget-boolean v3, Landroid/net/wifi/WifiGlobal;->bInitialized:Z

    if-nez v3, :cond_1

    .line 172
    const-string v1, ""

    .line 173
    .local v1, "str":Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiNative;

    const-string/jumbo v3, "wtemp"

    invoke-direct {v0, v3}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "mNative":Landroid/net/wifi/WifiNative;
    invoke-static {p0}, Landroid/net/wifi/WifiGlobal;->getVendorStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "vnd":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiNative;->getPantechWifiInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    :cond_0
    invoke-static {v1, p0}, Landroid/net/wifi/WifiGlobal;->setWifiInfo(Ljava/lang/String;Landroid/content/Context;)V

    .line 180
    .end local v0    # "mNative":Landroid/net/wifi/WifiNative;
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "vnd":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static printWifiInfo()V
    .locals 3

    .prologue
    .line 584
    const-string v0, "WifiGlobal"

    const-string v1, "----------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v0, "WifiGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WifiVendor  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v0, "WifiGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WifiModel   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-string v0, "WifiGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WifiUxtheme : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiGlobal;->WifiUxtheme:Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void
.end method

.method public static setFeatureFromJni(Landroid/net/wifi/WifiGlobal$PantechWifiFeature;C)V
    .locals 4
    .param p0, "f"    # Landroid/net/wifi/WifiGlobal$PantechWifiFeature;
    .param p1, "v"    # C

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->ordinal()I

    move-result v0

    .line 313
    .local v0, "index":I
    const-string v1, "WifiGlobal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setFeatureFromJni  PantechWifiFeature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v1, "WifiGlobal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setFeatureFromJni  Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v1, Landroid/net/wifi/WifiGlobal;->PantechWifiFeatureTable:[C

    aput-char p1, v1, v0

    .line 316
    return-void
.end method

.method public static setWifiInfo(Ljava/lang/String;Landroid/content/Context;)V
    .locals 41
    .param p0, "wi"    # Ljava/lang/String;
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 321
    const/16 v34, 0x0

    .line 327
    .local v34, "i":I
    const/16 v30, 0x1

    .line 328
    .local v30, "VENDOR_SKT":C
    const/16 v27, 0x2

    .line 329
    .local v27, "VENDOR_KT":C
    const/16 v28, 0x4

    .line 331
    .local v28, "VENDOR_LGU":C
    const/16 v29, 0x8

    .line 333
    .local v29, "VENDOR_OTHERS":C
    const/4 v7, 0x1

    .line 334
    .local v7, "MODELINFO_EF51S":C
    const/4 v5, 0x2

    .line 335
    .local v5, "MODELINFO_EF51K":C
    const/4 v6, 0x3

    .line 337
    .local v6, "MODELINFO_EF51L":C
    const/4 v10, 0x4

    .line 338
    .local v10, "MODELINFO_EF52S":C
    const/4 v8, 0x5

    .line 339
    .local v8, "MODELINFO_EF52K":C
    const/4 v9, 0x6

    .line 341
    .local v9, "MODELINFO_EF52L":C
    const/4 v11, 0x7

    .line 342
    .local v11, "MODELINFO_EF56S":C
    const/16 v12, 0x8

    .line 343
    .local v12, "MODELINFO_EF57K":C
    const/16 v13, 0x9

    .line 344
    .local v13, "MODELINFO_EF58L":C
    const/16 v16, 0xa

    .line 345
    .local v16, "MODELINFO_EF59S":C
    const/16 v14, 0xb

    .line 346
    .local v14, "MODELINFO_EF59K":C
    const/16 v15, 0xc

    .line 348
    .local v15, "MODELINFO_EF59L":C
    const/16 v17, 0xd

    .line 349
    .local v17, "MODELINFO_EF60S":C
    const/16 v18, 0xe

    .line 350
    .local v18, "MODELINFO_EF61K":C
    const/16 v19, 0xf

    .line 351
    .local v19, "MODELINFO_EF62L":C
    const/16 v22, 0x10

    .line 352
    .local v22, "MODELINFO_EF63S":C
    const/16 v20, 0x11

    .line 353
    .local v20, "MODELINFO_EF63K":C
    const/16 v21, 0x12

    .line 354
    .local v21, "MODELINFO_EF63L":C
    const/16 v23, 0x13

    .line 355
    .local v23, "MODELINFO_EF65S":C
    const/16 v2, 0x14

    .line 356
    .local v2, "MODELINFO_EF48S":C
    const/16 v3, 0x15

    .line 357
    .local v3, "MODELINFO_EF49K":C
    const/16 v4, 0x16

    .line 360
    .local v4, "MODELINFO_EF50L":C
    const/16 v25, 0x31

    .line 361
    .local v25, "UXTHEME_DEFAULT":C
    const/16 v24, 0x32

    .line 362
    .local v24, "UXTHEME_BLACK":C
    const/16 v26, 0x33

    .line 364
    .local v26, "UXTHEME_WHITE":C
    if-nez p0, :cond_0

    .line 365
    const-string v38, "WifiGlobal"

    const-string v39, " setWifiInfo is NULL!!"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v38

    add-int/lit8 v31, v38, -0x3

    .line 371
    .local v31, "_WifiFeatureTableLen":I
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v38

    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiGlobal;->getMyModelInfo(C)C

    move-result v33

    .line 372
    .local v33, "_WifiVendor":C
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v38

    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiGlobal;->getMyModelInfo(C)C

    move-result v32

    .line 375
    .local v32, "_WifiModel":C
    packed-switch v33, :pswitch_data_0

    .line 394
    :goto_1
    :pswitch_0
    packed-switch v32, :pswitch_data_1

    .line 502
    :goto_2
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_REQ_AUTO_RETRY_AFTER_CONNECTION_FAIL:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const/16 v39, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v39

    invoke-static/range {v38 .. v39}, Landroid/net/wifi/WifiGlobal;->setFeatureFromJni(Landroid/net/wifi/WifiGlobal$PantechWifiFeature;C)V

    .line 503
    add-int/lit8 v34, v34, 0x1

    .line 504
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_BUGFIX_WPS_CONNECTION:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const/16 v39, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v39

    invoke-static/range {v38 .. v39}, Landroid/net/wifi/WifiGlobal;->setFeatureFromJni(Landroid/net/wifi/WifiGlobal$PantechWifiFeature;C)V

    .line 505
    add-int/lit8 v34, v34, 0x1

    .line 506
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_BUGFIX_SETBAND_POLICY:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const/16 v39, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v39

    invoke-static/range {v38 .. v39}, Landroid/net/wifi/WifiGlobal;->setFeatureFromJni(Landroid/net/wifi/WifiGlobal$PantechWifiFeature;C)V

    .line 507
    add-int/lit8 v34, v34, 0x1

    .line 508
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ADDON_DHCP_REQUEST_BY_CACHED_IP:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const/16 v39, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v39

    invoke-static/range {v38 .. v39}, Landroid/net/wifi/WifiGlobal;->setFeatureFromJni(Landroid/net/wifi/WifiGlobal$PantechWifiFeature;C)V

    .line 510
    if-eqz p1, :cond_2

    .line 512
    const-string/jumbo v38, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/telephony/TelephonyManager;

    .line 513
    .local v35, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v37

    .line 514
    .local v37, "vnd":Ljava/lang/String;
    const-string v38, "WifiGlobal"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " getSimOperator  : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    if-eqz v37, :cond_2

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v38

    if-lez v38, :cond_2

    .line 517
    const-string v38, "45005"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_1

    const-string v38, "45011"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_4

    .line 519
    :cond_1
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .line 532
    .end local v35    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v37    # "vnd":Ljava/lang/String;
    :cond_2
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/net/wifi/WifiGlobal;->CheckVendorFile(Landroid/content/Context;)Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v36

    .line 533
    .local v36, "vendorFile":Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_NONE:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_3

    .line 535
    sput-object v36, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .line 536
    const-string v38, "WifiGlobal"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " CheckVendorFile () : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    sget-object v40, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_3
    const/16 v38, 0x1

    sput-boolean v38, Landroid/net/wifi/WifiGlobal;->bInitialized:Z

    .line 540
    const-string v38, "WifiGlobal"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " _WifiModel : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->printWifiInfo()V

    goto/16 :goto_0

    .line 378
    .end local v36    # "vendorFile":Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    :pswitch_1
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    goto/16 :goto_1

    .line 382
    :pswitch_2
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    goto/16 :goto_1

    .line 386
    :pswitch_3
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    goto/16 :goto_1

    .line 390
    :pswitch_4
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_OTHERS:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    goto/16 :goto_1

    .line 398
    :pswitch_5
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF51S:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 402
    :pswitch_6
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF51K:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 406
    :pswitch_7
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF51L:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 410
    :pswitch_8
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF52S:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 414
    :pswitch_9
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF52K:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 418
    :pswitch_a
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF52L:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 422
    :pswitch_b
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF56S:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 426
    :pswitch_c
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF57K:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 430
    :pswitch_d
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF58L:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 433
    :pswitch_e
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF59S:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 437
    :pswitch_f
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF59K:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 441
    :pswitch_10
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF59L:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 446
    :pswitch_11
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF60S:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 450
    :pswitch_12
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF61K:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 454
    :pswitch_13
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF62L:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 458
    :pswitch_14
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF63S:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 462
    :pswitch_15
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF63K:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 466
    :pswitch_16
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF63L:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 469
    :pswitch_17
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF65S:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 473
    :pswitch_18
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF48S:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 476
    :pswitch_19
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF49K:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 479
    :pswitch_1a
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF50L:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 521
    .restart local v35    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v37    # "vnd":Ljava/lang/String;
    :cond_4
    const-string v38, "45002"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_5

    const-string v38, "45004"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_5

    const-string v38, "45008"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_6

    .line 523
    :cond_5
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    goto/16 :goto_3

    .line 525
    :cond_6
    const-string v38, "45006"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 527
    sget-object v38, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sput-object v38, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    goto/16 :goto_3

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 394
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method
