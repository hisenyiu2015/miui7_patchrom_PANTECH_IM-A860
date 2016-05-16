.class public Lcom/mi/a/StatuskeyActivity;
.super Landroid/preference/PreferenceActivity;
.source "StatuskeyActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field mKeyOpen:Landroid/preference/CheckBoxPreference;

.field mKeyfaction:Landroid/preference/ListPreference;

.field mKeyfaction_Longpress:Landroid/preference/ListPreference;

.field mKeyposition:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/mi/a/StatuskeyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_key_faction_list"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 59
    .local v1, "m":I
    iget-object v3, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 60
    iget-object v3, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v3, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/mi/a/StatuskeyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_key_faction_long_list"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, "l":I
    iget-object v3, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction_Longpress:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction_Longpress:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction_Longpress:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction_Longpress:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/mi/a/StatuskeyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_key_site_list"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 70
    .local v2, "t":I
    iget-object v3, p0, Lcom/mi/a/StatuskeyActivity;->mKeyposition:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/mi/a/StatuskeyActivity;->mKeyposition:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/mi/a/StatuskeyActivity;->mKeyposition:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v3, p0, Lcom/mi/a/StatuskeyActivity;->mKeyposition:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/mi/a/StatuskeyActivity;->addPreferencesFromResource(I)V

    .line 44
    const-string v0, "status_key_site_list"

    invoke-virtual {p0, v0}, Lcom/mi/a/StatuskeyActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/mi/a/StatuskeyActivity;->mKeyposition:Landroid/preference/ListPreference;

    .line 45
    const-string v0, "status_key_faction_list"

    invoke-virtual {p0, v0}, Lcom/mi/a/StatuskeyActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction:Landroid/preference/ListPreference;

    .line 46
    const-string v0, "status_key_open"

    invoke-virtual {p0, v0}, Lcom/mi/a/StatuskeyActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mi/a/StatuskeyActivity;->mKeyOpen:Landroid/preference/CheckBoxPreference;

    .line 47
    const-string v0, "status_key_LongPress_faction_list"

    invoke-virtual {p0, v0}, Lcom/mi/a/StatuskeyActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction_Longpress:Landroid/preference/ListPreference;

    .line 49
    invoke-direct {p0}, Lcom/mi/a/StatuskeyActivity;->init()V

    .line 54
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 109
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "key":Ljava/lang/String;
    const-string v2, "status_key_faction_list"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v4, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction:Landroid/preference/ListPreference;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/mi/a/StatuskeyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 117
    const-string v5, "status_key_faction_list"

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 116
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    invoke-virtual {p0}, Lcom/mi/a/StatuskeyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 119
    const-string v4, "status_singleclick"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 118
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    iget-object v2, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction:Landroid/preference/ListPreference;

    .line 121
    iget-object v4, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 163
    .end local v0    # "index":I
    :goto_0
    return v2

    .line 129
    .restart local p2    # "arg1":Ljava/lang/Object;
    :cond_0
    const-string v2, "status_key_LongPress_faction_list"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    iget-object v4, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction_Longpress:Landroid/preference/ListPreference;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 133
    .restart local v0    # "index":I
    invoke-virtual {p0}, Lcom/mi/a/StatuskeyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 134
    const-string v5, "status_key_faction_long_list"

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 133
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    invoke-virtual {p0}, Lcom/mi/a/StatuskeyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 136
    const-string v4, "status_key_Longpress"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 135
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    iget-object v2, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction_Longpress:Landroid/preference/ListPreference;

    .line 138
    iget-object v4, p0, Lcom/mi/a/StatuskeyActivity;->mKeyfaction_Longpress:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 141
    goto :goto_0

    .line 146
    .end local v0    # "index":I
    .restart local p2    # "arg1":Ljava/lang/Object;
    :cond_1
    const-string v2, "status_key_site_list"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/mi/a/StatuskeyActivity;->mKeyposition:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 150
    .restart local v0    # "index":I
    invoke-virtual {p0}, Lcom/mi/a/StatuskeyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 151
    const-string v4, "status_key_site_list"

    .line 150
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    invoke-virtual {p0}, Lcom/mi/a/StatuskeyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 153
    const-string v4, "status_singleclick_site"

    .line 152
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    iget-object v2, p0, Lcom/mi/a/StatuskeyActivity;->mKeyposition:Landroid/preference/ListPreference;

    .line 155
    iget-object v4, p0, Lcom/mi/a/StatuskeyActivity;->mKeyposition:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v2, Landroid/content/Intent;

    const-string v4, "ANDROID.STATUS_SINGLECLICK_SITE_CHANGER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/mi/a/StatuskeyActivity;->sendBroadcast(Landroid/content/Intent;)V

    move v2, v3

    .line 157
    goto :goto_0

    .line 163
    .end local v0    # "index":I
    .restart local p2    # "arg1":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mi/a/StatuskeyActivity;->mKeyOpen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/mi/a/StatuskeyActivity;->mKeyOpen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/mi/a/StatuskeyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    const-string v1, "status_key_open"

    const/4 v2, 0x1

    .line 89
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ANDROID.STATUS_SINGLECLICK_OPEN_CHANGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mi/a/StatuskeyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/mi/a/StatuskeyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    const-string v1, "status_key_open"

    const/4 v2, 0x0

    .line 93
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
