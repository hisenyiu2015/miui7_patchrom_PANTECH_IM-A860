.class public Lcom/pantech/providers/skysettings/SKYInternationalNumber;
.super Ljava/lang/Object;
.source "SKYInternationalNumber.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "skyinternationalnumber"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_DATA_NUM:I = 0x1a

.field public static final KEY_ENGNAME:Ljava/lang/String; = "_engname"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_ISDEFAULT:Ljava/lang/String; = "_default"

.field public static final KEY_ISO:Ljava/lang/String; = "_ios"

.field public static final KEY_MCC:Ljava/lang/String; = "_mcc"

.field public static final KEY_NAME:Ljava/lang/String; = "_name"

.field public static final KEY_NUMBER:Ljava/lang/String; = "_number"

.field public static final MAX_RECORD_NUM:I = 0x29

.field public static final RECORD_TYPE_DEFAULT:I = 0x1

.field public static final RECORD_TYPE_USER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "content://skyinternationalnumber/skyinternationalnumber"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skysettings/SKYInternationalNumber;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
