.class Lcom/mi/a/DpiSettings$1;
.super Ljava/lang/Object;
.source "DpiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/a/DpiSettings;->Dpi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/a/DpiSettings;


# direct methods
.method constructor <init>(Lcom/mi/a/DpiSettings;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mi/a/DpiSettings$1;->this$0:Lcom/mi/a/DpiSettings;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "paramAnonymousPreference"    # Landroid/preference/Preference;
    .param p2, "paramAnonymousObject"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 41
    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    .line 42
    .local v5, "str":Ljava/lang/String;
    iget-object v8, p0, Lcom/mi/a/DpiSettings$1;->this$0:Lcom/mi/a/DpiSettings;

    # getter for: Lcom/mi/a/DpiSettings;->mCurrentDPI:Ljava/lang/String;
    invoke-static {v8}, Lcom/mi/a/DpiSettings;->access$0(Lcom/mi/a/DpiSettings;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 74
    :goto_0
    return v6

    .line 46
    :cond_0
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 47
    .local v1, "i":I
    const/16 v8, 0x64

    if-lt v1, v8, :cond_1

    const/16 v8, 0x21c

    if-le v1, v8, :cond_2

    .line 48
    :cond_1
    iget-object v6, p0, Lcom/mi/a/DpiSettings$1;->this$0:Lcom/mi/a/DpiSettings;

    const-string v8, "\u8bf7\u8f93\u5165100\u5230540\u4e4b\u95f4\u7684\u6570\u5b57"

    .line 49
    const/4 v9, 0x0

    .line 48
    invoke-static {v6, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 49
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 50
    goto :goto_0

    .line 52
    .end local v1    # "i":I
    :catch_0
    move-exception v4

    .local v4, "localNumberFormatException":Ljava/lang/NumberFormatException;
    move v6, v7

    .line 53
    goto :goto_0

    .line 55
    .end local v4    # "localNumberFormatException":Ljava/lang/NumberFormatException;
    .restart local v1    # "i":I
    :cond_2
    const-string v7, "mount -o rw,remount /system"

    invoke-static {v7}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 58
    const-wide/16 v7, 0xfa

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 59
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Object;

    .line 60
    .local v0, "arrayOfObject":[Ljava/lang/Object;
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mi/a/DpiSettings$1;->this$0:Lcom/mi/a/DpiSettings;

    # getter for: Lcom/mi/a/DpiSettings;->mCurrentDPI:Ljava/lang/String;
    invoke-static {v8}, Lcom/mi/a/DpiSettings;->access$0(Lcom/mi/a/DpiSettings;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 61
    const/4 v7, 0x1

    aput-object v5, v0, v7

    .line 63
    const-string v7, "busybox sed -i \'s/ro.sf.lcd_density = %s/ro.sf.lcd_density = %s/g\' /system/build.prop\n"

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 62
    invoke-static {v7}, Lcom/mi/a/Rootcommands;->runRootCommandT(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    const-string v7, "cat /system/build.prop | busybox grep \"ro.sf.lcd_density\"\n"

    .line 65
    invoke-static {v7}, Lcom/mi/a/Rootcommands;->runRootCommandT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 68
    iget-object v7, p0, Lcom/mi/a/DpiSettings$1;->this$0:Lcom/mi/a/DpiSettings;

    invoke-static {v7, v5}, Lcom/mi/a/DpiSettings;->access$1(Lcom/mi/a/DpiSettings;Ljava/lang/String;)V

    .line 69
    iget-object v7, p0, Lcom/mi/a/DpiSettings$1;->this$0:Lcom/mi/a/DpiSettings;

    const-string v8, "\u6210\u529f\uff0c\u624b\u52a8\u91cd\u542f\u751f\u6548"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 70
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 72
    :cond_3
    iget-object v7, p0, Lcom/mi/a/DpiSettings$1;->this$0:Lcom/mi/a/DpiSettings;

    # getter for: Lcom/mi/a/DpiSettings;->mDensity:Landroid/preference/EditTextPreference;
    invoke-static {v7}, Lcom/mi/a/DpiSettings;->access$2(Lcom/mi/a/DpiSettings;)Landroid/preference/EditTextPreference;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u5f53\u524ddpi\u4e3a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v9, p0, Lcom/mi/a/DpiSettings$1;->this$0:Lcom/mi/a/DpiSettings;

    # getter for: Lcom/mi/a/DpiSettings;->mCurrentDPI:Ljava/lang/String;
    invoke-static {v9}, Lcom/mi/a/DpiSettings;->access$0(Lcom/mi/a/DpiSettings;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 72
    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 75
    .end local v0    # "arrayOfObject":[Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 77
    .local v2, "localIOException":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 79
    .end local v2    # "localIOException":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 81
    .local v3, "localInterruptedException":Ljava/lang/InterruptedException;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
