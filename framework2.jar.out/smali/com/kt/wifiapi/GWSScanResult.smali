.class public Lcom/kt/wifiapi/GWSScanResult;
.super Ljava/lang/Object;
.source "GWSScanResult.java"

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

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field public BSSID:Ljava/lang/String;

.field public BSSLoadElement:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public capabilities:Ljava/lang/String;

.field public codeType:Ljava/lang/String;

.field public distanceCm:I

.field public distanceSdCm:I

.field public frequency:I

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
    .line 250
    new-instance v0, Lcom/kt/wifiapi/GWSScanResult$1;

    invoke-direct {v0}, Lcom/kt/wifiapi/GWSScanResult$1;-><init>()V

    sput-object v0, Lcom/kt/wifiapi/GWSScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 172
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSID:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    .line 175
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/kt/wifiapi/GWSScanResult;->level:I

    .line 176
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    .line 177
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v0, p0, Lcom/kt/wifiapi/GWSScanResult;->timestamp:J

    .line 178
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceCm:I

    iput v0, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceCm:I

    .line 179
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    iput v0, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceSdCm:I

    .line 181
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->codeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->codeType:Ljava/lang/String;

    .line 182
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->codeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->ssidHex:Ljava/lang/String;

    .line 185
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->vendorSpecificOUI:Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificOUI:Ljava/lang/String;

    .line 186
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->vendorSpecificContents:Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificContents:Ljava/lang/String;

    .line 187
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->bssLoadElement:Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSLoadElement:Ljava/lang/String;

    .line 190
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
    iput-object p1, p0, Lcom/kt/wifiapi/GWSScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 96
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSID:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    .line 99
    iput p4, p0, Lcom/kt/wifiapi/GWSScanResult;->level:I

    .line 100
    iput p5, p0, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    .line 101
    iput-wide p6, p0, Lcom/kt/wifiapi/GWSScanResult;->timestamp:J

    .line 102
    iput v1, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceCm:I

    .line 103
    iput v1, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceSdCm:I

    .line 104
    return-void

    .line 96
    :cond_0
    const-string v0, "<unknown ssid>"

    goto :goto_0
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
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/kt/wifiapi/GWSScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSID:Ljava/lang/String;

    .line 160
    iput-object p3, p0, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    .line 161
    iput p4, p0, Lcom/kt/wifiapi/GWSScanResult;->level:I

    .line 162
    iput p5, p0, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    .line 163
    iput-wide p6, p0, Lcom/kt/wifiapi/GWSScanResult;->timestamp:J

    .line 164
    iput p8, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceCm:I

    .line 165
    iput p9, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceSdCm:I

    .line 166
    return-void

    .line 158
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
    iput-object p1, p0, Lcom/kt/wifiapi/GWSScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSID:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    .line 113
    iput p4, p0, Lcom/kt/wifiapi/GWSScanResult;->level:I

    .line 114
    iput p5, p0, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    .line 115
    iput-wide p6, p0, Lcom/kt/wifiapi/GWSScanResult;->timestamp:J

    .line 116
    iput p8, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceCm:I

    .line 117
    iput p9, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceSdCm:I

    .line 119
    iput-object p10, p0, Lcom/kt/wifiapi/GWSScanResult;->codeType:Ljava/lang/String;

    .line 120
    iput-object p11, p0, Lcom/kt/wifiapi/GWSScanResult;->ssidHex:Ljava/lang/String;

    .line 123
    iput-object p12, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificOUI:Ljava/lang/String;

    .line 124
    iput-object p13, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificContents:Ljava/lang/String;

    .line 125
    iput-object p14, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSLoadElement:Ljava/lang/String;

    .line 128
    return-void

    .line 110
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

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/kt/wifiapi/GWSScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 133
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSID:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    .line 136
    iput p4, p0, Lcom/kt/wifiapi/GWSScanResult;->level:I

    .line 137
    iput p5, p0, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    .line 138
    iput-wide p6, p0, Lcom/kt/wifiapi/GWSScanResult;->timestamp:J

    .line 139
    iput v1, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceCm:I

    .line 140
    iput v1, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceSdCm:I

    .line 142
    iput-object p8, p0, Lcom/kt/wifiapi/GWSScanResult;->codeType:Ljava/lang/String;

    .line 143
    iput-object p9, p0, Lcom/kt/wifiapi/GWSScanResult;->ssidHex:Ljava/lang/String;

    .line 146
    iput-object p10, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificOUI:Ljava/lang/String;

    .line 147
    iput-object p11, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificContents:Ljava/lang/String;

    .line 148
    iput-object p12, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSLoadElement:Ljava/lang/String;

    .line 151
    return-void

    .line 133
    :cond_0
    const-string v0, "<unknown ssid>"

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 194
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 197
    .local v0, "none":Ljava/lang/String;
    const-string v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v2, :cond_0

    const-string v2, "<unknown ssid>"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSID:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", capabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    if-nez v3, :cond_2

    .end local v0    # "none":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/kt/wifiapi/GWSScanResult;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/kt/wifiapi/GWSScanResult;->timestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 210
    const-string v2, ", distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v2, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceCm:I

    if-eq v2, v5, :cond_3

    iget v2, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceCm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "(cm)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    const-string v2, ", distanceSd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v2, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceSdCm:I

    if-eq v2, v5, :cond_4

    iget v2, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceSdCm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "(cm)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 197
    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSID:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    goto :goto_2

    .line 210
    .end local v0    # "none":Ljava/lang/String;
    :cond_3
    const-string v2, "?"

    goto :goto_3

    .line 212
    :cond_4
    const-string v2, "?"

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget v0, p0, Lcom/kt/wifiapi/GWSScanResult;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v0, p0, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-wide v0, p0, Lcom/kt/wifiapi/GWSScanResult;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 236
    iget v0, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Lcom/kt/wifiapi/GWSScanResult;->distanceSdCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->codeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->ssidHex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificOUI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificContents:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSLoadElement:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
