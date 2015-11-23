.class public Lcom/pantech/providers/skysettings/SKYAutoDialSettings;
.super Ljava/lang/Object;
.source "SKYAutoDialSettings.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "skyautodialsettings"

.field public static final AUTODIAL_DISABLE:I = 0x0

.field public static final AUTODIAL_ENABLE:I = 0x1

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY_BEFORE_ISROAMING:Ljava/lang/String; = "_is_roaming"

.field public static final KEY_CURRENT_SID:Ljava/lang/String; = "_SID"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_INTERNATIONAL_NUMBER:Ljava/lang/String; = "_international_number"

.field public static final KEY_INTERNATIONAL_NUMBER_USER:Ljava/lang/String; = "_international_number_user"

.field public static final KEY_ISENABLE:Ljava/lang/String; = "_isenable"

.field public static final KEY_NATIONAL_CODE:Ljava/lang/String; = "_national_code"

.field public static final KEY_URI:Ljava/lang/String; = "_uri"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "content://skyautodialsettings/skyautodialsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skysettings/SKYAutoDialSettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
