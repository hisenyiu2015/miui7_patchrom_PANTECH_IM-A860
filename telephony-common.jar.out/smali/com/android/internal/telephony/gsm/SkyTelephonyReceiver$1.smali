.class Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SkyTelephonyReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v9, 0x1388

    const/4 v8, 0x5

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.FAKE_ROAMING_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 126
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->SetFakeRoamingMode()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$000(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v6, "android.sky.intent.action.SKY_CARD_REMOVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$100(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x65

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 131
    :cond_2
    const-string v6, "android.sky.intent.action.SKY_CS_CALL_REJ_CAUSE_DISPLAY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->getGcfMode()Z

    move-result v6

    if-nez v6, :cond_3

    .line 132
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getCSrejCause()I

    move-result v7

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->rejCauseString(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$200(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;I)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "rejCSString":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 134
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->showDialog(Ljava/lang/String;I)V
    invoke-static {v6, v3, v8}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$300(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;Ljava/lang/String;I)V

    .line 135
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->warnningToneGen()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$400(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    goto :goto_0

    .line 138
    .end local v3    # "rejCSString":Ljava/lang/String;
    :cond_3
    const-string v6, "android.sky.intent.action.SKY_PS_CALL_REJ_CAUSE_DISPLAY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->getGcfMode()Z

    move-result v6

    if-nez v6, :cond_4

    .line 139
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getPSrejCause()I

    move-result v7

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->rejCauseString(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$200(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;I)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "rejPSString":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 141
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->showDialog(Ljava/lang/String;I)V
    invoke-static {v6, v4, v8}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$300(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;Ljava/lang/String;I)V

    .line 142
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->warnningToneGen()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$400(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    goto :goto_0

    .line 145
    .end local v4    # "rejPSString":Ljava/lang/String;
    :cond_4
    const-string v6, "android.sky.intent.action.SET_DATA_NETWORK_MODE_HIDDEN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 147
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->SetDataNeworkMode()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$500(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    goto/16 :goto_0

    .line 150
    :cond_5
    const-string v6, "android.sky.intent.action.NETWORK_MANUAL_LIST_CALL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 152
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->needNetworkSetting()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$600(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    goto/16 :goto_0

    .line 154
    :cond_6
    const-string v6, "android.intent.action.FA_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 155
    const-string v6, "FA"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, "fa":I
    if-ltz v1, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->SetFaChange(I)V
    invoke-static {v6, v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$700(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;I)V

    goto/16 :goto_0

    .line 158
    .end local v1    # "fa":I
    :cond_7
    const-string v6, "android.intent.action.MODEM_NV_INIT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 159
    const-string v6, "@@@"

    const-string v7, "received android.intent.action.MODEM_NV_INIT.."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSkyTelephonyIM()Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->modemNvFactoryInit()V

    goto/16 :goto_0

    .line 164
    :cond_8
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 165
    const-string v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "stateExtra":Ljava/lang/String;
    const-string v6, "LOADED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 167
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$100(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x68

    invoke-virtual {v6, v7, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 169
    :cond_9
    const-string v6, "READY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$100(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x6d

    invoke-virtual {v6, v7, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 175
    .end local v5    # "stateExtra":Ljava/lang/String;
    :cond_a
    const-string v6, "android.sky.intent.action.SET_DBG_OVERLAY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 176
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->SetDbgOverlayMode(Landroid/content/Context;)V
    invoke-static {v6, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$800(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 180
    :cond_b
    const-string v6, "android.sky.intent.action.DS_APN_SETTING"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 181
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v2, "i":Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.ApnSettings"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    const-string v6, "isHidden"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
