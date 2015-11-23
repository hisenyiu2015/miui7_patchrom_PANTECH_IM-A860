.class public final Lcom/pantech/provider/skycontacts/SkyContacts$Me2Day;
.super Ljava/lang/Object;
.source "SkyContacts.java"

# interfaces
.implements Lcom/pantech/provider/skycontacts/SkyContacts$BaseColumns;
.implements Lcom/pantech/provider/skycontacts/SkyContacts$DataColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/SkyContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Me2Day"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/me2day"

.field public static final USER_ID:Ljava/lang/String; = "data1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
