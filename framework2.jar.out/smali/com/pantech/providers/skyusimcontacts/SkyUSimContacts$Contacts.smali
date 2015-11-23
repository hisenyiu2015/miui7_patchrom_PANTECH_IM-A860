.class public final Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Contacts;
.super Ljava/lang/Object;
.source "SkyUSimContacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$ContactsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contacts"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/usim_contacts"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/usim_contacts"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usim_contacts/filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 239
    const-string v0, "63"

    invoke-static {v0}, Lcom/pantech/provider/skycontacts/DeviceInfo;->equalsOrNextGroup(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usim/contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usim_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Contacts;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
