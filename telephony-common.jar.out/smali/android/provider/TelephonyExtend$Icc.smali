.class public interface abstract Landroid/provider/TelephonyExtend$Icc;
.super Ljava/lang/Object;
.source "TelephonyExtend.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/TelephonyExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Icc"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final CLASS:Ljava/lang/String; = "message_class"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final INDEX:Ljava/lang/String; = "index_on_icc"

.field public static final IS_STATUS_REPORT:Ljava/lang/String; = "is_status_report"

.field public static final LOCKED:Ljava/lang/String; = "locked"

.field public static final ORIG_ADDRESS:Ljava/lang/String; = "orig_address"

.field public static final SERVICE_CENTER:Ljava/lang/String; = "service_center_address"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TRANSPORT_TYPE:Ljava/lang/String; = "transport_type"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1041
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$Icc;->CONTENT_URI:Landroid/net/Uri;

    .line 1043
    const-string v0, "content://sms/countoficc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$Icc;->COUNT_URI:Landroid/net/Uri;

    return-void
.end method
