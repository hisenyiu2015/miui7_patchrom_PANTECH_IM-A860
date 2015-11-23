.class public final Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDial;
.super Ljava/lang/Object;
.source "SkyContacts.java"

# interfaces
.implements Lcom/pantech/provider/skycontacts/SkyContacts$BaseColumns;
.implements Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDialColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/SkyContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedDial"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "speeddial"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.pantech.cursor.item/speeddial"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.pantech.cursor.dir/speeddial"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "value ASC"

.field public static final RAW_CONTACT_URI:Landroid/net/Uri;

.field public static final VALUE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 518
    const-string v0, "content://skycontacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    .line 524
    const-string v0, "content://skycontacts/speeddialvalue"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDial;->VALUE_URI:Landroid/net/Uri;

    .line 530
    const-string v0, "content://skycontacts/speeddialrawcontact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDial;->RAW_CONTACT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
