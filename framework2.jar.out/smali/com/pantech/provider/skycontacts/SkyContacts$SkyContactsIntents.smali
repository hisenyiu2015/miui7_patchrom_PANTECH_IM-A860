.class public final Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsIntents;
.super Ljava/lang/Object;
.source "SkyContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/SkyContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkyContactsIntents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsIntents$Insert;,
        Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsIntents$SkyUI;
    }
.end annotation


# static fields
.field public static final ACTION_PICK_AND_SELECT_SUBITEM:Ljava/lang/String; = "com.pantech.app.contacts.action.ACTION_PICK_AND_SELECT_SUBITEM"

.field public static final ACTION_VIEW_LIVE_CONTACT:Ljava/lang/String; = "com.pantech.app.contacts.action.ACTION_VIEW_LIVE_CONTACT"

.field public static final ACTION_VIEW_SECRET_CONTACT:Ljava/lang/String; = "com.pantech.app.contacts.action.ACTION_VIEW_SECRET_CONTACT"

.field public static final CATEGORY_CONTACTS:Ljava/lang/String; = "pantech.intent.category.CONTACTS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    return-void
.end method
