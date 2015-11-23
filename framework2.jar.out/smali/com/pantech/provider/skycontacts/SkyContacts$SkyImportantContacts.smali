.class public interface abstract Lcom/pantech/provider/skycontacts/SkyContacts$SkyImportantContacts;
.super Ljava/lang/Object;
.source "SkyContacts.java"

# interfaces
.implements Lcom/pantech/provider/skycontacts/SkyContacts$BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/SkyContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SkyImportantContacts"
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTACT_PRESENCE:Ljava/lang/String; = "contact_presence"

.field public static final CONTACT_STATUS:Ljava/lang/String; = "contact_status"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/important-contact"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ID:Ljava/lang/String; = "data_id"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final IMPORTANTS_COUNT:Ljava/lang/String; = "importants_count"

.field public static final LOOKUP_KEY:Ljava/lang/String; = "lookup"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final PHONE_NUMBER_LABEL:Ljava/lang/String; = "data3"

.field public static final PHONE_NUMBER_TYPE:Ljava/lang/String; = "data2"

.field public static final PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final PHOTO_URI:Ljava/lang/String; = "photo_uri"

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final SPEED_DIAL:Ljava/lang/String; = "speed_dial"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1065
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "important_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/provider/skycontacts/SkyContacts$SkyImportantContacts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
