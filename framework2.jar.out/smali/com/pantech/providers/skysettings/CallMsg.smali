.class public Lcom/pantech/providers/skysettings/CallMsg;
.super Ljava/lang/Object;
.source "CallMsg.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "callmsg"

.field public static final CNAPMSG_CONTENT_URI:Landroid/net/Uri;

.field public static final KEY_ENGMSG:Ljava/lang/String; = "_engmsg"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_KORMSG:Ljava/lang/String; = "_kormsg"

.field public static final OUTGOINGMSG_CONTENT_URI:Landroid/net/Uri;

.field public static final RECEIVINGMSG_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "content://callmsg/receivingmsg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skysettings/CallMsg;->RECEIVINGMSG_CONTENT_URI:Landroid/net/Uri;

    .line 12
    const-string v0, "content://callmsg/outgoingmsg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skysettings/CallMsg;->OUTGOINGMSG_CONTENT_URI:Landroid/net/Uri;

    .line 13
    const-string v0, "content://callmsg/cnapmsg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skysettings/CallMsg;->CNAPMSG_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
