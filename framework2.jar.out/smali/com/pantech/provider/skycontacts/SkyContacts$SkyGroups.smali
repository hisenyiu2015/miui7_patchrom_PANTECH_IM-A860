.class public final Lcom/pantech/provider/skycontacts/SkyContacts$SkyGroups;
.super Ljava/lang/Object;
.source "SkyContacts.java"

# interfaces
.implements Lcom/pantech/provider/skycontacts/SkyContacts$BaseColumns;
.implements Lcom/pantech/provider/skycontacts/SkyContacts$SkyGroupsColumns2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/SkyContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkyGroups"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "skygroups"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.pantech.cursor.item/skygroup"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.pantech.cursor.dir/skygroup"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 386
    const-string v0, "content://skycontacts/skygroups"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/provider/skycontacts/SkyContacts$SkyGroups;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
