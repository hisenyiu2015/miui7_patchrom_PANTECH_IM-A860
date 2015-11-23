.class public interface abstract Lcom/pantech/provider/skycontacts/SkyContacts;
.super Ljava/lang/Object;
.source "SkyContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/provider/skycontacts/SkyContacts$SkyImportantContacts;,
        Lcom/pantech/provider/skycontacts/SkyContacts$SkySearchHelper;,
        Lcom/pantech/provider/skycontacts/SkyContacts$SkySearchHelperColumns;,
        Lcom/pantech/provider/skycontacts/SkyContacts$SkyQueryParams;,
        Lcom/pantech/provider/skycontacts/SkyContacts$PhonesAndEmails;,
        Lcom/pantech/provider/skycontacts/SkyContacts$Facebook;,
        Lcom/pantech/provider/skycontacts/SkyContacts$Twitter;,
        Lcom/pantech/provider/skycontacts/SkyContacts$Me2Day;,
        Lcom/pantech/provider/skycontacts/SkyContacts$DataColumns;,
        Lcom/pantech/provider/skycontacts/SkyContacts$SkyEvent;,
        Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsIntents;,
        Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDial;,
        Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDialColumns;,
        Lcom/pantech/provider/skycontacts/SkyContacts$SkyGroupMembership;,
        Lcom/pantech/provider/skycontacts/SkyContacts$SkyGroups;,
        Lcom/pantech/provider/skycontacts/SkyContacts$SkyGroupsColumns2;,
        Lcom/pantech/provider/skycontacts/SkyContacts$SkyGroupsColumns;,
        Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsBase;,
        Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsBaseColumns;,
        Lcom/pantech/provider/skycontacts/SkyContacts$BaseColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "skycontacts"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KIND_SKY_BASE:I = 0x3e8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "content://skycontacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/provider/skycontacts/SkyContacts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addToGroup(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDefaultSpeedDial(Landroid/content/ContentResolver;J)J
.end method

.method public abstract getGroupIdForContact(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getGroupIdForRawContact(Landroid/content/ContentResolver;J)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getGroupLedColor(Landroid/content/ContentResolver;J)Ljava/lang/String;
.end method

.method public abstract getGroupMemberCount(Landroid/content/Context;J)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getGroupName(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getGroupNameFromContact(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getGroupNameFromRawContact(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getGroupRingtone(Landroid/content/ContentResolver;JZ)Landroid/net/Uri;
.end method

.method public abstract getGroupRingtoneForPerson(Landroid/content/ContentResolver;JZ)Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getGrowingImageLevel(Landroid/content/ContentResolver;J)I
.end method

.method public abstract getSpeedDialNumber(Landroid/content/ContentResolver;J)Ljava/lang/String;
.end method

.method public abstract getSpeedDialNumber(Landroid/content/ContentResolver;JZ)Ljava/lang/String;
.end method

.method public abstract isCallAllowedGroup(Landroid/content/ContentResolver;J)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isCallRejectedGroup(Landroid/content/ContentResolver;J)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loadGroupPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract openGroupPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract queryGroupMember(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract saveGroupRingtone(Landroid/content/ContentResolver;JLandroid/net/Uri;)Z
.end method

.method public abstract updateGroupMembership(Landroid/content/ContentResolver;JJ)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateGroupMembership(Landroid/content/ContentResolver;JLjava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
