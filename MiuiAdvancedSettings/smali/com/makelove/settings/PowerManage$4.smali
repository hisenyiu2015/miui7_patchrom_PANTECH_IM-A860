.class public Lcom/makelove/settings/PowerManage$4;
.super Landroid/app/Activity;
.source "PowerManage$4.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

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
    .line 34
    move-object v0, p0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    move-object v2, v5

    .line 35
    new-instance v5, Ljava/io/DataOutputStream;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v5

    .line 36
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 37
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 38
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 39
    move-object v5, v2

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method public fastbootConfirm(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    const-string v5, "reboot bootloader"

    invoke-static {v5}, Lcom/makelove/settings/PowerManage$4;->runShell(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 30
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/makelove/settings/PowerManage$4;->finish()V

    return-void

    .line 26
    :catch_0
    move-exception v5

    move-object v3, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "com.aide.ui"

    invoke-static {v3, v4}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    move-object v3, v0

    invoke-virtual {v3}, Lcom/makelove/settings/PowerManage$4;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 19
    move-object v3, v0

    invoke-virtual {v3}, Lcom/makelove/settings/PowerManage$4;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 20
    move-object v3, v0

    const v4, 0x7f030004

    invoke-virtual {v3, v4}, Lcom/makelove/settings/PowerManage$4;->setContentView(I)V

    return-void
.end method
