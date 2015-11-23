.class Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;
.super Landroid/os/Handler;
.source "SkyTelephonyInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 90
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 92
    :sswitch_0
    const-string v1, "SkyTelephony"

    const-string v2, "EF update is complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :sswitch_1
    const-string v1, "SkyTelephony"

    const-string v2, "phone operation mode changed....."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :sswitch_2
    const-string v1, "SkyTelephony"

    const-string v2, "EVENT_CALLBACK_CALL_CONN_SND"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCsCallConnectSndStart()V

    goto :goto_0

    .line 105
    :sswitch_3
    const-string v1, "SkyTelephony"

    const-string v2, "EVENT_CALLBACK_SKT_SUBS_SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedSktSubs()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$100(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V

    goto :goto_0

    .line 110
    :sswitch_4
    const-string v1, "SkyTelephony"

    const-string v2, "EVENT_CALLBACK_KT_SUBS_SRV_IND"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedKtSubs()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V

    goto :goto_0

    .line 114
    :sswitch_5
    const-string v1, "SkyTelephony"

    const-string v2, "EVENT_CALLBACK_CARD_REMOVED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedCardRemoved()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$300(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V

    goto :goto_0

    .line 119
    :sswitch_6
    const-string v1, "SkyTelephony"

    const-string v2, "EVENT_CALLBACK_VE_IND"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedVeInd()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$400(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V

    goto :goto_0

    .line 124
    :sswitch_7
    const-string v1, "SkyTelephony"

    const-string v2, "EVENT_CALLBACK_VE_STOP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedVeStop()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$500(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V

    goto :goto_0

    .line 129
    :sswitch_8
    const-string v1, "SkyTelephony"

    const-string v2, "callback end autoanswer ind....."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyAutoanswerInd()V

    goto :goto_0

    .line 135
    :sswitch_9
    const-string v1, "SkyTelephony"

    const-string v2, "EVENT_VERIFY_PCK_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mTempPck:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$600(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mPersofeature:I
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$700(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xd2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v6, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPersoFeatureInd(Ljava/lang/String;ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 142
    :sswitch_a
    const-string v1, "SkyTelephony"

    const-string v2, "EVENT_SET_PERSO_FEATURE_IND -- complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 147
    :sswitch_b
    const-string v1, "SkyTelephony"

    const-string v2, "network reg info ind....."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_get_nw_reg_info_ind()[I
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$800(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)[I

    move-result-object v0

    .line 149
    .local v0, "regArray":[I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->reginfo:Lcom/android/internal/telephony/gsm/NwRegInfoInd;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->setRegInfo([I)V

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->reginfo:Lcom/android/internal/telephony/gsm/NwRegInfoInd;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyNwRegInfoInd(Lcom/android/internal/telephony/gsm/NwRegInfoInd;)V

    .line 151
    const-string v1, "@@@"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[REG_INFO] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->reginfo:Lcom/android/internal/telephony/gsm/NwRegInfoInd;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/NwRegInfoInd;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 156
    .end local v0    # "regArray":[I
    :sswitch_c
    const-string v1, "SKT"

    const-string v2, "EVENT_DATA_COMMON_WRONG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 160
    :sswitch_d
    const-string v1, "SKT"

    const-string v2, "EVENT_LTE_MO_DATA_BARRING_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedLteMoDataBarring(Z)V
    invoke-static {v1, v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$900(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;Z)V

    goto/16 :goto_0

    .line 164
    :sswitch_e
    const-string v1, "SKT"

    const-string v2, "EVENT_LTE_MO_DATA_BARRING_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedLteMoDataBarring(Z)V
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$900(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;Z)V

    goto/16 :goto_0

    .line 170
    :sswitch_f
    const-string v1, "SKT"

    const-string v2, "EVENT_APN_PROFILE_RESTORED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedApnProfileRestored()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$1000(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V

    goto/16 :goto_0

    .line 176
    :sswitch_10
    const-string v1, "SKT"

    const-string v2, "EVENT_ROAMING_FIRST_TIME"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedRoamingStatusChangedFirstTime(Z)V
    invoke-static {v1, v6}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$1100(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;Z)V

    goto/16 :goto_0

    .line 180
    :sswitch_11
    const-string v1, "SKT"

    const-string v2, "EVENT_DOMASTIC_FIRST_TIME"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedRoamingStatusChangedFirstTime(Z)V
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$1100(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;Z)V

    goto/16 :goto_0

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_3
        0xca -> :sswitch_4
        0xcb -> :sswitch_5
        0xcc -> :sswitch_6
        0xcd -> :sswitch_7
        0xce -> :sswitch_8
        0xd0 -> :sswitch_b
        0xd1 -> :sswitch_9
        0xd2 -> :sswitch_a
        0xd3 -> :sswitch_c
        0xd4 -> :sswitch_d
        0xd5 -> :sswitch_e
        0xd6 -> :sswitch_f
        0xd7 -> :sswitch_10
        0xd8 -> :sswitch_11
    .end sparse-switch
.end method
