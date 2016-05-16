.class public Lcom/mi/a/DpiSettings;
.super Lmiui/preference/PreferenceActivity;
.source "DpiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mCurrentDPI:Ljava/lang/String;

.field private mDensity:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/mi/a/DpiSettings;->mCurrentDPI:Ljava/lang/String;

    .line 13
    return-void
.end method

.method private Dpi()V
    .locals 4

    .prologue
    .line 28
    const-string v1, "lcd_density_prefs_key"

    invoke-virtual {p0, v1}, Lcom/mi/a/DpiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/mi/a/DpiSettings;->mDensity:Landroid/preference/EditTextPreference;

    .line 30
    :try_start_0
    const-string v1, "cat /system/build.prop | busybox grep \"ro.sf.lcd_density\" | busybox sed \'s/ro.sf.lcd_density = //g\'\n"

    invoke-static {v1}, Lcom/mi/a/Rootcommands;->runRootCommandT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/a/DpiSettings;->mCurrentDPI:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcom/mi/a/DpiSettings;->mDensity:Landroid/preference/EditTextPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setPersistent(Z)V

    .line 32
    iget-object v1, p0, Lcom/mi/a/DpiSettings;->mDensity:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/mi/a/DpiSettings;->mCurrentDPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/mi/a/DpiSettings;->mDensity:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/mi/a/DpiSettings;->mCurrentDPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 34
    iget-object v1, p0, Lcom/mi/a/DpiSettings;->mDensity:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->toString()Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/mi/a/DpiSettings;->mDensity:Landroid/preference/EditTextPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5f53\u524ddpi\u4e3a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/a/DpiSettings;->mCurrentDPI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v1, p0, Lcom/mi/a/DpiSettings;->mDensity:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/mi/a/DpiSettings$1;

    invoke-direct {v2, p0}, Lcom/mi/a/DpiSettings$1;-><init>(Lcom/mi/a/DpiSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "localIOException":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mi/a/DpiSettings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mi/a/DpiSettings;->mCurrentDPI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mi/a/DpiSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/mi/a/DpiSettings;->mCurrentDPI:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/mi/a/DpiSettings;)Landroid/preference/EditTextPreference;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mi/a/DpiSettings;->mDensity:Landroid/preference/EditTextPreference;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/mi/a/DpiSettings;->addPreferencesFromResource(I)V

    .line 23
    invoke-direct {p0}, Lcom/mi/a/DpiSettings;->Dpi()V

    .line 25
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method
