.class public Lcom/mi/a/Status_BatteryLine_Activity;
.super Landroid/preference/PreferenceActivity;
.source "Status_BatteryLine_Activity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field mColor:Landroid/preference/ListPreference;

.field mHeight:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v2, 0x7f040003

    invoke-virtual {p0, v2}, Lcom/mi/a/Status_BatteryLine_Activity;->addPreferencesFromResource(I)V

    .line 25
    const-string v2, "batteryline_color_list"

    invoke-virtual {p0, v2}, Lcom/mi/a/Status_BatteryLine_Activity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mColor:Landroid/preference/ListPreference;

    .line 26
    invoke-virtual {p0}, Lcom/mi/a/Status_BatteryLine_Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "status_batteryline_color_item"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 27
    .local v0, "m":I
    iget-object v2, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mColor:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 28
    iget-object v2, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mColor:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mColor:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v2, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mColor:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 32
    const-string v2, "batteryline_height_list"

    invoke-virtual {p0, v2}, Lcom/mi/a/Status_BatteryLine_Activity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mHeight:Landroid/preference/ListPreference;

    .line 33
    invoke-virtual {p0}, Lcom/mi/a/Status_BatteryLine_Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "status_batteryline_width_item"

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 34
    .local v1, "n":I
    iget-object v2, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mHeight:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mHeight:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mHeight:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v2, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mHeight:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 42
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 52
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "key":Ljava/lang/String;
    const-string v4, "batteryline_height_list"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p2

    .line 57
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 61
    .local v0, "ClickactionStyle":I
    iget-object v4, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mHeight:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 62
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/mi/a/Status_BatteryLine_Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 63
    const-string v6, "status_batteryline_width_item"

    .line 62
    invoke-static {v4, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    invoke-virtual {p0}, Lcom/mi/a/Status_BatteryLine_Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 65
    const-string v6, "status_batteryline_width"

    int-to-float v7, v0

    .line 64
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 66
    iget-object v4, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mHeight:Landroid/preference/ListPreference;

    .line 67
    iget-object v6, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mHeight:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v2, Landroid/content/Intent;

    const-string v4, "mistyrain.batterylinechange"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, "it":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/mi/a/Status_BatteryLine_Activity;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 121
    .end local v0    # "ClickactionStyle":I
    .end local v1    # "index":I
    .end local v2    # "it":Landroid/content/Intent;
    :goto_0
    return v4

    .line 76
    .restart local p2    # "arg1":Ljava/lang/Object;
    :cond_0
    const-string v4, "batteryline_color_list"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    iget-object v6, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mColor:Landroid/preference/ListPreference;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 79
    .restart local v0    # "ClickactionStyle":I
    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_1
    iget-object v4, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mColor:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 109
    .restart local v1    # "index":I
    invoke-virtual {p0}, Lcom/mi/a/Status_BatteryLine_Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 110
    const-string v6, "status_batteryline_color_item"

    .line 109
    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    invoke-virtual {p0}, Lcom/mi/a/Status_BatteryLine_Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 112
    const-string v6, "status_batteryline_color"

    .line 111
    invoke-static {v4, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    iget-object v4, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mColor:Landroid/preference/ListPreference;

    .line 114
    iget-object v6, p0, Lcom/mi/a/Status_BatteryLine_Activity;->mColor:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v2, Landroid/content/Intent;

    const-string v4, "mistyrain.batterylinechange"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v2    # "it":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/mi/a/Status_BatteryLine_Activity;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 117
    goto :goto_0

    .line 81
    .end local v1    # "index":I
    .end local v2    # "it":Landroid/content/Intent;
    .restart local p2    # "arg1":Ljava/lang/Object;
    :pswitch_0
    const v0, -0xff0100

    .line 82
    goto :goto_1

    .line 84
    :pswitch_1
    const/16 v0, -0x100

    .line 85
    goto :goto_1

    .line 87
    :pswitch_2
    const v0, -0xffff01

    .line 88
    goto :goto_1

    .line 90
    :pswitch_3
    const/high16 v0, -0x10000

    .line 91
    goto :goto_1

    .line 93
    :pswitch_4
    const/4 v0, -0x1

    .line 94
    goto :goto_1

    .line 96
    :pswitch_5
    const/high16 v0, -0x1000000

    .line 97
    goto :goto_1

    .line 99
    :pswitch_6
    const v0, -0x777778

    .line 100
    goto :goto_1

    .line 121
    .end local v0    # "ClickactionStyle":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
