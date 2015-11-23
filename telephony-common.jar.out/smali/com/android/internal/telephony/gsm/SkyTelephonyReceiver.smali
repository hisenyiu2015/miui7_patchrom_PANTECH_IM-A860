.class public Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;
.super Ljava/lang/Object;
.source "SkyTelephonyReceiver.java"


# static fields
.field static final DBG:Z = true

.field private static final DIALOG_TIMEOUT:I = 0x3e8

.field private static final EVENT_FAKE_SECURITY_CHECK:I = 0x6d

.field private static final EVENT_FA_CHANGE_COMPLETE:I = 0x6b

.field private static final EVENT_GEN_TONE_COMPLETE:I = 0x69

.field private static final EVENT_RADIO_PWR_RESET_IN_PROGRESS:I = 0x64

.field private static final EVENT_SKY_CARD_REMOVED:I = 0x65

.field private static final EVENT_USIM_GET_ME_PERSO_IND:I = 0x68

.field static final LOG_TAG:Ljava/lang/String; = "SkyTelephonyReceiver"

.field private static final MSG_ID_FA_CHANGE:I = 0x6c

.field private static final MSG_ID_TIMEOUT_CARD_REMOVED:I = 0x66

.field private static final MSG_ID_TIMEOUT_NOTIFY_DIALOG:I = 0x67

.field private static final MSG_ID_TIMEOUT_NW_MODE_NOTIFY:I = 0x6a


# instance fields
.field private alert:Landroid/app/AlertDialog;

.field currNwMode:I

.field private faChangeDialog:Landroid/app/ProgressDialog;

.field fake_roam:I

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field network_ind:I

.field private notifyMsg:Landroid/app/AlertDialog;

.field ntpdebugmode:I

.field private nwDlg:Landroid/app/AlertDialog;

.field private nwSettingDlg:Landroid/app/AlertDialog;

.field nw_mode:I

.field private progress:Landroid/app/ProgressDialog;

.field res:Landroid/content/res/Resources;

.field private rmvCardDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->alert:Landroid/app/AlertDialog;

    .line 79
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nwDlg:Landroid/app/AlertDialog;

    .line 80
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nwSettingDlg:Landroid/app/AlertDialog;

    .line 81
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->rmvCardDialog:Landroid/app/ProgressDialog;

    .line 82
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->progress:Landroid/app/ProgressDialog;

    .line 85
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->faChangeDialog:Landroid/app/ProgressDialog;

    .line 90
    iput v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->fake_roam:I

    .line 91
    iput v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->ntpdebugmode:I

    .line 92
    iput v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->network_ind:I

    .line 94
    iput v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nw_mode:I

    .line 95
    iput v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->currNwMode:I

    .line 118
    new-instance v1, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;-><init>(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 576
    new-instance v1, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;-><init>(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.FAKE_ROAMING_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.sky.intent.action.SKY_CARD_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.sky.intent.action.SKY_CS_CALL_REJ_CAUSE_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.sky.intent.action.SKY_PS_CALL_REJ_CAUSE_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.sky.intent.action.SET_DATA_NETWORK_MODE_HIDDEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.sky.intent.action.NETWORK_MANUAL_LIST_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.sky.intent.action.SET_DBG_OVERLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.FA_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "android.intent.action.MODEM_NV_INIT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.sky.intent.action.DS_APN_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    .line 116
    return-void
.end method

.method private SetDataNeworkMode()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 292
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "mccmnc":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 295
    :cond_0
    const-string v2, "00000"

    .line 299
    :cond_1
    :try_start_0
    const-string v4, "450"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    .line 343
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v4

    .line 306
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nw_mode:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nw_mode:I

    iput v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->currNwMode:I

    .line 316
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    .local v0, "alertDlg":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v5, 0x1040689

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 318
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v5, 0x1070036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nw_mode:I

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    new-instance v6, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$3;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$3;-><init>(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    invoke-virtual {v0, v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 324
    const v4, 0x104000a

    new-instance v5, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$4;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$4;-><init>(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 334
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 337
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 338
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 341
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 309
    .end local v0    # "alertDlg":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :catch_1
    move-exception v3

    .line 310
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v4, 0x9

    iput v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nw_mode:I

    goto :goto_1

    .line 318
    .end local v3    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0    # "alertDlg":Landroid/app/AlertDialog$Builder;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private SetDbgOverlayMode(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x4

    .line 195
    const-string v5, "gsm.radio.dbgoverlay"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 197
    .local v1, "dbgOverlay":I
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.hiddenmenu"

    const-string v7, "com.android.hiddenmenu.dbgOverlay"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 198
    .local v4, "service":Landroid/content/Intent;
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 199
    const-string v3, " Stop DBG Overlay"

    .line 200
    .local v3, "notiMsg":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 201
    const-string v5, "gsm.radio.dbgoverlay"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    .local v0, "alertDlg":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 211
    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 212
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 213
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 214
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 217
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 219
    return-void

    .line 203
    .end local v0    # "alertDlg":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "notiMsg":Ljava/lang/String;
    :cond_0
    const-string v3, "Start DBG Overlay"

    .line 204
    .restart local v3    # "notiMsg":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 205
    const-string v5, "gsm.radio.dbgoverlay"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private SetFaChange(I)V
    .locals 8
    .param p1, "fa"    # I

    .prologue
    .line 228
    if-lez p1, :cond_1

    .line 229
    const/16 v1, 0x8

    .line 230
    .local v1, "sel_uarfcn_scan_type":I
    const/4 v3, 0x1

    .line 231
    .local v3, "wcdma_dl_freq_enabled":I
    move v2, p1

    .line 234
    .local v2, "wcdma_dl_freq":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v4

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->setQcNvWrite_int(III)I

    .line 235
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v4

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->setQcNvWrite_int(III)I

    .line 236
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v4

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->setQcNvWrite_int(III)I

    .line 237
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x6b

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v1    # "sel_uarfcn_scan_type":I
    .end local v2    # "wcdma_dl_freq":I
    .end local v3    # "wcdma_dl_freq_enabled":I
    :cond_0
    :goto_0
    return-void

    .line 238
    .restart local v1    # "sel_uarfcn_scan_type":I
    .restart local v2    # "wcdma_dl_freq":I
    .restart local v3    # "wcdma_dl_freq_enabled":I
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SkyTelephonyReceiver"

    const-string v5, "ChannelSet : access Error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "sel_uarfcn_scan_type":I
    .end local v2    # "wcdma_dl_freq":I
    .end local v3    # "wcdma_dl_freq_enabled":I
    :cond_1
    if-nez p1, :cond_0

    .line 243
    const/4 v1, 0x0

    .line 244
    .restart local v1    # "sel_uarfcn_scan_type":I
    const/4 v3, 0x0

    .line 245
    .restart local v3    # "wcdma_dl_freq_enabled":I
    move v2, p1

    .line 248
    .restart local v2    # "wcdma_dl_freq":I
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v4

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->setQcNvWrite_int(III)I

    .line 249
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v4

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->setQcNvWrite_int(III)I

    .line 250
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v4

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->setQcNvWrite_int(III)I

    .line 251
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x6b

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 252
    :catch_1
    move-exception v0

    .line 253
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "SkyTelephonyReceiver"

    const-string v5, "ChannelSet : access Error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private SetFakeRoamingMode()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 346
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "fake_roaming_mode_setting"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 349
    .local v3, "set_roaming":I
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "OFF"

    aput-object v4, v1, v6

    const/4 v4, 0x1

    const-string v5, "ON"

    aput-object v5, v1, v4

    .line 351
    .local v1, "array_item":[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    .local v0, "alertDlg":Landroid/app/AlertDialog$Builder;
    const-string v4, "Fake Roaming\n( MCC : 310 )"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 353
    new-instance v4, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$5;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$5;-><init>(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 358
    const v4, 0x104000a

    new-instance v5, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$6;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$6;-><init>(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 366
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 368
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 369
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 370
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 373
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 375
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->SetFakeRoamingMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->rmvCardDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->rmvCardDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->reboot()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->warnningToneRelease()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->notifyMsg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->notifyMsg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nwDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nwDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->faChangeDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->faChangeDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->checkFakeModeNV()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->rejCauseString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->showDialog(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->warnningToneGen()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->SetDataNeworkMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->needNetworkSetting()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->SetFaChange(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->SetDbgOverlayMode(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->progress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private checkFakeModeNV()V
    .locals 20

    .prologue
    .line 526
    const/4 v3, 0x0

    .line 527
    .local v3, "checkValue":Z
    const/16 v16, 0x1

    .line 528
    .local v16, "rrc_integrity_enabled":I
    const/4 v14, 0x1

    .line 529
    .local v14, "rrc_ciphering_enabled":I
    const/4 v15, 0x0

    .line 531
    .local v15, "rrc_fake_security_enabled":I
    const-string v9, ""

    .line 532
    .local v9, "fm_title":Ljava/lang/String;
    const-string v8, ""

    .line 533
    .local v8, "fm_notimsg":Ljava/lang/String;
    const-string v10, ""

    .line 534
    .local v10, "fm_titleSummary":Ljava/lang/String;
    const/4 v13, 0x0

    .line 535
    .local v13, "notificationFakeMode":Landroid/app/Notification;
    const/16 v7, 0x3e9

    .line 536
    .local v7, "fm_notificationId":I
    const-string v12, "com.android.hiddenmenu.DebugScreenBroadcastReceiver"

    .line 538
    .local v12, "noti_tag":Ljava/lang/String;
    const-string v17, "gsm.rrcsecurity.fake"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/4 v6, 0x1

    .line 540
    .local v6, "fake_enabled":Z
    :goto_0
    if-nez v6, :cond_2

    .line 573
    :cond_0
    :goto_1
    return-void

    .line 538
    .end local v6    # "fake_enabled":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 543
    .restart local v6    # "fake_enabled":Z
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v17

    const/16 v18, 0x7

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->getQcNvRead_int(II)I

    move-result v16

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v17

    const/16 v18, 0x8

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->getQcNvRead_int(II)I

    move-result v14

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v17

    const/16 v18, 0x9

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->getQcNvRead_int(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 547
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_3

    if-nez v15, :cond_3

    .line 548
    const/4 v3, 0x0

    .line 558
    :goto_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "rrc_integrity_enabled : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " , rrc_ciphering_enabled : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", rrc_fake_security_enabled : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 559
    .local v11, "logText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 560
    const-string v17, "@@@"

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    if-eqz v3, :cond_0

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x1040686

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x1040687

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x1040688

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 567
    new-instance v13, Landroid/app/Notification;

    .end local v13    # "notificationFakeMode":Landroid/app/Notification;
    const v17, 0x108000a

    const-wide/16 v18, 0x0

    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-direct {v13, v0, v8, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 568
    .restart local v13    # "notificationFakeMode":Landroid/app/Notification;
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v13, Landroid/app/Notification;->flags:I

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v9, v10, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "notification"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 571
    .local v5, "fakeNotificationMgr":Landroid/app/NotificationManager;
    invoke-virtual {v5, v12, v7, v13}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 550
    .end local v5    # "fakeNotificationMgr":Landroid/app/NotificationManager;
    .end local v11    # "logText":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 553
    :catch_0
    move-exception v4

    .line 554
    .local v4, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 555
    const-string v17, "@@@"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "exception : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 681
    const-string v0, "SkyTelephonyReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-void
.end method

.method private needNetworkSetting()V
    .locals 3

    .prologue
    .line 260
    const-string v0, "SkyTelephonyReceiver"

    const-string v1, "needNetworkSetting() called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v2, 0x1040682

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v2, 0x1040683

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v2, 0x1040684

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$2;-><init>(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nwSettingDlg:Landroid/app/AlertDialog;

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nwSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nwSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x680002

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nwSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 288
    return-void
.end method

.method private reboot()V
    .locals 3

    .prologue
    .line 503
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 507
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 509
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 510
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 522
    return-void
.end method

.method private rejCauseString(I)Ljava/lang/String;
    .locals 11
    .param p1, "rejCause"    # I

    .prologue
    const v10, 0x1040675

    .line 409
    const/4 v3, 0x0

    .line 410
    .local v3, "msg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "mccmnc":Ljava/lang/String;
    const/4 v0, 0x0

    .line 412
    .local v0, "IsForeignPLMN":Z
    const/4 v6, 0x0

    .line 413
    .local v6, "serviceCenterNum":Ljava/lang/String;
    const/4 v5, 0x0

    .line 414
    .local v5, "rejectNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 415
    .local v2, "mobileReset":Ljava/lang/String;
    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "nHPlmn":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v8, 0x1040676

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 419
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    .line 420
    :cond_0
    const-string v1, "00000"

    .line 422
    :cond_1
    const-string v7, "450"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v0, 0x1

    .line 423
    :goto_0
    const-string v7, "@@@"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@@   rejCauseString(), mccmnc : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    reject cause : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v7, "45005"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 427
    if-nez v0, :cond_3

    .line 428
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v8, 0x1040677

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 437
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 498
    :goto_2
    :pswitch_0
    return-object v3

    .line 422
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 430
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v8, 0x1040678

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 434
    :cond_4
    move-object v6, v2

    goto :goto_1

    .line 440
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v8, 0x104066d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 441
    goto :goto_2

    .line 443
    :pswitch_2
    const-string v5, "(2)"

    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v9, 0x104066f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 445
    goto :goto_2

    .line 447
    :pswitch_3
    const-string v5, "(3)"

    .line 448
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v9, 0x1040670

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 449
    goto :goto_2

    .line 451
    :pswitch_4
    const-string v5, "(6)"

    .line 452
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v9, 0x1040671

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 453
    goto :goto_2

    .line 455
    :pswitch_5
    const-string v5, "(11)"

    .line 456
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v9, 0x1040674

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 457
    goto/16 :goto_2

    .line 459
    :pswitch_6
    const-string v5, "(12)"

    .line 460
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 461
    goto/16 :goto_2

    .line 463
    :pswitch_7
    const-string v5, "(13)"

    .line 464
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 465
    goto/16 :goto_2

    .line 467
    :pswitch_8
    const-string v5, "(15)"

    .line 468
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 469
    goto/16 :goto_2

    .line 471
    :pswitch_9
    const-string v5, "(16)"

    .line 472
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 473
    goto/16 :goto_2

    .line 475
    :pswitch_a
    const-string v5, "(17)"

    .line 476
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 477
    goto/16 :goto_2

    .line 479
    :pswitch_b
    const-string v5, "(22)"

    .line 480
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 481
    goto/16 :goto_2

    .line 483
    :pswitch_c
    const-string v5, "(7)"

    .line 484
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 485
    goto/16 :goto_2

    .line 487
    :pswitch_d
    const-string v5, "(8)"

    .line 488
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 489
    goto/16 :goto_2

    .line 491
    :pswitch_e
    const-string v5, "(14)"

    .line 492
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v9, 0x1040673

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 493
    goto/16 :goto_2

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_e
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private showDialog(Ljava/lang/String;I)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 396
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->notifyMsg:Landroid/app/AlertDialog;

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->notifyMsg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->notifyMsg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 404
    return-void
.end method

.method private warnningToneGen()V
    .locals 4

    .prologue
    .line 379
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 386
    :cond_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0
.end method

.method private warnningToneRelease()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 392
    :cond_0
    return-void
.end method
