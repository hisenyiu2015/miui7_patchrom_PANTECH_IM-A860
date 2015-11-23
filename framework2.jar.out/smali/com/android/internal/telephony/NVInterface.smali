.class public Lcom/android/internal/telephony/NVInterface;
.super Ljava/lang/Object;
.source "NVInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NVInterface$NoScanFreqList;
    }
.end annotation


# static fields
.field public static final EFS_AMR_WB_ONOFF:I = 0x1e

.field public static final EFS_FAST_RETURN_TO_LTE_ONOFF:I = 0x1d

.field public static final EFS_LTE_BAND_PREF:I = 0x1b

.field public static final EFS_LTE_BAND_SCAN_ORDER:I = 0x1c

.field public static final NV_ACQ_ORDER_PREF_I:I = 0x10

.field public static final NV_BAND_PREF_16_31_I:I = 0xf

.field public static final NV_BAND_PREF_I:I = 0xe

.field public static final NV_DATA_INCOMING_CSD_CALL_IS_INTERNAL_I:I = 0x2

.field public static final NV_FORCE_TEST_SIM_I:I = 0x15

.field public static final NV_GCF_TEST_I:I = 0x13

.field public static final NV_GPRS_ANITE_GCF_I:I = 0x5

.field public static final NV_HSDPA_CAT_I:I = 0xc

.field public static final NV_NET_SEL_MODE_PREF_I:I = 0x11

.field public static final NV_NO_SCAN_FREQ_LIST_I:I = 0x16

.field public static final NV_PREF_MODE_I:I = 0x4

.field public static final NV_QVP_APP_DEFAULT_CAPABILITY_TYPE_I:I = 0x3

.field public static final NV_RRC_CIPHERING_ENABLED_I:I = 0x8

.field public static final NV_RRC_FAKE_SECURITY_ENABLED_I:I = 0x9

.field public static final NV_RRC_INTEGRITY_ENABLED_I:I = 0x7

.field public static final NV_SEL_UARFCN_SCAN_TYPE_I:I = 0x14

.field public static final NV_SERVICE_DOMAIN_PREF_I:I = 0x0

.field public static final NV_SKT_SUBSC_MODE_I:I = 0x12

.field public static final NV_SMS_GW_BEARER_PREF_I:I = 0x6

.field public static final NV_SMS_MO_DOMESTIC_I:I = 0x19

.field public static final NV_SMS_MO_OVERSEAS_I:I = 0x1a

.field public static final NV_UICC_UE_LOCK_I:I = 0x17

.field public static final NV_WCDMA_DL_FREQ_ENABLED_I:I = 0xb

.field public static final NV_WCDMA_DL_FREQ_I:I = 0xa

.field public static final NV_WCDMA_HSUPA_CATEGORY_I:I = 0xd

.field public static final NV_WCDMA_RRC_VERSION_I:I = 0x1

.field public static final NV_WOTA_TIME_I:I = 0x18


# instance fields
.field public acquisition_order_preference:I

.field public amr_wb_onoff:I

.field public band_class_preference:I

.field public band_class_preference_16_31:I

.field public data_incoming_csd_call_is_internal:I

.field public fast_return_to_lte_onoff:I

.field public force_test_sim:I

.field public gcf_test_mode:I

.field public gprs_anite_gcf:I

.field public hsdpa_category:I

.field public hsupa_category:I

.field public lte_band:I

.field public lte_scan_order:[I

.field public mFreqList:Lcom/android/internal/telephony/NVInterface$NoScanFreqList;

.field public mode_preference:I

.field public nv_item:Ljava/lang/String;

.field public nv_status:I

.field public qvp_app_default_cap_type:I

.field public rrc_ciphering_enabled:I

.field public rrc_fake_security_enabled:I

.field public rrc_integrity_enabled:I

.field public sel_uarfcn_scan_type:I

.field public service_domain_pref:I

.field public skt_subscription_mode:I

.field public sms_gw_bearer_pref:I

.field public wcdma_dl_freq:I

.field public wcdma_dl_freq_enabled:I

.field public wcdma_rrc_version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/NVInterface;->lte_scan_order:[I

    .line 87
    new-instance v0, Lcom/android/internal/telephony/NVInterface$NoScanFreqList;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/NVInterface$NoScanFreqList;-><init>(Lcom/android/internal/telephony/NVInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NVInterface;->mFreqList:Lcom/android/internal/telephony/NVInterface$NoScanFreqList;

    .line 88
    return-void
.end method
