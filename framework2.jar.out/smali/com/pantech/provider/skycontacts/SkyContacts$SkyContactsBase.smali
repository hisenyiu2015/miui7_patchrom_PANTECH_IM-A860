.class public final Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsBase;
.super Ljava/lang/Object;
.source "SkyContacts.java"

# interfaces
.implements Lcom/pantech/provider/skycontacts/SkyContacts$BaseColumns;
.implements Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsBaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/SkyContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkyContactsBase"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "skycontactsbase"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 278
    const-string v0, "content://skycontacts/skycontactsbase"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsBase;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
