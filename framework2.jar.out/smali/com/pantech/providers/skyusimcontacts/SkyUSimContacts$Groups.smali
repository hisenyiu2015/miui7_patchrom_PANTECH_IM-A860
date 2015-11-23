.class public final Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Groups;
.super Ljava/lang/Object;
.source "SkyUSimContacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$GroupsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Groups"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/usim_groups"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/usim_groups"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 261
    const-string v0, "63"

    invoke-static {v0}, Lcom/pantech/provider/skycontacts/DeviceInfo;->equalsOrNextGroup(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usim/groups"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usim_groups"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
