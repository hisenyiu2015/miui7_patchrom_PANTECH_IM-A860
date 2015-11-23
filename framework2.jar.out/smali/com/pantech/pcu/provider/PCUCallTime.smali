.class public Lcom/pantech/pcu/provider/PCUCallTime;
.super Ljava/lang/Object;
.source "PCUCallTime.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "pcucalltime"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_LAST_TIME:Ljava/lang/String; = "last_time"

.field public static final KEY_TOTAL_LIFE_COUNT:Ljava/lang/String; = "total_life_count"

.field public static final KEY_TOTAL_LIFE_TIME:Ljava/lang/String; = "total_life_time"

.field public static final KEY_VOICE_MO_COUNT:Ljava/lang/String; = "voice_mo_count"

.field public static final KEY_VOICE_MO_TIME:Ljava/lang/String; = "voice_mo_time"

.field public static final KEY_VOICE_MT_COUNT:Ljava/lang/String; = "voice_mt_count"

.field public static final KEY_VOICE_MT_TIME:Ljava/lang/String; = "voice_mt_time"

.field public static final KEY_VOIP_MO_COUNT:Ljava/lang/String; = "voip_mo_count"

.field public static final KEY_VOIP_MO_TIME:Ljava/lang/String; = "voip_mo_time"

.field public static final KEY_VOIP_MT_COUNT:Ljava/lang/String; = "voip_mt_count"

.field public static final KEY_VOIP_MT_TIME:Ljava/lang/String; = "voip_mt_time"

.field public static final KEY_VOLTE_MO_COUNT:Ljava/lang/String; = "volte_mo_count"

.field public static final KEY_VOLTE_MO_TIME:Ljava/lang/String; = "volte_mo_time"

.field public static final KEY_VOLTE_MT_COUNT:Ljava/lang/String; = "volte_mt_count"

.field public static final KEY_VOLTE_MT_TIME:Ljava/lang/String; = "volte_mt_time"

.field public static final KEY_VT_MO_COUNT:Ljava/lang/String; = "vt_mo_count"

.field public static final KEY_VT_MO_TIME:Ljava/lang/String; = "vt_mo_time"

.field public static final KEY_VT_MT_COUNT:Ljava/lang/String; = "vt_mt_count"

.field public static final KEY_VT_MT_TIME:Ljava/lang/String; = "vt_mt_time"

.field public static final LAST_TIME_COLUMN:I = 0x1

.field public static final TOTAL_LIFE_COUNT_COLUMN:I = 0x13

.field public static final TOTAL_LIFE_TIME_COLUMN:I = 0x12

.field public static final VOICE_MO_COUNT_COLUMN:I = 0x3

.field public static final VOICE_MO_TIME_COLUMN:I = 0x2

.field public static final VOICE_MT_COUNT_COLUMN:I = 0x5

.field public static final VOICE_MT_TIME_COLUMN:I = 0x4

.field public static final VOIP_MO_COUNT_COLUMN:I = 0xf

.field public static final VOIP_MO_TIME_COLUMN:I = 0xe

.field public static final VOIP_MT_COUNT_COLUMN:I = 0x11

.field public static final VOIP_MT_TIME_COLUMN:I = 0x10

.field public static final VOLTE_MO_COUNT_COLUMN:I = 0x7

.field public static final VOLTE_MO_TIME_COLUMN:I = 0x6

.field public static final VOLTE_MT_COUNT_COLUMN:I = 0x9

.field public static final VOLTE_MT_TIME_COLUMN:I = 0x8

.field public static final VT_MO_COUNT_COLUMN:I = 0xb

.field public static final VT_MO_TIME_COLUMN:I = 0xa

.field public static final VT_MT_COUNT_COLUMN:I = 0xd

.field public static final VT_MT_TIME_COLUMN:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "content://pcucalltime/pcucalltime"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/pcu/provider/PCUCallTime;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
