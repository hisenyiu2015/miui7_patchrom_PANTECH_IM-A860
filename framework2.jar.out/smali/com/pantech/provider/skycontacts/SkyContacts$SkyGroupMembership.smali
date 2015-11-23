.class public final Lcom/pantech/provider/skycontacts/SkyContacts$SkyGroupMembership;
.super Ljava/lang/Object;
.source "SkyContacts.java"

# interfaces
.implements Lcom/pantech/provider/skycontacts/SkyContacts$BaseColumns;
.implements Lcom/pantech/provider/skycontacts/SkyContacts$SkyGroupsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/SkyContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkyGroupMembership"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "skygroupmembership"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/skycontactsgroupmembership"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/skycontactsgroupmembership"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "group_id ASC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GROUP_ID:Ljava/lang/String; = "skygroup_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "rawcontact_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 428
    const-string v0, "content://skycontacts/skygroupmembership"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/provider/skycontacts/SkyContacts$SkyGroupMembership;->CONTENT_URI:Landroid/net/Uri;

    .line 435
    const-string v0, "content://skycontacts/skygroupmembershipraw"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/provider/skycontacts/SkyContacts$SkyGroupMembership;->RAW_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
