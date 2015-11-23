.class public Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;
.super Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;
.source "SkyTelephonyInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;,
        Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_APN_PROFILE_RESTORED:I = 0xd6

.field private static final EVENT_CALLBACK_CALL_CONN_SND:I = 0xc8

.field private static final EVENT_CALLBACK_CARD_REMOVED:I = 0xcb

.field private static final EVENT_CALLBACK_END_AUTOANSWER_IND:I = 0xce

.field private static final EVENT_CALLBACK_KT_SUBS_SRV_IND:I = 0xca

.field private static final EVENT_CALLBACK_SKT_SUBS_SUCCESS:I = 0xc9

.field private static final EVENT_CALLBACK_VE_IND:I = 0xcc

.field private static final EVENT_CALLBACK_VE_STOP:I = 0xcd

.field private static final EVENT_DATA_COMMON_WRONG:I = 0xd3

.field private static final EVENT_DOMASTIC_FIRST_TIME:I = 0xd8

.field private static final EVENT_LTE_MO_DATA_BARRING_OFF:I = 0xd5

.field private static final EVENT_LTE_MO_DATA_BARRING_ON:I = 0xd4

.field private static final EVENT_NETWORK_REG_INFO_IND:I = 0xd0

.field private static final EVENT_ROAMING_FIRST_TIME:I = 0xd7

.field private static final EVENT_SET_PERSO_FEATURE_IND:I = 0xd2

.field private static final EVENT_SET_PH_OP_MODE_COMPLETE:I = 0x65

.field private static final EVENT_SRVCC_HANDOVER_COMPLETE_IND:I = 0xcf

.field private static final EVENT_UPDATE_EF_TRANSPARENT_COMPLETE:I = 0x64

.field private static final EVENT_VERIFY_PCK_COMPLETE:I = 0xd1

.field static final LOG_TAG:Ljava/lang/String; = "SkyTelephony"


# instance fields
.field private eventCbThread:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mPersofeature:I

.field private mTempPck:Ljava/lang/String;

.field private phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field reginfo:Lcom/android/internal/telephony/gsm/NwRegInfoInd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 759
    const-string v0, "cpmgrjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 761
    const-string v0, "@@@"

    const-string v1, "@@@ Loading Native Library"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->class_init_native()V

    .line 765
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;-><init>()V

    .line 85
    new-instance v1, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;-><init>(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 193
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 194
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mContext:Landroid/content/Context;

    .line 195
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->publish()V

    .line 197
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_cpmgr_init()Z

    move-result v0

    .line 198
    .local v0, "result":Z
    const-string v1, "SkyTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@ native_cpmgr_init() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v1, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;-><init>(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->eventCbThread:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;

    .line 201
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->eventCbThread:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;->start()V

    .line 204
    new-instance v1, Lcom/android/internal/telephony/gsm/NwRegInfoInd;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->reginfo:Lcom/android/internal/telephony/gsm/NwRegInfoInd;

    .line 205
    return-void
.end method

.method private NativeEventParse(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 667
    packed-switch p1, :pswitch_data_0

    .line 733
    :goto_0
    return-void

    .line 670
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 674
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 678
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 682
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 686
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 690
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xcd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 694
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xce

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 698
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xcf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 702
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 707
    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 711
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 714
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 719
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 724
    :pswitch_d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 727
    :pswitch_e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedSktSubs()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedApnProfileRestored()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedRoamingStatusChangedFirstTime(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_cpmgr_wait_for_event()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->NativeEventParse(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedKtSubs()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedCardRemoved()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedVeInd()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedVeStop()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mTempPck:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 29
    iget v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mPersofeature:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_get_nw_reg_info_ind()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedLteMoDataBarring(Z)V

    return-void
.end method

.method private static native class_init_native()V
.end method

.method private native native_autoanswer_control(ZI)V
.end method

.method private native native_cpmgr_init()Z
.end method

.method private native native_cpmgr_null()I
.end method

.method private native native_cpmgr_wait_for_event()I
.end method

.method private native native_del_acqDB()V
.end method

.method private native native_get_card_type()I
.end method

.method private native native_get_nw_reg_info_ind()[I
.end method

.method private native native_get_skt_subs_status()[Z
.end method

.method private native native_get_ve_ind_ss_code()I
.end method

.method private native native_get_ve_ind_url()Ljava/lang/String;
.end method

.method private native native_get_ve_ind_url_len()I
.end method

.method private native native_modem_db_float(I)F
.end method

.method private native native_modem_db_int(I)I
.end method

.method private native native_modem_db_ints(I)[I
.end method

.method private native native_modem_db_strArray(I)[Ljava/lang/String;
.end method

.method private native native_modem_db_string(I)Ljava/lang/String;
.end method

.method private native native_nv_factory_init()V
.end method

.method private native native_remote_nv_read_int(II)I
.end method

.method private native native_remote_nv_read_ints(II)[I
.end method

.method private native native_remote_nv_write_int(III)I
.end method

.method private native native_remote_nv_write_ints(I[II)I
.end method

.method private native native_send_kt_ota_sms_submit_msg()V
.end method

.method private native native_set_cpmgr_cs_protection_control_func(Z)V
.end method

.method private native native_set_cpmgr_cs_protection_temp_control_func(I)V
.end method

.method private native native_set_kt_subs_mode(I)V
.end method

.method private native native_set_operation_mode(I)V
.end method

.method private native native_set_preferred_time(I)V
.end method

.method private native native_set_srvcc_status_func(Z)V
.end method

.method private native native_set_vt_call_status_func(Z)V
.end method

.method private onReceivedApnProfileRestored()V
    .locals 3

    .prologue
    .line 645
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.sky.intent.action.ACTION_SKT_APN_PROFILE_RESTORED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SKT"

    const-string v2, "send ACTION_SKT_APN_PROFILE_RESTORED broadcast : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 649
    return-void
.end method

.method private onReceivedCardRemoved()V
    .locals 2

    .prologue
    .line 608
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.sky.intent.action.SKY_CARD_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 610
    return-void
.end method

.method private onReceivedKtSubs()V
    .locals 2

    .prologue
    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.sky.intent.action.KT_SUBSCRIPTION_SERVICE_IND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 569
    return-void
.end method

.method private onReceivedLteMoDataBarring(Z)V
    .locals 4
    .param p1, "onoff"    # Z

    .prologue
    .line 636
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.sky.intent.action.ACTION_SKT_LTE_MO_DATA_BARRING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "onoff"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 639
    const-string v1, "SKT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send ACTION_SKT_LTE_MO_DATA_BARRING broadcast : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 641
    return-void
.end method

.method private onReceivedRoamingStatusChangedFirstTime(Z)V
    .locals 4
    .param p1, "isRoaming"    # Z

    .prologue
    .line 653
    const-string v1, "SKT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedRoamingStatusChangedFirstTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 657
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.sky.intent.action.ACTION_SKT_ROAMING_FIRST_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 662
    return-void

    .line 659
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.sky.intent.action.ACTION_SKT_DOMASTIC_FIRST_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private onReceivedSktSubs()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 556
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.sky.intent.action.SKT_SUBSCRIPTION_SUCCESS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_get_skt_subs_status()[Z

    move-result-object v1

    .line 558
    .local v1, "skt_subs_status":[Z
    const-string v2, "is_success"

    aget-boolean v3, v1, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 559
    const-string v2, "immediate_reboot"

    aget-boolean v3, v1, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 560
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 562
    const-string v2, "SkyTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is_success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-boolean v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  immediate_reboot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-boolean v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-void
.end method

.method private onReceivedVeInd()V
    .locals 7

    .prologue
    .line 613
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.sky.intent.action.SKT_VE_INDICATION"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 614
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_get_ve_ind_ss_code()I

    move-result v1

    .line 615
    .local v1, "ve_ss_code":I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_get_ve_ind_url_len()I

    move-result v3

    .line 616
    .local v3, "ve_url_len":I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_get_ve_ind_url()Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "ve_url":Ljava/lang/String;
    const-string v4, "ve_ss_code"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 619
    const-string v4, "ve_url_len"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 620
    const-string v4, "ve_url"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 623
    const-string v4, "SkyTelephony"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ve_ss_code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ve_url_len : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v4, "SkyTelephony"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ve_url : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void
.end method

.method private onReceivedVeStop()V
    .locals 3

    .prologue
    .line 628
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.sky.intent.action.SKT_VE_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 631
    const-string v1, "SkyTelephony"

    const-string v2, "send ve_stop broadcast : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return-void
.end method

.method private publish()V
    .locals 1

    .prologue
    .line 209
    const-string v0, "iskytelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    const-string v0, "iskytelephony"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 213
    :cond_0
    return-void
.end method


# virtual methods
.method public autoanswerControl(ZI)V
    .locals 0
    .param p1, "onoff"    # Z
    .param p2, "contents"    # I

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_autoanswer_control(ZI)V

    .line 308
    return-void
.end method

.method public checkEmergencyList()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->checkEmergencyList()Z

    move-result v0

    return v0
.end method

.method public deleteAcqDb()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_del_acqDB()V

    .line 255
    return-void
.end method

.method public getGcfMode()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getGcfMode()Z

    move-result v0

    return v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalDbInfo_Float(I)F
    .locals 1
    .param p1, "db_num"    # I

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_modem_db_float(I)F

    move-result v0

    return v0
.end method

.method public getLocalDbInfo_Int(I)I
    .locals 1
    .param p1, "db_num"    # I

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_modem_db_int(I)I

    move-result v0

    return v0
.end method

.method public getLocalDbInfo_Ints(I)[I
    .locals 1
    .param p1, "db_num"    # I

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_modem_db_ints(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getLocalDbInfo_String(I)Ljava/lang/String;
    .locals 1
    .param p1, "db_num"    # I

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_modem_db_string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLteOverlay()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getLteOverlay()Z

    move-result v0

    return v0
.end method

.method public getModemDb_strArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "db_item"    # I

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_modem_db_strArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQcNvRead_int(II)I
    .locals 4
    .param p1, "nv_item"    # I
    .param p2, "nam"    # I

    .prologue
    .line 216
    const/4 v0, -0x1

    .line 217
    .local v0, "result":I
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_remote_nv_read_int(II)I

    move-result v0

    .line 218
    const-string v1, "SkyTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nv_item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  read_value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v0
.end method

.method public getQcNvRead_ints(II)[I
    .locals 1
    .param p1, "nv_item"    # I
    .param p2, "nam"    # I

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_remote_nv_read_ints(II)[I

    move-result-object v0

    .line 232
    .local v0, "result":[I
    return-object v0
.end method

.method public getSktImsiMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSktImsiMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSktIrm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSktIrm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmscAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 299
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 300
    .local v0, "getSCA":Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->start()V

    .line 301
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->readSmscAddress()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "rsp_smsc":Ljava/lang/String;
    return-object v1
.end method

.method public getUsimSubscription()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUsimSubscription()Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallMode(Z)Z
    .locals 1
    .param p1, "cardcheck"    # Z

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isEmergencyCallMode(Z)Z

    move-result v0

    return v0
.end method

.method public ktOtaSendSms()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_send_kt_ota_sms_submit_msg()V

    .line 362
    return-void
.end method

.method public loadEFTransparent(I)[B
    .locals 3
    .param p1, "fileid"    # I

    .prologue
    .line 264
    new-instance v1, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 265
    .local v1, "readEF":Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->start()V

    .line 266
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->readEFTransparent(I)[B

    move-result-object v0

    .line 268
    .local v0, "mResult":[B
    return-object v0
.end method

.method public modemNvFactoryInit()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_nv_factory_init()V

    .line 260
    return-void
.end method

.method public setKtSubsMode(I)V
    .locals 0
    .param p1, "sSubsMode"    # I

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_set_kt_subs_mode(I)V

    .line 358
    return-void
.end method

.method public setPhOperationMode(I)V
    .locals 3
    .param p1, "ph_op_mode"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPhOperationMode(ILandroid/os/Message;)V

    .line 290
    return-void
.end method

.method public setPreferredSystem(IIIII)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "domain"    # I
    .param p3, "band"    # I
    .param p4, "lte_band"    # I
    .param p5, "dulation"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPreferredSystem(IIIIILandroid/os/Message;)V

    .line 248
    return-void
.end method

.method public setQcNvWrite_int(III)I
    .locals 4
    .param p1, "nv_item"    # I
    .param p2, "value"    # I
    .param p3, "nam"    # I

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "result":I
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_remote_nv_write_int(III)I

    move-result v0

    .line 225
    const-string v1, "SkyTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nv_item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  write_value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v0
.end method

.method public setQcNvWrite_ints(I[II)I
    .locals 1
    .param p1, "nv_item"    # I
    .param p2, "value"    # [I
    .param p3, "nam"    # I

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "result":I
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_remote_nv_write_ints(I[II)I

    move-result v0

    .line 238
    return v0
.end method

.method public setSMSCfgSetGWDomain(I)V
    .locals 2
    .param p1, "gw_domain"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSMSCfgSetGWDomain(ILandroid/os/Message;)V

    .line 251
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 312
    return-void
.end method

.method public setUsimSubscription(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setUsimSubscription(Z)V

    .line 323
    return-void
.end method

.method public set_cpmgr_cs_protection_control_func(Z)V
    .locals 3
    .param p1, "onoff"    # Z

    .prologue
    .line 573
    const-string v0, "SKT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_cpmgr_cs_protection_control_func : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_set_cpmgr_cs_protection_control_func(Z)V

    .line 575
    return-void
.end method

.method public set_cpmgr_cs_protection_temp_control_func(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 578
    const-string v0, "SKT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_cpmgr_cs_protection_temp_control_func : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_set_cpmgr_cs_protection_temp_control_func(I)V

    .line 580
    return-void
.end method

.method public set_cpmgr_gnss_operation_mode(I)V
    .locals 3
    .param p1, "operation_mode"    # I

    .prologue
    .line 598
    const-string v0, "SKT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_cpmgr_gnss_operation_mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_set_operation_mode(I)V

    .line 600
    return-void
.end method

.method public set_cpmgr_gnss_preferred_time(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 602
    const-string v0, "SKT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_cpmgr_gnss_preferred_time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_set_preferred_time(I)V

    .line 605
    return-void
.end method

.method public set_cpmgr_srvcc_status_func(Z)V
    .locals 3
    .param p1, "onoff"    # Z

    .prologue
    .line 592
    const-string v0, "SKT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_cpmgr_srvcc_status_func : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_set_srvcc_status_func(Z)V

    .line 594
    return-void
.end method

.method public set_cpmgr_vt_call_status_func(Z)V
    .locals 3
    .param p1, "onoff"    # Z

    .prologue
    .line 585
    const-string v0, "SKT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_cpmgr_vt_call_status_func : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_set_vt_call_status_func(Z)V

    .line 587
    return-void
.end method

.method public updateEFTransparent(I[B)V
    .locals 3
    .param p1, "fileid"    # I
    .param p2, "data"    # [B

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 279
    :cond_0
    return-void
.end method

.method public verifyPck(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "dck"    # Ljava/lang/String;
    .param p2, "perso_feature"    # I

    .prologue
    .line 331
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 332
    .local v0, "actPersoInd":Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->start()V

    .line 333
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->activatePersoInd(Ljava/lang/String;ZI)Z

    move-result v1

    .line 335
    .local v1, "rsp_rslt":Z
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mTempPck:Ljava/lang/String;

    .line 336
    iput p2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mPersofeature:I

    .line 337
    if-eqz v1, :cond_0

    .line 338
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xd1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 341
    :cond_0
    return v1
.end method
