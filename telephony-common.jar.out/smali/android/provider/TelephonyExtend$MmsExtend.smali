.class public final Landroid/provider/TelephonyExtend$MmsExtend;
.super Ljava/lang/Object;
.source "TelephonyExtend.java"

# interfaces
.implements Landroid/provider/Telephony$BaseMmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/TelephonyExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsExtend"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/TelephonyExtend$MmsExtend$ReadDelivery;,
        Landroid/provider/TelephonyExtend$MmsExtend$Failed;,
        Landroid/provider/TelephonyExtend$MmsExtend$Temp;,
        Landroid/provider/TelephonyExtend$MmsExtend$PermOutbox;,
        Landroid/provider/TelephonyExtend$MmsExtend$PermInbox;,
        Landroid/provider/TelephonyExtend$MmsExtend$Spam;,
        Landroid/provider/TelephonyExtend$MmsExtend$Reserve;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final X_AUTH:Ljava/lang/String; = "x_auth"

.field public static final X_CANONICAL_ID:Ljava/lang/String; = "x_canonical_id"

.field public static final X_EMOTION:Ljava/lang/String; = "x_emotion"

.field public static final X_EXTRA_BOXTYPE:Ljava/lang/String; = "x_extra_boxtype"

.field public static final X_MSG_TYPE:Ljava/lang/String; = "x_msg_type"

.field public static final X_ORI_ADDRESS:Ljava/lang/String; = "x_ori_address"

.field public static final X_RESERVE_TIME:Ljava/lang/String; = "x_reserve_time"

.field public static final X_SENDER_ADDRESS:Ljava/lang/String; = "x_sender_address"

.field public static final X_SUB_MSG_TYPE:Ljava/lang/String; = "x_sub_msg_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method
