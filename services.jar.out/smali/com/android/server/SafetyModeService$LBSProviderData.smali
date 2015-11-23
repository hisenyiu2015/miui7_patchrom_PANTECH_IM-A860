.class public Lcom/android/server/SafetyModeService$LBSProviderData;
.super Ljava/lang/Object;
.source "SafetyModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SafetyModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LBSProviderData"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY_ACCURATE:Ljava/lang/String; = "accurate"

.field public static final KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final KEY_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final KEY_PROVIDER:Ljava/lang/String; = "provider"

.field public static final KEY_SPEED:Ljava/lang/String; = "speed"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 884
    const-string v0, "content://com.pantech.app.safetymode/location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/SafetyModeService$LBSProviderData;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
