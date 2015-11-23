.class public Lcom/pantech/test/Sky_rftest_MDM;
.super Ljava/lang/Object;
.source "Sky_rftest_MDM.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "rf_test_mdm"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "sky_rftest"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method static native java_Sky_rftest_Tunable_Ant_Enable(I)I
.end method

.method static native java_Sky_rftest_Tunable_Ant_Path_GPIO(II)V
.end method

.method static native java_sky_rftest_CheckCalDone_MDM()I
.end method

.method static native java_sky_rftest_CheckInternalCal_MDM()I
.end method

.method static native java_sky_rftest_DebugScreen_MDM(I)[I
.end method

.method static native java_sky_rftest_GetCurChan_MDM()I
.end method

.method static native java_sky_rftest_GetMtplControl_MDM()I
.end method

.method static native java_sky_rftest_GetPDM_MDM(II)I
.end method

.method static native java_sky_rftest_GetSysMode_MDM()I
.end method

.method static native java_sky_rftest_IsFTMMode_MDM()I
.end method

.method static native java_sky_rftest_Reset_MDM()I
.end method

.method static native java_sky_rftest_SetBand_MDM(II)V
.end method

.method static native java_sky_rftest_SetBurst_MDM()V
.end method

.method static native java_sky_rftest_SetChan_MDM(I)V
.end method

.method static native java_sky_rftest_SetMtplControl_MDM(II)I
.end method

.method static native java_sky_rftest_SetPADAC_MDM(I)V
.end method

.method static native java_sky_rftest_SetPDM_MDM(I)V
.end method

.method static native java_sky_rftest_SetPaMode_MDM(I)V
.end method

.method static native java_sky_rftest_SetSysMode_MDM(I)V
.end method

.method static native java_sky_rftest_SetTxMode_MDM(I)V
.end method

.method static native java_sky_rftest_SetWaveform_MDM(I)V
.end method

.method static native java_sky_rftest_lte_GetCurChan_MDM()I
.end method

.method static native java_sky_rftest_lte_GetPwrIndex_MDM(I)I
.end method

.method static native java_sky_rftest_lte_RxPathControl_MDM(I)B
.end method

.method static native java_sky_rftest_lte_SetBandWidth_MDM(II)V
.end method

.method static native java_sky_rftest_lte_SetBand_MDM(I)V
.end method

.method static native java_sky_rftest_lte_SetChan_MDM(I)V
.end method

.method static native java_sky_rftest_lte_SetPaMode_MDM(I)V
.end method

.method static native java_sky_rftest_lte_SetPwrIndex_MDM(I)V
.end method

.method static native java_sky_rftest_lte_SetTxMode_MDM(I)V
.end method

.method static native java_sky_rftest_lte_SetWaveform_MDM(I)V
.end method

.method static native java_sky_rftest_rf_nv_read_cmd_by_byte_MDM(II)[B
.end method

.method static native java_sky_rftest_rf_nv_read_cmd_by_int_MDM(II)[I
.end method

.method static native java_sky_rftest_rf_nv_read_cmd_by_short_MDM(II)[S
.end method

.method static native java_sky_rftest_rf_nv_write_cmd_by_byte_MDM(I[B)I
.end method

.method static native java_sky_rftest_rf_nv_write_cmd_by_int_MDM(I[I)I
.end method

.method static native java_sky_rftest_rf_nv_write_cmd_by_short_MDM(I[S)I
.end method


# virtual methods
.method public CheckInternalCal_MDM()I
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_CheckInternalCal_MDM()I

    move-result v0

    return v0
.end method

.method public DebugScreen_MDM(I)[I
    .locals 1
    .param p1, "sys_mode"    # I

    .prologue
    .line 82
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_DebugScreen_MDM(I)[I

    move-result-object v0

    return-object v0
.end method

.method public GetMtplControl_MDM()I
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_GetMtplControl_MDM()I

    move-result v0

    return v0
.end method

.method public SetMtplControl_MDM(II)I
    .locals 1
    .param p1, "dsi"    # I
    .param p2, "mode"    # I

    .prologue
    .line 185
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetMtplControl_MDM(II)I

    move-result v0

    return v0
.end method

.method public Tunable_Ant_Enable(I)I
    .locals 1
    .param p1, "enable"    # I

    .prologue
    .line 176
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_Sky_rftest_Tunable_Ant_Enable(I)I

    move-result v0

    return v0
.end method

.method public Tunable_Ant_Path_GPIO(II)V
    .locals 0
    .param p1, "path"    # I
    .param p2, "cmd"    # I

    .prologue
    .line 172
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_Sky_rftest_Tunable_Ant_Path_GPIO(II)V

    .line 173
    return-void
.end method

.method public checkCalDone_MDM()I
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_CheckCalDone_MDM()I

    move-result v0

    return v0
.end method

.method public getCurChan_MDM()I
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_GetCurChan_MDM()I

    move-result v0

    return v0
.end method

.method public getPDM_MDM(II)I
    .locals 1
    .param p1, "power"    # I
    .param p2, "sys_mode"    # I

    .prologue
    .line 106
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_GetPDM_MDM(II)I

    move-result v0

    return v0
.end method

.method public getSysMode_MDM()I
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_GetSysMode_MDM()I

    move-result v0

    return v0
.end method

.method public isFTMMode_MDM()I
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_IsFTMMode_MDM()I

    move-result v0

    return v0
.end method

.method public lte_GetCurChan_MDM()I
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_GetCurChan_MDM()I

    move-result v0

    return v0
.end method

.method public lte_GetPwrIndex_MDM(I)I
    .locals 1
    .param p1, "power"    # I

    .prologue
    .line 230
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_GetPwrIndex_MDM(I)I

    move-result v0

    return v0
.end method

.method public lte_RxPathControl_MDM(I)B
    .locals 1
    .param p1, "rw_cmd"    # I

    .prologue
    .line 234
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_RxPathControl_MDM(I)B

    move-result v0

    return v0
.end method

.method public lte_SetBandWidth_MDM(II)V
    .locals 0
    .param p1, "rxtx"    # I
    .param p2, "bandwidth"    # I

    .prologue
    .line 202
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetBandWidth_MDM(II)V

    .line 203
    return-void
.end method

.method public lte_SetBand_MDM(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 198
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetBand_MDM(I)V

    .line 199
    return-void
.end method

.method public lte_SetChan_MDM(I)V
    .locals 0
    .param p1, "chan"    # I

    .prologue
    .line 206
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetChan_MDM(I)V

    .line 207
    return-void
.end method

.method public lte_SetPaMode_MDM(I)V
    .locals 0
    .param p1, "pa_mode"    # I

    .prologue
    .line 218
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetPaMode_MDM(I)V

    .line 219
    return-void
.end method

.method public lte_SetPwrIndex_MDM(I)V
    .locals 0
    .param p1, "pdm"    # I

    .prologue
    .line 222
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetPwrIndex_MDM(I)V

    .line 223
    return-void
.end method

.method public lte_SetTxMode_MDM(I)V
    .locals 0
    .param p1, "tx_mode"    # I

    .prologue
    .line 210
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetTxMode_MDM(I)V

    .line 211
    return-void
.end method

.method public lte_SetWaveform_MDM(I)V
    .locals 0
    .param p1, "onoff"    # I

    .prologue
    .line 214
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetWaveform_MDM(I)V

    .line 215
    return-void
.end method

.method public rf_nv_read_cmd_by_byte_MDM(II)[B
    .locals 1
    .param p1, "nv_items"    # I
    .param p2, "out_len"    # I

    .prologue
    .line 142
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_rf_nv_read_cmd_by_byte_MDM(II)[B

    move-result-object v0

    return-object v0
.end method

.method public rf_nv_read_cmd_by_int_MDM(II)[I
    .locals 1
    .param p1, "nv_items"    # I
    .param p2, "out_len"    # I

    .prologue
    .line 150
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_rf_nv_read_cmd_by_int_MDM(II)[I

    move-result-object v0

    return-object v0
.end method

.method public rf_nv_read_cmd_by_short_MDM(II)[S
    .locals 1
    .param p1, "nv_items"    # I
    .param p2, "out_len"    # I

    .prologue
    .line 146
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_rf_nv_read_cmd_by_short_MDM(II)[S

    move-result-object v0

    return-object v0
.end method

.method public rf_nv_write_cmd_by_byte_MDM(I[B)I
    .locals 1
    .param p1, "nv_items"    # I
    .param p2, "buf"    # [B

    .prologue
    .line 154
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_rf_nv_write_cmd_by_byte_MDM(I[B)I

    move-result v0

    return v0
.end method

.method public rf_nv_write_cmd_by_int_MDM(I[I)I
    .locals 1
    .param p1, "nv_items"    # I
    .param p2, "buf"    # [I

    .prologue
    .line 162
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_rf_nv_write_cmd_by_int_MDM(I[I)I

    move-result v0

    return v0
.end method

.method public rf_nv_write_cmd_by_short_MDM(I[S)I
    .locals 1
    .param p1, "nv_items"    # I
    .param p2, "buf"    # [S

    .prologue
    .line 158
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_rf_nv_write_cmd_by_short_MDM(I[S)I

    move-result v0

    return v0
.end method

.method public rf_reset_MDM()I
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_Reset_MDM()I

    move-result v0

    return v0
.end method

.method public setBand_MDM(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "system"    # I

    .prologue
    .line 134
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetBand_MDM(II)V

    .line 135
    return-void
.end method

.method public setBurst_MDM()V
    .locals 0

    .prologue
    .line 122
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetBurst_MDM()V

    .line 123
    return-void
.end method

.method public setChan_MDM(I)V
    .locals 0
    .param p1, "chan"    # I

    .prologue
    .line 130
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetChan_MDM(I)V

    .line 131
    return-void
.end method

.method public setPADAC_MDM(I)V
    .locals 0
    .param p1, "dac_value"    # I

    .prologue
    .line 118
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetPADAC_MDM(I)V

    .line 119
    return-void
.end method

.method public setPDM_MDM(I)V
    .locals 0
    .param p1, "pdm"    # I

    .prologue
    .line 110
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetPDM_MDM(I)V

    .line 111
    return-void
.end method

.method public setPaMode_MDM(I)V
    .locals 0
    .param p1, "pa_mode"    # I

    .prologue
    .line 114
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetPaMode_MDM(I)V

    .line 115
    return-void
.end method

.method public setSysMode_MDM(I)V
    .locals 0
    .param p1, "oprt_mode"    # I

    .prologue
    .line 86
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetSysMode_MDM(I)V

    .line 87
    return-void
.end method

.method public setTxMode_MDM(I)V
    .locals 0
    .param p1, "tx_mode"    # I

    .prologue
    .line 98
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetTxMode_MDM(I)V

    .line 99
    return-void
.end method

.method public setWaveform_MDM(I)V
    .locals 0
    .param p1, "waveform"    # I

    .prologue
    .line 102
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetWaveform_MDM(I)V

    .line 103
    return-void
.end method
