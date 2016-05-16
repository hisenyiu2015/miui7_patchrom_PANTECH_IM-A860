.class public Lcom/deskangel/kblight/kbLight;
.super Lmiui/preference/PreferenceActivity;
.source "kbLight.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static mBkService:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/deskangel/kblight/kbLight;->mBkService:Landroid/content/Intent;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private registerCheckBoxChangeListener(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/deskangel/kblight/kbLight;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/deskangel/kblight/kbLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 31
    .local v0, "cbPref":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 35
    :cond_0
    return-void
.end method

.method private startBkService(Landroid/content/Context;)V
    .locals 3
    .param p1, "cntxt"    # Landroid/content/Context;

    .prologue
    .line 107
    sget-object v0, Lcom/deskangel/kblight/kbLight;->mBkService:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/deskangel/kblight/BkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/deskangel/kblight/kbLight;->mBkService:Landroid/content/Intent;

    .line 110
    sget-object v0, Lcom/deskangel/kblight/kbLight;->mBkService:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 112
    :cond_0
    return-void
.end method

.method private stopBkService(Landroid/content/Context;)V
    .locals 1
    .param p1, "cntxt"    # Landroid/content/Context;

    .prologue
    .line 116
    sget-object v0, Lcom/deskangel/kblight/kbLight;->mBkService:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/deskangel/kblight/kbLight;->mBkService:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/deskangel/kblight/kbLight;->mBkService:Landroid/content/Intent;

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/deskangel/kblight/kbLight;->addPreferencesFromResource(I)V

    .line 23
    const v0, 0x7f06001e

    invoke-direct {p0, v0}, Lcom/deskangel/kblight/kbLight;->registerCheckBoxChangeListener(I)V

    .line 24
    const v0, 0x7f060021

    invoke-direct {p0, v0}, Lcom/deskangel/kblight/kbLight;->registerCheckBoxChangeListener(I)V

    .line 25
    const v0, 0x7f060024

    invoke-direct {p0, v0}, Lcom/deskangel/kblight/kbLight;->registerCheckBoxChangeListener(I)V

    .line 26
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const v9, 0x7f060024

    const v8, 0x7f060021

    const v7, 0x7f06001e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "strPrefKey":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/deskangel/kblight/kbLight;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    new-instance v2, Lcom/deskangel/lights/LightsController;

    invoke-direct {v2}, Lcom/deskangel/lights/LightsController;-><init>()V

    .line 43
    .local v2, "lc":Lcom/deskangel/lights/LightsController;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    invoke-virtual {v2}, Lcom/deskangel/lights/LightsController;->lockOnButtonBkLight()V

    .line 48
    invoke-virtual {p0, v9}, Lcom/deskangel/kblight/kbLight;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/deskangel/kblight/kbLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 49
    .local v0, "cbPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 52
    invoke-virtual {p0, v8}, Lcom/deskangel/kblight/kbLight;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/deskangel/kblight/kbLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 53
    .local v1, "cbScreenOnPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-direct {p0, p0}, Lcom/deskangel/kblight/kbLight;->startBkService(Landroid/content/Context;)V

    .end local v0    # "cbPref":Landroid/preference/CheckBoxPreference;
    .end local v1    # "cbScreenOnPref":Landroid/preference/CheckBoxPreference;
    :cond_0
    :goto_0
    move v4, v6

    .line 102
    .end local v2    # "lc":Lcom/deskangel/lights/LightsController;
    :goto_1
    return v4

    .line 60
    .restart local v2    # "lc":Lcom/deskangel/lights/LightsController;
    :cond_1
    invoke-virtual {v2}, Lcom/deskangel/lights/LightsController;->unlockButtonBkLight()V

    .line 61
    invoke-direct {p0, p0}, Lcom/deskangel/kblight/kbLight;->stopBkService(Landroid/content/Context;)V

    goto :goto_0

    .line 66
    .end local v2    # "lc":Lcom/deskangel/lights/LightsController;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, v8}, Lcom/deskangel/kblight/kbLight;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 68
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    invoke-direct {p0, p0}, Lcom/deskangel/kblight/kbLight;->startBkService(Landroid/content/Context;)V

    :goto_2
    move v4, v6

    .line 79
    goto :goto_1

    .line 76
    :cond_3
    invoke-direct {p0, p0}, Lcom/deskangel/kblight/kbLight;->stopBkService(Landroid/content/Context;)V

    goto :goto_2

    .line 81
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0, v9}, Lcom/deskangel/kblight/kbLight;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 83
    new-instance v2, Lcom/deskangel/lights/LightsController;

    invoke-direct {v2}, Lcom/deskangel/lights/LightsController;-><init>()V

    .line 84
    .restart local v2    # "lc":Lcom/deskangel/lights/LightsController;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 86
    invoke-virtual {v2}, Lcom/deskangel/lights/LightsController;->lockOffButtonBkLight()V

    .line 89
    invoke-virtual {p0, v7}, Lcom/deskangel/kblight/kbLight;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/deskangel/kblight/kbLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 90
    .restart local v0    # "cbPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 93
    invoke-direct {p0, p0}, Lcom/deskangel/kblight/kbLight;->stopBkService(Landroid/content/Context;)V

    .end local v0    # "cbPref":Landroid/preference/CheckBoxPreference;
    :goto_3
    move v4, v6

    .line 100
    goto :goto_1

    .line 97
    :cond_5
    invoke-virtual {v2}, Lcom/deskangel/lights/LightsController;->unlockButtonBkLight()V

    goto :goto_3

    .end local v2    # "lc":Lcom/deskangel/lights/LightsController;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_6
    move v4, v5

    .line 102
    goto :goto_1
.end method
