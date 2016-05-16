.class public Lcom/mi/a/StatusSettingActivity;
.super Lmiui/preference/PreferenceActivity;
.source "StatusSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private Dpi_change_item:[Ljava/lang/String;

.field private Launcher_change_item:[Ljava/lang/String;

.field private Reboot_item:[Ljava/lang/String;

.field private Recitem:[Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field item:I

.field item_DIP:I

.field private mBattery:Landroid/preference/CheckBoxPreference;

.field private mStatusBarNetworkTraffic:Landroid/preference/ListPreference;

.field private mStatusBatteryLine:Landroid/preference/CheckBoxPreference;

.field private mStatusLongPressClick:Landroid/preference/ListPreference;

.field private mStatus_Double:Landroid/preference/ListPreference;

.field private mStatus_batteryline_pro:Landroid/preference/PreferenceScreen;

.field private mStatus_bright:Landroid/preference/CheckBoxPreference;

.field private mStatusstyle:Landroid/preference/ListPreference;

.field private mshak:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/mi/a/StatusSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/mi/a/StatusSettingActivity$1;-><init>(Lcom/mi/a/StatusSettingActivity;)V

    iput-object v0, p0, Lcom/mi/a/StatusSettingActivity;->handler:Landroid/os/Handler;

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u91cd\u542f\u624b\u673a"

    aput-object v1, v0, v3

    const-string v1, "\u8fdb\u5165recovery\u6a21\u5f0f"

    aput-object v1, v0, v2

    const-string v1, "\u8fdb\u5165bootloader\u6a21\u5f0f"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/mi/a/StatusSettingActivity;->Reboot_item:[Ljava/lang/String;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u5237\u5165\u5b98\u65b9recovery"

    aput-object v1, v0, v3

    const-string v1, "\u5237\u5165\u7b2c\u4e09\u65b9recovery"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/mi/a/StatusSettingActivity;->Recitem:[Ljava/lang/String;

    .line 55
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u9ed8\u8ba44X5\u5e03\u5c40"

    aput-object v1, v0, v3

    const-string v1, "\u589e\u5f3a4X6\u5e03\u5c40"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/mi/a/StatusSettingActivity;->Launcher_change_item:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "500"

    aput-object v1, v0, v3

    const-string v1, "480"

    aput-object v1, v0, v2

    const-string v1, "460"

    aput-object v1, v0, v4

    const-string v1, "440"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "420"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mi/a/StatusSettingActivity;->Dpi_change_item:[Ljava/lang/String;

    .line 60
    iput v3, p0, Lcom/mi/a/StatusSettingActivity;->item_DIP:I

    .line 61
    iput v3, p0, Lcom/mi/a/StatusSettingActivity;->item:I

    .line 25
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 65
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v3, 0x7f040004

    invoke-virtual {p0, v3}, Lcom/mi/a/StatusSettingActivity;->addPreferencesFromResource(I)V

    .line 71
    const-string v3, "status_batteryline"

    invoke-virtual {p0, v3}, Lcom/mi/a/StatusSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mStatusBatteryLine:Landroid/preference/CheckBoxPreference;

    .line 72
    const-string v3, "status_batteryline_pro"

    invoke-virtual {p0, v3}, Lcom/mi/a/StatusSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mStatus_batteryline_pro:Landroid/preference/PreferenceScreen;

    .line 75
    const-string v3, "status_style"

    invoke-virtual {p0, v3}, Lcom/mi/a/StatusSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mStatusstyle:Landroid/preference/ListPreference;

    .line 76
    invoke-virtual {p0}, Lcom/mi/a/StatusSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_style"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 77
    .local v2, "statusStyle":I
    iget-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mStatusstyle:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mStatusstyle:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/mi/a/StatusSettingActivity;->mStatusstyle:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mStatusstyle:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    const-string v3, "status_brightness"

    invoke-virtual {p0, v3}, Lcom/mi/a/StatusSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mStatus_bright:Landroid/preference/CheckBoxPreference;

    .line 86
    const-string v3, "shake_wake"

    invoke-virtual {p0, v3}, Lcom/mi/a/StatusSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mshak:Landroid/preference/CheckBoxPreference;

    .line 97
    const-string v3, "batteryinfo"

    invoke-virtual {p0, v3}, Lcom/mi/a/StatusSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mBattery:Landroid/preference/CheckBoxPreference;

    .line 112
    const-string v3, "status_doubleclick"

    invoke-virtual {p0, v3}, Lcom/mi/a/StatusSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mStatus_Double:Landroid/preference/ListPreference;

    .line 113
    invoke-virtual {p0}, Lcom/mi/a/StatusSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_doubleclick"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 114
    .local v1, "networkTrafficStyle":I
    iget-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mStatus_Double:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mStatus_Double:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/mi/a/StatusSettingActivity;->mStatus_Double:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mStatus_Double:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    const-string v3, "status_Longclick"

    invoke-virtual {p0, v3}, Lcom/mi/a/StatusSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mStatusLongPressClick:Landroid/preference/ListPreference;

    .line 119
    invoke-virtual {p0}, Lcom/mi/a/StatusSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_LongPress"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, "ClickstatusStylea":I
    iget-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mStatusLongPressClick:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mStatusLongPressClick:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/mi/a/StatusSettingActivity;->mStatusLongPressClick:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v3, p0, Lcom/mi/a/StatusSettingActivity;->mStatusLongPressClick:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 258
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 487
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "key":Ljava/lang/String;
    const-string v5, "status_bar_network_traffic_style"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, p2

    .line 489
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 490
    .local v4, "networkTrafficStyle":I
    iget-object v5, p0, Lcom/mi/a/StatusSettingActivity;->mStatusBarNetworkTraffic:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 491
    .local v2, "index":I
    invoke-virtual {p0}, Lcom/mi/a/StatusSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 492
    const-string v7, "STATUS_BAR_NETWORK_TRAFFIC_STYLE"

    .line 491
    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 493
    iget-object v5, p0, Lcom/mi/a/StatusSettingActivity;->mStatusBarNetworkTraffic:Landroid/preference/ListPreference;

    .line 494
    iget-object v7, p0, Lcom/mi/a/StatusSettingActivity;->mStatusBarNetworkTraffic:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v5, v6

    .line 578
    .end local v2    # "index":I
    .end local v4    # "networkTrafficStyle":I
    :goto_0
    return v5

    .line 499
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const-string v5, "status_doubleclick"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, p2

    .line 500
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 501
    .local v1, "doubleStyle":I
    iget-object v5, p0, Lcom/mi/a/StatusSettingActivity;->mStatus_Double:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 502
    .restart local v2    # "index":I
    invoke-virtual {p0}, Lcom/mi/a/StatusSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 503
    const-string v7, "status_doubleclick"

    .line 502
    invoke-static {v5, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 504
    iget-object v5, p0, Lcom/mi/a/StatusSettingActivity;->mStatus_Double:Landroid/preference/ListPreference;

    .line 505
    iget-object v7, p0, Lcom/mi/a/StatusSettingActivity;->mStatus_Double:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v5, v6

    .line 506
    goto :goto_0

    .line 511
    .end local v1    # "doubleStyle":I
    .end local v2    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v5, "status_Longclick"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, p2

    .line 513
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 514
    .local v0, "ClickactionStyle":I
    iget-object v5, p0, Lcom/mi/a/StatusSettingActivity;->mStatusLongPressClick:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 515
    .restart local v2    # "index":I
    invoke-virtual {p0}, Lcom/mi/a/StatusSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 516
    const-string v7, "status_LongPress"

    .line 515
    invoke-static {v5, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 517
    iget-object v5, p0, Lcom/mi/a/StatusSettingActivity;->mStatusLongPressClick:Landroid/preference/ListPreference;

    .line 518
    iget-object v7, p0, Lcom/mi/a/StatusSettingActivity;->mStatusLongPressClick:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v5, v6

    .line 519
    goto :goto_0

    .line 523
    .end local v0    # "ClickactionStyle":I
    .end local v2    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string v5, "status_style"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, p2

    .line 525
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 526
    .restart local v0    # "ClickactionStyle":I
    iget-object v5, p0, Lcom/mi/a/StatusSettingActivity;->mStatusstyle:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 527
    .restart local v2    # "index":I
    invoke-virtual {p0}, Lcom/mi/a/StatusSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 528
    const-string v7, "status_style"

    .line 527
    invoke-static {v5, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 529
    iget-object v5, p0, Lcom/mi/a/StatusSettingActivity;->mStatusstyle:Landroid/preference/ListPreference;

    .line 530
    iget-object v7, p0, Lcom/mi/a/StatusSettingActivity;->mStatusstyle:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 532
    packed-switch v2, :pswitch_data_0

    move v5, v6

    .line 574
    goto/16 :goto_0

    .line 534
    :pswitch_0
    const-string v5, "mount -o rw,remount /system"

    invoke-static {v5}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 540
    const-string v5, "cd /system/vendor/pixle/systemui/left/priv-app/SystemUI \n zip /system/priv-app/MiuiSystemUI.apk res/layout/*"

    invoke-static {v5}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 543
    const-string v5, "busybox killall com.android.systemui"

    invoke-static {v5}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    move v5, v6

    .line 544
    goto/16 :goto_0

    .line 548
    :pswitch_1
    const-string v5, "mount -o rw,remount /system"

    invoke-static {v5}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 553
    const-string v5, "cd /system/vendor/pixle/systemui/center/priv-app/SystemUI \n zip /system/priv-app/MiuiSystemUI.apk res/layout/*"

    invoke-static {v5}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 555
    const-string v5, "busybox killall com.android.systemui"

    invoke-static {v5}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    move v5, v6

    .line 557
    goto/16 :goto_0

    .line 578
    .end local v0    # "ClickactionStyle":I
    .end local v2    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 284
    iget-object v1, p0, Lcom/mi/a/StatusSettingActivity;->mshak:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 286
    iget-object v1, p0, Lcom/mi/a/StatusSettingActivity;->mshak:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/mi/a/StatusSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "shake_wake"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 480
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/mi/a/StatusSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "shake_wake"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/mi/a/StatusSettingActivity;->mBattery:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "batterychangge"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mi/a/StatusSettingActivity;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    invoke-virtual {p0}, Lcom/mi/a/StatusSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 302
    const-string v2, "batteryshow"

    .line 301
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    const-string v1, "batteryinfo"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mi/a/StatusSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 308
    :cond_3
    invoke-virtual {p0}, Lcom/mi/a/StatusSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 309
    const-string v2, "batteryshow"

    .line 308
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 310
    const-string v1, "batteryinfo"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 371
    .end local v0    # "it":Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/mi/a/StatusSettingActivity;->mStatus_bright:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 373
    iget-object v1, p0, Lcom/mi/a/StatusSettingActivity;->mStatus_bright:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 374
    invoke-virtual {p0}, Lcom/mi/a/StatusSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_brightness"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 378
    :cond_5
    invoke-virtual {p0}, Lcom/mi/a/StatusSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_brightness"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 386
    :cond_6
    iget-object v1, p0, Lcom/mi/a/StatusSettingActivity;->mStatusBatteryLine:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_8

    .line 388
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mistyrain.showbatteryline"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .restart local v0    # "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mi/a/StatusSettingActivity;->mStatusBatteryLine:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 391
    invoke-virtual {p0}, Lcom/mi/a/StatusSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 392
    const-string v2, "batteryshow"

    .line 391
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    const-string v1, "showbatteryline"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mi/a/StatusSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 397
    :cond_7
    invoke-virtual {p0}, Lcom/mi/a/StatusSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 398
    const-string v2, "batteryshow"

    .line 397
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    const-string v1, "showbatteryline"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 406
    .end local v0    # "it":Landroid/content/Intent;
    :cond_8
    iget-object v1, p0, Lcom/mi/a/StatusSettingActivity;->mStatus_batteryline_pro:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_0

    .line 408
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mi/a/Status_BatteryLine_Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    .restart local v0    # "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mi/a/StatusSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public rebootdialog()V
    .locals 4

    .prologue
    .line 583
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 584
    const-string v2, "\u7acb\u5373\u91cd\u542f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 586
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/mi/a/StatusSettingActivity$2;

    invoke-direct {v3, p0}, Lcom/mi/a/StatusSettingActivity$2;-><init>(Lcom/mi/a/StatusSettingActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 599
    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/mi/a/StatusSettingActivity$3;

    invoke-direct {v3, p0}, Lcom/mi/a/StatusSettingActivity$3;-><init>(Lcom/mi/a/StatusSettingActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 606
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 607
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 609
    return-void
.end method
