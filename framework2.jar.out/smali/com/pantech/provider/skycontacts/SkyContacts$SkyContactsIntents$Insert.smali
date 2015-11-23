.class public final Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsIntents$Insert;
.super Ljava/lang/Object;
.source "SkyContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsIntents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Insert"
.end annotation


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final GROUP_MEMBERSHIP:Ljava/lang/String; = "group_membership"

.field public static final ME2DAY:Ljava/lang/String; = "me2DAY"

.field public static final PHOTO:Ljava/lang/String; = "photo"

.field public static final TWITTER:Ljava/lang/String; = "twitter"

.field public static final WEBSITE:Ljava/lang/String; = "website"

.field public static final WEBSITE_TYPE:Ljava/lang/String; = "website_type"


# instance fields
.field final synthetic this$0:Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsIntents;


# direct methods
.method public constructor <init>(Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsIntents;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsIntents$Insert;->this$0:Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsIntents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
