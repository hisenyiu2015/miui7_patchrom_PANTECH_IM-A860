.class public final Lcom/pantech/provider/skycontacts/SkyContacts$SkyQueryParams;
.super Ljava/lang/Object;
.source "SkyContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/SkyContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkyQueryParams"
.end annotation


# static fields
.field public static final EXCLUDE_ACCOUNT:Ljava/lang/String; = "com.pantech.app.contacts.action.EXCLUDE_ACCOUNT"

.field public static final EXCLUDE_KEYPAD_MAPPING_RESULT:Ljava/lang/String; = "com.pantech.app.contacts.action.EXCLUDE_KEYPAD_MAPPING_RESULT"

.field public static final INCLUDE_EMPTY_ITEM:Ljava/lang/String; = "com.pantech.app.contacts.action.INCLUDE_EMPTY_ITEM"

.field public static final INCLUDE_PHONE_LOOKUP:Ljava/lang/String; = "com.pantech.app.contacts.action.INCLUDE_PHONE_LOOKUP"

.field public static final KOREAN_SORT:Ljava/lang/String; = "com.pantech.app.contacts.action.KOREAN_FIRST_ORDER"

.field public static final NORMAL_AND_SECRET:Ljava/lang/String; = "2"

.field public static final ONLY_SECRET:Ljava/lang/String; = "1"

.field public static final SECRET_QUERY_MODE:Ljava/lang/String; = "secret_account"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
