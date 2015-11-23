.class public Landroid/net/wifi/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNSECIFIED_KT:Ljava/lang/String;

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public bssLoadElement:Ljava/lang/String;

.field public capabilities:Ljava/lang/String;

.field public codeType:Ljava/lang/String;

.field public distanceCm:I

.field public distanceSdCm:I

.field public frequency:I

.field public isWpsConfigured:Z

.field public isXiaomiRouter:Z

.field public level:I

.field public ssidHex:Ljava/lang/String;

.field public timestamp:J

.field public vendorSpecificContents:Ljava/lang/String;

.field public vendorSpecificOUI:Ljava/lang/String;

.field public wifiSsid:Landroid/net/wifi/WifiSsid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/ScanResult;->UNSECIFIED_KT:Ljava/lang/String;

    .line 294
    new-instance v0, Landroid/net/wifi/ScanResult$1;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/ScanResult;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->level:I

    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceCm:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->codeType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->codeType:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->codeType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->ssidHex:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->vendorSpecificOUI:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->vendorSpecificOUI:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->vendorSpecificContents:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->vendorSpecificContents:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->bssLoadElement:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->bssLoadElement:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/net/wifi/ScanResult;->isWpsConfigured:Z

    iput-boolean v0, p0, Landroid/net/wifi/ScanResult;->isWpsConfigured:Z

    iget-boolean v0, p1, Landroid/net/wifi/ScanResult;->isXiaomiRouter:Z

    iput-boolean v0, p0, Landroid/net/wifi/ScanResult;->isXiaomiRouter:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 2
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J

    .prologue
    const/4 v1, -0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 96
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    iput v1, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    iput v1, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/ScanResult;->isWpsConfigured:Z

    iput-boolean v1, p0, Landroid/net/wifi/ScanResult;->isXiaomiRouter:Z

    return-void

    :cond_0
    const-string v0, "<unknown ssid>"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJZZ)V
    .locals 2
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "isWpsConfigured"    # Z
    .param p9, "isXiaomiRouter"    # Z

    .prologue
    invoke-direct/range {p0 .. p7}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V

    iput-boolean p8, p0, Landroid/net/wifi/ScanResult;->isWpsConfigured:Z

    iput-boolean p9, p0, Landroid/net/wifi/ScanResult;->isXiaomiRouter:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJII)V
    .locals 1
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 202
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    iput p8, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    iput p9, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/ScanResult;->isWpsConfigured:Z

    iput-boolean v0, p0, Landroid/net/wifi/ScanResult;->isXiaomiRouter:Z

    return-void

    :cond_0
    const-string v0, "<unknown ssid>"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I
    .param p10, "codeType"    # Ljava/lang/String;
    .param p11, "ssidHex"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 134
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 137
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 138
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 139
    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 140
    iput p8, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 141
    iput p9, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 143
    iput-object p10, p0, Landroid/net/wifi/ScanResult;->codeType:Ljava/lang/String;

    .line 144
    iput-object p11, p0, Landroid/net/wifi/ScanResult;->ssidHex:Ljava/lang/String;

    .line 147
    sget-object v0, Landroid/net/wifi/ScanResult;->UNSECIFIED_KT:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->vendorSpecificOUI:Ljava/lang/String;

    .line 148
    sget-object v0, Landroid/net/wifi/ScanResult;->UNSECIFIED_KT:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->vendorSpecificContents:Ljava/lang/String;

    .line 149
    sget-object v0, Landroid/net/wifi/ScanResult;->UNSECIFIED_KT:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->bssLoadElement:Ljava/lang/String;

    .line 151
    return-void

    .line 134
    :cond_0
    const-string v0, "<unknown ssid>"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I
    .param p10, "codeType"    # Ljava/lang/String;
    .param p11, "ssidHex"    # Ljava/lang/String;
    .param p12, "vendorSpecificOUI"    # Ljava/lang/String;
    .param p13, "vendorSpecificContents"    # Ljava/lang/String;
    .param p14, "bssLoadElement"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 113
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 114
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 115
    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 116
    iput p8, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 117
    iput p9, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 119
    iput-object p10, p0, Landroid/net/wifi/ScanResult;->codeType:Ljava/lang/String;

    .line 120
    iput-object p11, p0, Landroid/net/wifi/ScanResult;->ssidHex:Ljava/lang/String;

    .line 123
    iput-object p12, p0, Landroid/net/wifi/ScanResult;->vendorSpecificOUI:Ljava/lang/String;

    .line 124
    iput-object p13, p0, Landroid/net/wifi/ScanResult;->vendorSpecificContents:Ljava/lang/String;

    .line 125
    iput-object p14, p0, Landroid/net/wifi/ScanResult;->bssLoadElement:Ljava/lang/String;

    .line 128
    return-void

    .line 110
    :cond_0
    const-string v0, "<unknown ssid>"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "codeType"    # Ljava/lang/String;
    .param p9, "ssidHex"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 178
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 180
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 181
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 182
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 183
    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 184
    iput v1, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 185
    iput v1, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 187
    iput-object p8, p0, Landroid/net/wifi/ScanResult;->codeType:Ljava/lang/String;

    .line 188
    iput-object p9, p0, Landroid/net/wifi/ScanResult;->ssidHex:Ljava/lang/String;

    .line 191
    sget-object v0, Landroid/net/wifi/ScanResult;->UNSECIFIED_KT:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->vendorSpecificOUI:Ljava/lang/String;

    .line 192
    sget-object v0, Landroid/net/wifi/ScanResult;->UNSECIFIED_KT:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->vendorSpecificContents:Ljava/lang/String;

    .line 193
    sget-object v0, Landroid/net/wifi/ScanResult;->UNSECIFIED_KT:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->bssLoadElement:Ljava/lang/String;

    .line 195
    return-void

    .line 178
    :cond_0
    const-string v0, "<unknown ssid>"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "codeType"    # Ljava/lang/String;
    .param p9, "ssidHex"    # Ljava/lang/String;
    .param p10, "vendorSpecificOUI"    # Ljava/lang/String;
    .param p11, "vendorSpecificContents"    # Ljava/lang/String;
    .param p12, "bssLoadElement"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 156
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 159
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 160
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 161
    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 162
    iput v1, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 163
    iput v1, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 165
    iput-object p8, p0, Landroid/net/wifi/ScanResult;->codeType:Ljava/lang/String;

    .line 166
    iput-object p9, p0, Landroid/net/wifi/ScanResult;->ssidHex:Ljava/lang/String;

    .line 169
    iput-object p10, p0, Landroid/net/wifi/ScanResult;->vendorSpecificOUI:Ljava/lang/String;

    .line 170
    iput-object p11, p0, Landroid/net/wifi/ScanResult;->vendorSpecificContents:Ljava/lang/String;

    .line 171
    iput-object p12, p0, Landroid/net/wifi/ScanResult;->bssLoadElement:Ljava/lang/String;

    .line 173
    return-void

    .line 156
    :cond_0
    const-string v0, "<unknown ssid>"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJIIZZ)V
    .locals 1
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I
    .param p10, "isWpsConfigured"    # Z
    .param p11, "isXiaomiRouter"    # Z

    .prologue
    invoke-direct/range {p0 .. p9}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJII)V

    iput-boolean p10, p0, Landroid/net/wifi/ScanResult;->isWpsConfigured:Z

    iput-boolean p11, p0, Landroid/net/wifi/ScanResult;->isXiaomiRouter:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 238
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 239
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 241
    .local v0, "none":Ljava/lang/String;
    const-string v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v2, :cond_0

    const-string v2, "<unknown ssid>"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", capabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-nez v3, :cond_2

    .end local v0    # "none":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 254
    const-string v2, ", distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    if-eq v2, v5, :cond_3

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "(cm)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    const-string v2, ", distanceSd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    if-eq v2, v5, :cond_4

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "(cm)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", isWpsConfigured :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/ScanResult;->isWpsConfigured:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", isXiaomiRouter :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/ScanResult;->isXiaomiRouter:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 241
    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    goto :goto_2

    .line 254
    .end local v0    # "none":Ljava/lang/String;
    :cond_3
    const-string v2, "?"

    goto :goto_3

    .line 256
    :cond_4
    const-string v2, "?"

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->codeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->ssidHex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->vendorSpecificOUI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->vendorSpecificContents:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->bssLoadElement:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/wifi/ScanResult;->isWpsConfigured:Z

    if-eqz v0, :cond_miui_0

    const/4 v0, 0x1

    :goto_miui_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/ScanResult;->isXiaomiRouter:Z

    if-eqz v0, :cond_miui_1
    
    const/4 v0, 0x1

    :goto_miui_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
    :cond_miui_0
    const/4 v0, 0x0

    goto :goto_miui_0

    :cond_miui_1
    const/4 v0, 0x0

    goto :goto_miui_1
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I
    .param p10, "codeType"    # Ljava/lang/String;
    .param p11, "ssidHex"    # Ljava/lang/String;
    .param p12, "vendorSpecificOUI"    # Ljava/lang/String;
    .param p13, "vendorSpecificContents"    # Ljava/lang/String;
    .param p14, "bssLoadElement"    # Ljava/lang/String;
    .param p15, "isWpsConfigured"    # Z
    .param p16, "isXiaomiRouter"    # Z

    .prologue
    invoke-direct/range {p0 .. p14}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p15

    iput-boolean v1, v0, Landroid/net/wifi/ScanResult;->isWpsConfigured:Z

    move-object/from16 v0, p0

    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/net/wifi/ScanResult;->isXiaomiRouter:Z

    return-void
.end method
