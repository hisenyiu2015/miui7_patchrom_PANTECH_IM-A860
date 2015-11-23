.class public Lcom/pantech/providers/skysettings/SKYNationalCode;
.super Ljava/lang/Object;
.source "SKYNationalCode.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "skynationalcode"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY_CODE:Ljava/lang/String; = "_number"

.field public static final KEY_CONSONANT:Ljava/lang/String; = "_consonant"

.field public static final KEY_ENGNAME:Ljava/lang/String; = "_engname"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_KORNAME:Ljava/lang/String; = "_korname"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "content://skynationalcode/skynationalcode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skysettings/SKYNationalCode;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
