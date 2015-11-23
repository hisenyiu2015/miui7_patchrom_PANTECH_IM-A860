.class public final Landroid/provider/TelephonyExtend$LGUPublicBroadcastMessage$LGUPublicBroadcastMessageTable;
.super Ljava/lang/Object;
.source "TelephonyExtend.java"

# interfaces
.implements Landroid/provider/TelephonyExtend$LGUPublicBroadcastMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/TelephonyExtend$LGUPublicBroadcastMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LGUPublicBroadcastMessageTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "lgu_public_broadcast_message"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 925
    const-string v0, "content://sms/lgu_public_broadcast_message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$LGUPublicBroadcastMessage$LGUPublicBroadcastMessageTable;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
