.class public Lcom/makelove/settings/MainActivity;
.super Lmiui/preference/PreferenceActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/makelove/settings/MainActivity$100000000;,
        Lcom/makelove/settings/MainActivity$100000001;
    }
.end annotation


# static fields
.field private static final yss:Ljava/lang/String;


# instance fields
.field getVersion:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static runShell(Ljava/lang/String;)Ljava/lang/Process;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    move-object v2, v5

    .line 68
    new-instance v5, Ljava/io/DataOutputStream;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v5

    .line 69
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 70
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 71
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 72
    move-object v5, v2

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    const-string v8, "com.aide.ui"

    invoke-static {v7, v8}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    move-object v7, v0

    const/high16 v8, 0x7f040000

    invoke-virtual {v7, v8}, Lcom/makelove/settings/MainActivity;->addPreferencesFromResource(I)V

    .line 21
    move-object v7, v0

    move-object v8, v0

    const-string v9, "version"

    invoke-virtual {v8, v9}, Lcom/makelove/settings/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, v7, Lcom/makelove/settings/MainActivity;->getVersion:Landroid/preference/Preference;

    .line 24
    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Lcom/makelove/settings/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object v3, v7

    .line 25
    move-object v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Lcom/makelove/settings/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    move-object v4, v7

    .line 26
    move-object v7, v4

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v5, v7

    .line 27
    move-object v7, v0

    iget-object v7, v7, Lcom/makelove/settings/MainActivity;->getVersion:Landroid/preference/Preference;

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "\u5f53\u524d\u7248\u672c"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    move-object v3, v7

    goto :goto_0
.end method
