.class public Lcom/pantech/test/Sky_ctrl_drv;
.super Ljava/lang/Object;
.source "Sky_ctrl_drv.java"


# static fields
.field public static final BACKTOUCH_IOCTL_CHECK_FW_IC:I = 0xfb7

.field public static final BACKTOUCH_IOCTL_CHECK_FW_MAJOR_VER:I = 0xfba

.field public static final BACKTOUCH_IOCTL_CHECK_FW_MINOR_VER:I = 0xfbb

.field public static final BACKTOUCH_IOCTL_CHECK_IC_FW_MAJOR_VER:I = 0xfb8

.field public static final BACKTOUCH_IOCTL_CHECK_IC_FW_MINOR_VER:I = 0xfb9

.field public static final BACKTOUCH_IOCTL_MUST_TURN_ON:I = 0xfbf

.field public static final BACKTOUCH_IOCTL_SELF_TEST_END:I = 0xfa5

.field public static final BACKTOUCH_IOCTL_SELF_TEST_OPEN:I = 0xfa3

.field public static final BACKTOUCH_IOCTL_SELF_TEST_REF:I = 0xfa2

.field public static final BACKTOUCH_IOCTL_SELF_TEST_SHORT:I = 0xfa4

.field public static final BACKTOUCH_IOCTL_SELF_TEST_START:I = 0xfa1

.field public static final BACKTOUCH_IOCTL_START_FW_UPDATE:I = 0xfbc

.field public static final BACKTOUCH_IOCTL_START_KEEPALIVE:I = 0xfb6

.field public static final BACKTOUCH_IOCTL_STOP_KEEPALIVE:I = 0xfc1

.field public static final BACKTOUCH_IOCTL_TEST_TURN_OFF:I = 0xfb6

.field public static final BACKTOUCH_IOCTL_TEST_TURN_ON:I = 0xfb5

.field public static final BACKTOUCH_IOCTL_TURN_OFF:I = 0xfac

.field public static final BACKTOUCH_IOCTL_TURN_ON:I = 0xfab

.field public static final CALL_OFF:I = 0x4

.field public static final CALL_ON:I = 0x3

.field public static final FACTORY_CABLE:I = 0x2

.field public static final FSM_STATE_ATC_2A:I = 0x2

.field public static final FSM_STATE_ATC_2B:I = 0x12

.field public static final FSM_STATE_ATC_FAIL_4:I = 0x4

.field public static final FSM_STATE_ATC_PAUSE_13:I = 0xd

.field public static final FSM_STATE_BATFETDET_END_16:I = 0x10

.field public static final FSM_STATE_BATFETDET_START_12:I = 0xc

.field public static final FSM_STATE_CHG_FAIL_9:I = 0x9

.field public static final FSM_STATE_DELAY_5:I = 0x5

.field public static final FSM_STATE_EOC_10:I = 0xa

.field public static final FSM_STATE_FAST_CHG_7:I = 0x7

.field public static final FSM_STATE_FAST_CHG_PAUSE_14:I = 0xe

.field public static final FSM_STATE_FLCB:I = 0x16

.field public static final FSM_STATE_FLCB_VREGOK:I = 0x15

.field public static final FSM_STATE_OFF_0:I = 0x0

.field public static final FSM_STATE_ON_BAT_3:I = 0x3

.field public static final FSM_STATE_ON_CHG_AND_BAT_6:I = 0x6

.field public static final FSM_STATE_ON_CHG_HIGHI_1:I = 0x1

.field public static final FSM_STATE_ON_CHG_VREGOK_11:I = 0xb

.field public static final FSM_STATE_START_BOOT:I = 0x14

.field public static final FSM_STATE_TRKL_CHG_8:I = 0x8

.field public static final FSM_STATE_TRKL_CHG_PAUSE_15:I = 0xf

.field public static final INVALID_CABLE:I = 0x6

.field public static final NO_CABLE:I = 0x0

.field public static final REQ_CMD_LCD_GET_LCD_REV:I = 0x2

.field public static final REQ_CMD_LCD_TURN_OFF:I = 0x1

.field public static final REQ_CMD_LCD_TURN_ON:I = 0x0

.field public static final STANDARD_CABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "sky ctrl driver"

.field public static final TA_CABLE:I = 0x3

.field public static final TOUCH_IOCTL_BOOT_PANEL_TEST:I = 0x3f5

.field public static final TOUCH_IOCTL_CALIBRATE:I = 0x3f4

.field public static final TOUCH_IOCTL_CHARGER_MODE:I = 0x3f1

.field public static final TOUCH_IOCTL_CHECK_BASE:I = 0x7d7

.field public static final TOUCH_IOCTL_CLEAN:I = 0x3ec

.field public static final TOUCH_IOCTL_DEBUG:I = 0x3ed

.field public static final TOUCH_IOCTL_DELETE_ACTAREA:I = 0x7d1

.field public static final TOUCH_IOCTL_DO_KEY:I = 0x3ea

.field public static final TOUCH_IOCTL_INIT:I = 0xbb9

.field public static final TOUCH_IOCTL_OFF:I = 0xbba

.field public static final TOUCH_IOCTL_POWER_OFF:I = 0x3f2

.field public static final TOUCH_IOCTL_PRESS_TOUCH:I = 0x3ef

.field public static final TOUCH_IOCTL_READ_FW_VERSION:I = 0x7d9

.field public static final TOUCH_IOCTL_READ_IC_VERSION:I = 0x7d8

.field public static final TOUCH_IOCTL_READ_LASTKEY:I = 0x3e9

.field public static final TOUCH_IOCTL_RECOVERY_ACTAREA:I = 0x7d2

.field public static final TOUCH_IOCTL_RELEASE_KEY:I = 0x3eb

.field public static final TOUCH_IOCTL_RELEASE_TOUCH:I = 0x3f0

.field public static final TOUCH_IOCTL_RESTART:I = 0x3ee

.field public static final TOUCH_IOCTL_SELF_TEST:I = 0x7db

.field public static final TOUCH_IOCTL_SENSOR_X:I = 0x7d5

.field public static final TOUCH_IOCTL_SENSOR_Y:I = 0x7d6

.field public static final TOUCH_IOCTL_SET_VKEYBOARD:I = 0xbbb

.field public static final TOUCH_IOCTL_START_UPDATE:I = 0x7da

.field public static final TOUCH_IOCTL_STYLUS_MODE:I = 0x3f3

.field public static final TOUCH_IOCTL_VKEYBOARD_OFF:I = 0x0

.field public static final TOUCH_IOCTL_VKEYBOARD_ON:I = 0x1

.field public static final UNKNOWN_CABLE:I = 0x5

.field public static final WIRELESS_CABLE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    const-string v0, "sky_ctrl_drv"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Sky_Ctrl_BackTouch(I)I
    .locals 3
    .param p0, "cmd"    # I

    .prologue
    .line 227
    const-string v0, "BTCH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_backtouch(II)I

    move-result v0

    return v0
.end method

.method public static Sky_Ctrl_BackTouch(II)I
    .locals 3
    .param p0, "cmd"    # I
    .param p1, "data"    # I

    .prologue
    .line 234
    const-string v0, "BTCH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {p0, p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_backtouch(II)I

    move-result v0

    return v0
.end method

.method public static Sky_Ctrl_Touch(I)I
    .locals 1
    .param p0, "cmd"    # I

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_touch(II)I

    move-result v0

    return v0
.end method

.method public static Sky_Ctrl_Touch(II)I
    .locals 1
    .param p0, "cmd"    # I
    .param p1, "data"    # I

    .prologue
    .line 222
    invoke-static {p0, p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_touch(II)I

    move-result v0

    return v0
.end method

.method static native java_gota_jni_get_permanent_mem(I[B)I
.end method

.method static native java_gota_jni_set_permanent_mem(I[B)I
.end method

.method static native java_sky_ctrl_Battery(I)I
.end method

.method static native java_sky_ctrl_DebugMessage(II)I
.end method

.method static native java_sky_ctrl_GetUimStatus()I
.end method

.method static native java_sky_ctrl_Result_Gyroscope(I)I
.end method

.method static native java_sky_ctrl_UimDetectCountTest(I)I
.end method

.method static native java_sky_ctrl_backtouch(II)I
.end method

.method static native java_sky_ctrl_dialer_app(I)I
.end method

.method static native java_sky_ctrl_efs_erase(I)V
.end method

.method static native java_sky_ctrl_get_Battery(I)I
.end method

.method static native java_sky_ctrl_get_Function_Flag(I)I
.end method

.method static native java_sky_ctrl_get_cabc()I
.end method

.method static native java_sky_ctrl_get_curr_gpio(I)I
.end method

.method static native java_sky_ctrl_get_eco()I
.end method

.method static native java_sky_ctrl_get_sharpness()I
.end method

.method static native java_sky_ctrl_get_sleep_gpio(I)I
.end method

.method static native java_sky_ctrl_get_test_reboot(I)I
.end method

.method static native java_sky_ctrl_gpio_set(I)I
.end method

.method static native java_sky_ctrl_lcd(II)I
.end method

.method static native java_sky_ctrl_led(II)I
.end method

.method static native java_sky_ctrl_mdm_prevent_upgrade(I)I
.end method

.method static native java_sky_ctrl_oj(I)I
.end method

.method static native java_sky_ctrl_patternunlock(I)I
.end method

.method static native java_sky_ctrl_pdl(I)I
.end method

.method static native java_sky_ctrl_read_device(Ljava/lang/String;)I
.end method

.method static native java_sky_ctrl_read_rtc()J
.end method

.method static native java_sky_ctrl_sdimage_update()I
.end method

.method static native java_sky_ctrl_self_Gyroscope(I)I
.end method

.method static native java_sky_ctrl_self_upgrade(I)I
.end method

.method static native java_sky_ctrl_set_backlight_cmds(Ljava/lang/String;)I
.end method

.method static native java_sky_ctrl_set_cabc(I)I
.end method

.method static native java_sky_ctrl_set_eco(I)I
.end method

.method static native java_sky_ctrl_set_sharpness(I)I
.end method

.method static native java_sky_ctrl_set_test_reboot(I)I
.end method

.method static native java_sky_ctrl_touch(II)I
.end method

.method static native java_sky_ctrl_touch_area(I)I
.end method

.method static native java_sky_ctrl_touch_update(I[I)I
.end method

.method static native java_sky_ctrl_usb_testmenu(I)V
.end method

.method static native java_sky_ctrl_write_device(Ljava/lang/String;I)I
.end method


# virtual methods
.method public Sky_Ctrl_Battery(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 393
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_Battery(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_DebugMessage(II)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "value"    # I

    .prologue
    .line 258
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_DebugMessage(II)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Dialer_App(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 268
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_dialer_app(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Efs_Erase(I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    .line 253
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_efs_erase(I)V

    .line 254
    return-void
.end method

.method public Sky_Ctrl_GetUimStatus()I
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_GetUimStatus()I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Battery(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_Battery(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Cabc()I
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_cabc()I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Curr_Gpio(I)I
    .locals 1
    .param p1, "gpio"    # I

    .prologue
    .line 331
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_curr_gpio(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Eco()I
    .locals 1

    .prologue
    .line 434
    invoke-static {}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_eco()I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Function_Flag(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 414
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_Function_Flag(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Result_Gyroscope()I
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_Result_Gyroscope(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Sharpness()I
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_sharpness()I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Sleep_Gpio(I)I
    .locals 1
    .param p1, "gpio"    # I

    .prologue
    .line 336
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_sleep_gpio(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Test_Reboot()I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_test_reboot(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Gpio_Set(I)I
    .locals 1
    .param p1, "gpio"    # I

    .prologue
    .line 326
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_gpio_set(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Lcd(II)I
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .prologue
    .line 289
    const-string v0, "sky ctrl driver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LIVED] Sky_Ctrl_Lcd cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_lcd(II)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Led(II)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "id"    # I

    .prologue
    .line 283
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_led(II)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Mdm_Prevent_Upgrade(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 354
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_mdm_prevent_upgrade(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_OJ(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 263
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_oj(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_PDL(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 248
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_pdl(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_PatternUnlock(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 243
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_patternunlock(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Read_Device(Ljava/lang/String;)I
    .locals 1
    .param p1, "devfile"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_read_device(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Read_Rtc()J
    .locals 2

    .prologue
    .line 409
    invoke-static {}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_read_rtc()J

    move-result-wide v0

    return-wide v0
.end method

.method public Sky_Ctrl_Self_Gyroscope(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 383
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_self_Gyroscope(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Self_Upgrade(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 360
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_self_upgrade(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Set_Backlight_Cmds(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_set_backlight_cmds(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Set_Cabc(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 298
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_set_cabc(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Set_Eco(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 430
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_set_eco(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Set_Sharpness(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 309
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_set_sharpness(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Set_Test_Reboot(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 273
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_set_test_reboot(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Touch_Area(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 340
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_touch_area(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Touch_Update(I[I)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "data"    # [I

    .prologue
    .line 403
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_touch_update(I[I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_UimDetectCountTest(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 349
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_UimDetectCountTest(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Usb_Testmenu(I)V
    .locals 0
    .param p1, "param"    # I

    .prologue
    .line 438
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_usb_testmenu(I)V

    .line 439
    return-void
.end method

.method public Sky_Ctrl_Write_Device(Ljava/lang/String;I)I
    .locals 3
    .param p1, "devfile"    # Ljava/lang/String;
    .param p2, "data"    # I

    .prologue
    .line 372
    const-string v0, "Sky_ctrl_drv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sky_Ctrl_Write_Device :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_write_device(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Sky_ctrl_sdimage_update()I
    .locals 1

    .prologue
    .line 367
    invoke-static {}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_sdimage_update()I

    move-result v0

    return v0
.end method

.method public gota_jni_get_permanent_mem(I[B)I
    .locals 1
    .param p1, "oper"    # I
    .param p2, "data"    # [B

    .prologue
    .line 424
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_gota_jni_get_permanent_mem(I[B)I

    move-result v0

    return v0
.end method

.method public gota_jni_set_permanent_mem(I[B)I
    .locals 1
    .param p1, "oper"    # I
    .param p2, "data"    # [B

    .prologue
    .line 420
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_gota_jni_set_permanent_mem(I[B)I

    move-result v0

    return v0
.end method

.method public native native_chargerCharging_get_smb_val(I)I
.end method

.method public native native_chargerCharging_set_smb_ioctl()I
.end method

.method public native native_chargerDischarging_get_smb_ioctl()I
.end method

.method public native native_chargerDischarging_set_smb_ioctl(I)I
.end method

.method public native native_chargerMonitor_get_smb_val(I)I
.end method

.method public native native_chargerMonitor_set_smb_ioctl()I
.end method

.method public native native_chargerTest_start()V
.end method

.method public native native_chargerTest_stop()V
.end method
