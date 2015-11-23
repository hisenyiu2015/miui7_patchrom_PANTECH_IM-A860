.class public Lcom/android/internal/telephony/gsm/GsmNwRegInfo;
.super Landroid/os/Handler;
.source "GsmNwRegInfo.java"


# static fields
.field static final DBG:Z = true

.field private static final DISP_TIME_GW_REJECT:I = 0x1388

.field private static final DISP_TIME_LTE_REJECT:I = 0x1388

.field private static final DOMAIN_CS:I = 0x1

.field private static final DOMAIN_PS:I = 0x2

.field public static final EVENT_DISPLAY_NETWORK_GW_CS_REJECT_CAUSE:I = 0x66

.field public static final EVENT_DISPLAY_NETWORK_GW_PS_REJECT_CAUSE:I = 0x67

.field public static final EVENT_DISPLAY_NETWORK_LTE_REJECT_CAUSE:I = 0x65

.field public static final EVENT_GW_CSPS_REG_SUCCESS:I = 0x6b

.field public static final EVENT_GW_CS_REG_SUCCESS:I = 0x69

.field public static final EVENT_GW_PS_REG_SUCCESS:I = 0x6a

.field public static final EVENT_LTE_REG_SUCCESS:I = 0x68

.field public static final EVENT_NETWORK_REG_INFO_IND:I = 0x64

.field private static final FOCUS_BEEP_VOLUME:I = 0x64

.field static final LOG_TAG:Ljava/lang/String; = "GsmNwRegInfo"


# instance fields
.field private CsRejDialog:Landroid/app/AlertDialog;

.field private LteRejDialog:Landroid/app/AlertDialog;

.field private PsRejDialog:Landroid/app/AlertDialog;

.field broadcastRejectMsg:Z

.field gwCsRegAccept:Z

.field gwCsRejCause:I

.field gwPsRegAccept:Z

.field gwPsRejCause:I

.field lteRejectCause:I

.field mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field ntptime:Lcom/android/internal/telephony/gsm/GsmNtpTime;

.field onRoamingRejectDialogClick:Landroid/content/DialogInterface$OnClickListener;

.field reportedMcc:I

.field reportedMnc:I

.field private roamingRejectDialog:Landroid/app/AlertDialog;

.field skyReceiver:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "gsst"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 69
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRejCause:I

    .line 70
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRejCause:I

    .line 71
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->lteRejectCause:I

    .line 73
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMcc:I

    .line 74
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMnc:I

    .line 76
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRegAccept:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRegAccept:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->broadcastRejectMsg:Z

    .line 112
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$1;-><init>(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 757
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$5;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$5;-><init>(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->onRoamingRejectDialogClick:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 88
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 90
    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForNwRegInfoInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 92
    const-string v1, "GsmNwRegInfo"

    const-string v2, "GsmNwRegInfo registered for NwRegInfoInd: EVENT_NETWORK_REG_INFO_IND"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    const-string v1, "persist.radio.rejected_usim"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->restoreProperty()V

    .line 105
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmNtpTime;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/GsmNtpTime;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->ntptime:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    .line 108
    new-instance v1, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->skyReceiver:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    .line 110
    return-void
.end method

.method private DispAllClear()V
    .locals 4

    .prologue
    const/16 v3, 0x67

    const/16 v2, 0x66

    const/16 v1, 0x65

    .line 247
    const-string v0, "DisplayAllClear !!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->broadcastRejectMsg:Z

    .line 253
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->removeMessages(I)V

    .line 256
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->removeMessages(I)V

    .line 259
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->removeMessages(I)V

    .line 263
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->lteDialogClear()V

    .line 264
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsDialogClear()V

    .line 265
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsDialogClear()V

    .line 266
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->roamRejectDialogClear()V

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmNwRegInfo;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->LteRejDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmNwRegInfo;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->LteRejDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmNwRegInfo;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->CsRejDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmNwRegInfo;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->CsRejDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmNwRegInfo;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->PsRejDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmNwRegInfo;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->PsRejDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmNwRegInfo;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->roamingRejectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private createRoamingRejectDialog()V
    .locals 6

    .prologue
    .line 741
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 742
    .local v2, "r":Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104067a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 743
    .local v3, "title":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, "b_ok":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "b_cancel":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->onRoamingRejectDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->onRoamingRejectDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->roamingRejectDialog:Landroid/app/AlertDialog;

    .line 753
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->roamingRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 754
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->roamingRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 755
    return-void
.end method

.method private displayGwCsReject()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 661
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsDialogClear()V

    .line 663
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104067b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "button_ok":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRejCause:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->makeGwRejectMsg(I)Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, "cs_msg":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRegAccept:Z

    .line 670
    const/4 v2, 0x1

    invoke-direct {p0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->handleRejectMsg(Ljava/lang/String;ZI)V

    .line 672
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->rejectToneGenerate()V

    .line 673
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMcc:I

    const/16 v3, 0x1c2

    if-eq v2, v3, :cond_2

    .line 674
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->roamingRejectDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->createRoamingRejectDialog()V

    goto :goto_0

    .line 678
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->lteDialogClear()V

    .line 679
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsDialogClear()V

    .line 681
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$3;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$3;-><init>(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->CsRejDialog:Landroid/app/AlertDialog;

    .line 695
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->CsRejDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 696
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->CsRejDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private displayGwPsReject()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 700
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsDialogClear()V

    .line 702
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104067b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "button_ok":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRejCause:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->makeGwRejectMsg(I)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "ps_msg":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRegAccept:Z

    .line 709
    const/4 v2, 0x2

    invoke-direct {p0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->handleRejectMsg(Ljava/lang/String;ZI)V

    .line 711
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->broadcastRejectMsg:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRejCause:I

    if-lez v2, :cond_2

    .line 712
    const-string v2, "PS reject cause do not display !!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 716
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->rejectToneGenerate()V

    .line 717
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMcc:I

    const/16 v3, 0x1c2

    if-eq v2, v3, :cond_3

    .line 718
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->roamingRejectDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->createRoamingRejectDialog()V

    goto :goto_0

    .line 722
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$4;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$4;-><init>(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->PsRejDialog:Landroid/app/AlertDialog;

    .line 736
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->PsRejDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 737
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->PsRejDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private displayLteReject()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 626
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->lteDialogClear()V

    .line 628
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104067b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "button_ok":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->lteRejectCause:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->makeLteRejectMsg(I)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "lte_msg":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->handleRejectMsg(Ljava/lang/String;ZI)V

    .line 635
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->rejectToneGenerate()V

    .line 636
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMcc:I

    const/16 v3, 0x1c2

    if-eq v2, v3, :cond_2

    .line 637
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->roamingRejectDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->createRoamingRejectDialog()V

    goto :goto_0

    .line 641
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$2;-><init>(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->LteRejDialog:Landroid/app/AlertDialog;

    .line 655
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->LteRejDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 656
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->LteRejDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private gwCsDialogClear()V
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->CsRejDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->CsRejDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->CsRejDialog:Landroid/app/AlertDialog;

    .line 790
    :cond_0
    return-void
.end method

.method private gwCsPsRegSuccess()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 212
    const-string v0, "GW CSPS domain reg success...."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->setCauseAllClear()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->broadcastRejectMsg:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRegAccept:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRegAccept:Z

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GsstUpdateSpn()V

    .line 219
    return-void
.end method

.method private gwCsRegSuccess()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    const-string v0, "GW CS domain reg success...."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    .line 185
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRejCause:I

    .line 187
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsDialogClear()V

    .line 188
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsDialogClear()V

    .line 189
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->roamRejectDialogClear()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRegAccept:Z

    .line 192
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->broadcastRejectMsg:Z

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GsstUpdateSpn()V

    .line 195
    return-void
.end method

.method private gwPsDialogClear()V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->PsRejDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->PsRejDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->PsRejDialog:Landroid/app/AlertDialog;

    .line 796
    :cond_0
    return-void
.end method

.method private gwPsRegSuccess()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    const-string v0, "GW PS domain reg success...."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    .line 199
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRejCause:I

    .line 201
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsDialogClear()V

    .line 202
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsDialogClear()V

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->roamRejectDialogClear()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRegAccept:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->broadcastRejectMsg:Z

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GsstUpdateSpn()V

    .line 209
    return-void
.end method

.method private handleRejectMsg(Ljava/lang/String;ZI)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isLTE"    # Z
    .param p3, "domain"    # I

    .prologue
    .line 589
    const-string v5, "GsmNwRegInfo"

    const-string v6, "handleRejectMsg()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v1, 0x0

    .line 592
    .local v1, "plmn":Ljava/lang/String;
    const/4 v4, 0x0

    .line 593
    .local v4, "spn":Ljava/lang/String;
    const/4 v2, 0x0

    .line 594
    .local v2, "showPlmn":Z
    const/4 v3, 0x0

    .line 596
    .local v3, "showSpn":Z
    if-eqz p2, :cond_1

    .line 597
    const-string v5, "LTE called handleRejectMsg()"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    .line 611
    :cond_0
    const/4 v3, 0x1

    .line 612
    move-object v4, p1

    .line 614
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->broadcastRejectMsg:Z

    .line 616
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 618
    const-string v5, "showSpn"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 619
    const-string v5, "spn"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v5, "showPlmn"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 621
    const-string v5, "plmn"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 623
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 602
    :cond_1
    const/4 v5, 0x2

    if-ne p3, v5, :cond_0

    .line 603
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->broadcastRejectMsg:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRejCause:I

    if-lez v5, :cond_0

    .line 605
    const-string v5, "PS reject cause msg. do not broadcast !!"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 847
    const-string v0, "GsmNwRegInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return-void
.end method

.method private lteDialogClear()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->LteRejDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->LteRejDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->LteRejDialog:Landroid/app/AlertDialog;

    .line 784
    :cond_0
    return-void
.end method

.method private lteRegSuccess()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 174
    const-string v0, "LTE reg success...."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->setCauseAllClear()V

    .line 176
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRegAccept:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRegAccept:Z

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->broadcastRejectMsg:Z

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GsstUpdateSpn()V

    .line 181
    return-void
.end method

.method private makeGwRejectMsg(I)Ljava/lang/String;
    .locals 12
    .param p1, "rejCode"    # I

    .prologue
    const/16 v11, 0x9

    const/16 v10, 0x8

    const/4 v9, 0x3

    const v8, 0x1040675

    .line 463
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 464
    .local v3, "r":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 466
    .local v1, "msg":Ljava/lang/String;
    const/4 v5, 0x0

    .line 467
    .local v5, "serviceCenterNum":Ljava/lang/String;
    const/4 v4, 0x0

    .line 468
    .local v4, "rejectNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .line 470
    .local v0, "mobileReset":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "nHPlmn":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    .line 472
    :cond_0
    const-string v2, "45005"

    .line 475
    :cond_1
    const v6, 0x1040679

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 476
    const v6, 0x1040676

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 477
    const-string v6, "45005"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 479
    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMcc:I

    const/16 v7, 0x1c2

    if-ne v6, v7, :cond_3

    .line 480
    const v6, 0x1040677

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 486
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 584
    :cond_2
    :goto_1
    :pswitch_0
    return-object v1

    .line 482
    :cond_3
    const v6, 0x1040678

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 484
    :cond_4
    move-object v5, v0

    goto :goto_0

    .line 488
    :pswitch_1
    const v6, 0x104066d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    goto :goto_1

    .line 493
    :pswitch_2
    const-string v6, "persist.radio.rejected_usim"

    const-string v7, "true"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v4, "(2)"

    .line 496
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x104066f

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    goto :goto_1

    .line 501
    :pswitch_3
    const-string v6, "persist.radio.rejected_usim"

    const-string v7, "true"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v4, "(3)"

    .line 504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x1040670

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    goto :goto_1

    .line 509
    :pswitch_4
    const-string v6, "persist.radio.rejected_usim"

    const-string v7, "true"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v4, "(6)"

    .line 512
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x1040671

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 513
    goto/16 :goto_1

    .line 516
    :pswitch_5
    const-string v4, "(11)"

    .line 517
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x1040674

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 518
    goto/16 :goto_1

    .line 521
    :pswitch_6
    const-string v4, "(12)"

    .line 522
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    goto/16 :goto_1

    .line 526
    :pswitch_7
    const-string v4, "(13)"

    .line 527
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    goto/16 :goto_1

    .line 531
    :pswitch_8
    const-string v4, "(15)"

    .line 532
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    goto/16 :goto_1

    .line 536
    :pswitch_9
    const-string v4, "(16)"

    .line 537
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 538
    goto/16 :goto_1

    .line 541
    :pswitch_a
    const-string v4, "(17)"

    .line 542
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    goto/16 :goto_1

    .line 546
    :pswitch_b
    const-string v4, "(22)"

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    goto/16 :goto_1

    .line 553
    :pswitch_c
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->getLocalDbInfo_Int(I)I

    move-result v6

    if-ne v6, v9, :cond_5

    .line 554
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->getLocalDbInfo_Int(I)I

    move-result v6

    if-eqz v6, :cond_2

    .line 558
    :cond_5
    const-string v4, "(7)"

    .line 559
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 560
    goto/16 :goto_1

    .line 563
    :pswitch_d
    const-string v4, "(8)"

    .line 564
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    goto/16 :goto_1

    .line 568
    :pswitch_e
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->getLocalDbInfo_Int(I)I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 569
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->getLocalDbInfo_Int(I)I

    move-result v6

    if-eqz v6, :cond_2

    .line 573
    :cond_6
    const-string v4, "(14)"

    .line 574
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x1040673

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 575
    goto/16 :goto_1

    .line 486
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

.method private makeLteRejectMsg(I)Ljava/lang/String;
    .locals 9
    .param p1, "rejCode"    # I

    .prologue
    const v8, 0x1040675

    .line 344
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 345
    .local v3, "r":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 347
    .local v1, "msg":Ljava/lang/String;
    const/4 v5, 0x0

    .line 348
    .local v5, "serviceCenterNum":Ljava/lang/String;
    const/4 v4, 0x0

    .line 349
    .local v4, "rejectNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .line 350
    .local v0, "mobileReset":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "nHPlmn":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    .line 352
    :cond_0
    const-string v2, "45005"

    .line 355
    :cond_1
    const v6, 0x1040679

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 356
    const v6, 0x1040676

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    const-string v6, "45005"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 360
    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMcc:I

    const/16 v7, 0x1c2

    if-ne v6, v7, :cond_2

    .line 361
    const v6, 0x1040677

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 368
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 459
    :goto_1
    :pswitch_0
    return-object v1

    .line 363
    :cond_2
    const v6, 0x1040678

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 365
    :cond_3
    move-object v5, v0

    goto :goto_0

    .line 370
    :pswitch_1
    const v6, 0x104066d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 371
    goto :goto_1

    .line 375
    :pswitch_2
    const-string v6, "persist.radio.rejected_usim"

    const-string v7, "true"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v4, "(2)"

    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x104066f

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    goto :goto_1

    .line 383
    :pswitch_3
    const-string v6, "persist.radio.rejected_usim"

    const-string v7, "true"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v4, "(3)"

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x1040670

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    goto :goto_1

    .line 391
    :pswitch_4
    const-string v6, "persist.radio.rejected_usim"

    const-string v7, "true"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v4, "(6)"

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x1040671

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    goto/16 :goto_1

    .line 398
    :pswitch_5
    const-string v4, "(11)"

    .line 399
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x1040674

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    goto/16 :goto_1

    .line 403
    :pswitch_6
    const-string v4, "(12)"

    .line 404
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    goto/16 :goto_1

    .line 408
    :pswitch_7
    const-string v4, "(13)"

    .line 409
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    goto/16 :goto_1

    .line 413
    :pswitch_8
    const-string v4, "(15)"

    .line 414
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    goto/16 :goto_1

    .line 418
    :pswitch_9
    const-string v4, "(16)"

    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    goto/16 :goto_1

    .line 423
    :pswitch_a
    const-string v4, "(17)"

    .line 424
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 425
    goto/16 :goto_1

    .line 428
    :pswitch_b
    const-string v4, "(22)"

    .line 429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 430
    goto/16 :goto_1

    .line 435
    :pswitch_c
    const-string v4, "(7)"

    .line 436
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    goto/16 :goto_1

    .line 441
    :pswitch_d
    const-string v6, "persist.radio.rejected_usim"

    const-string v7, "true"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v4, "(8)"

    .line 444
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    goto/16 :goto_1

    .line 448
    :pswitch_e
    const-string v4, "(14)"

    .line 449
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x1040673

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    goto/16 :goto_1

    .line 368
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

.method private notifyRejectCause(Lcom/android/internal/telephony/gsm/NwRegInfoInd;)V
    .locals 4
    .param p1, "reginfo"    # Lcom/android/internal/telephony/gsm/NwRegInfoInd;

    .prologue
    const-wide/16 v2, 0x1388

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    const-string v0, "GsmNwRegInfo"

    const-string v1, "No IMEI !! reject_display is not supported !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->needDisplay()Z

    move-result v0

    if-nez v0, :cond_2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no display  -- reject casue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getRejCause()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->isRegSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    const-string v0, "reg accepted !! no noti."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRegAccept:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRegAccept:Z

    if-eqz v0, :cond_5

    .line 327
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gwCsRegAccept:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRegAccept:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gwPsRegAccept:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRegAccept:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getRadioTech()Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;->LTE:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    if-ne v0, v1, :cond_6

    .line 332
    const/16 v0, 0x65

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 334
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getRadioTech()Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;->GSM:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getRadioTech()Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;->UMTS:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    if-ne v0, v1, :cond_0

    .line 335
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getDomain()Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;->CS:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    if-ne v0, v1, :cond_8

    .line 336
    const/16 v0, 0x66

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 338
    :cond_8
    const/16 v0, 0x67

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method private rejectToneGenerate()V
    .locals 4

    .prologue
    .line 831
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 840
    :cond_0
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "GsmNwRegInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while creating local tone generator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0
.end method

.method private restoreProperty()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 814
    const-string v4, "gsm.radio.nwreginfo"

    const-string v5, "0,0,0,0,0,0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, "str":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "restoreReginfo":[Ljava/lang/String;
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMcc:I

    .line 818
    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMnc:I

    .line 819
    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->lteRejectCause:I

    .line 820
    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRejCause:I

    .line 821
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRejCause:I

    .line 822
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->broadcastRejectMsg:Z

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[restored info] reportedMcc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMcc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reportedMnc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[restored info] lteRejectCause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->lteRejectCause:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gwCsRejCause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRejCause:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gwPsRejCause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRejCause:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[restored info] broadcastRejectMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->broadcastRejectMsg:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    .line 827
    return-void

    :cond_0
    move v2, v3

    .line 822
    goto :goto_0
.end method

.method private roamRejectDialogClear()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->roamingRejectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->roamingRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->roamingRejectDialog:Landroid/app/AlertDialog;

    .line 803
    :cond_0
    return-void
.end method

.method private saveProperty()V
    .locals 3

    .prologue
    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMcc:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMnc:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->lteRejectCause:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRejCause:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRejCause:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->broadcastRejectMsg:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, "saveReginfo":Ljava/lang/String;
    const-string v1, "gsm.radio.nwreginfo"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    return-void

    .line 807
    .end local v0    # "saveReginfo":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCauseAllClear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    const-string v0, "reject cause All clear !!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    .line 236
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->lteRejectCause:I

    .line 237
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRejCause:I

    .line 238
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRejCause:I

    .line 240
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->lteDialogClear()V

    .line 241
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsDialogClear()V

    .line 242
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsDialogClear()V

    .line 243
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->roamRejectDialogClear()V

    .line 244
    return-void
.end method

.method private setRejectCause(Lcom/android/internal/telephony/gsm/NwRegInfoInd;)V
    .locals 2
    .param p1, "reginfo"    # Lcom/android/internal/telephony/gsm/NwRegInfoInd;

    .prologue
    .line 271
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getMcc()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMcc:I

    .line 272
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getMnc()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMnc:I

    .line 274
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getRadioTech()Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;->LTE:Lcom/android/internal/telephony/gsm/NwRegInfoInd$RadioTech;

    if-ne v0, v1, :cond_1

    .line 276
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getRejCause()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->lteRejectCause:I

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lteReject : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->lteRejectCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reportedMCC/MNC : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->isRegSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->sendEmptyMessage(I)Z

    .line 306
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->saveProperty()V

    .line 307
    return-void

    .line 285
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getDomain()Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;->CS:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    if-ne v0, v1, :cond_3

    .line 286
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getRejCause()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRejCause:I

    .line 287
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->isRegSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->sendEmptyMessage(I)Z

    .line 302
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GW reject domain : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getDomain()Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getRejCause()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getDomain()Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;->PS:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    if-ne v0, v1, :cond_4

    .line 292
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getRejCause()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRejCause:I

    .line 293
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->isRegSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 297
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getDomain()Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;->CSPS:Lcom/android/internal/telephony/gsm/NwRegInfoInd$SrvDomain;

    if-ne v0, v1, :cond_2

    .line 298
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->isRegSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    const/16 v0, 0x6b

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->sendEmptyMessage(I)Z

    goto :goto_1
.end method


# virtual methods
.method public getGwCsRejectCause()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRejCause:I

    return v0
.end method

.method public getGwPsRejectCause()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRejCause:I

    return v0
.end method

.method public getLteRejectCause()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->lteRejectCause:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 126
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 129
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 130
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/NwRegInfoInd;

    .line 131
    .local v1, "reginfo":Lcom/android/internal/telephony/gsm/NwRegInfoInd;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reginfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->log(Ljava/lang/String;)V

    .line 133
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMcc:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getMcc()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->reportedMnc:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->getMnc()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 134
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRegAccept:Z

    .line 135
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRegAccept:Z

    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->setCauseAllClear()V

    .line 138
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->setRejectCause(Lcom/android/internal/telephony/gsm/NwRegInfoInd;)V

    .line 139
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->notifyRejectCause(Lcom/android/internal/telephony/gsm/NwRegInfoInd;)V

    goto :goto_0

    .line 141
    .end local v1    # "reginfo":Lcom/android/internal/telephony/gsm/NwRegInfoInd;
    :cond_2
    const-string v2, "GsmNwRegInfo"

    const-string v3, "EVENT_NETWORK_REG_INFO_IND --> exception !!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->displayLteReject()V

    goto :goto_0

    .line 149
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->displayGwCsReject()V

    goto :goto_0

    .line 152
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->displayGwPsReject()V

    goto :goto_0

    .line 156
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->lteRegSuccess()V

    goto :goto_0

    .line 159
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsRegSuccess()V

    goto :goto_0

    .line 162
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwPsRegSuccess()V

    goto :goto_0

    .line 165
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->gwCsPsRegSuccess()V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public isRejectMsgSent()Z
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->broadcastRejectMsg:Z

    return v0
.end method
