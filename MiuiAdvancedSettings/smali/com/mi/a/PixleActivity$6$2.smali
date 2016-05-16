.class Lcom/mi/a/PixleActivity$6$2;
.super Ljava/lang/Object;
.source "PixleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/a/PixleActivity$6;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/a/PixleActivity$6;


# direct methods
.method constructor <init>(Lcom/mi/a/PixleActivity$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mi/a/PixleActivity$6$2;->this$1:Lcom/mi/a/PixleActivity$6;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "paramAnonymous2DialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "paramAnonymous2Int"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcom/mi/a/PixleActivity$6$2;->this$1:Lcom/mi/a/PixleActivity$6;

    # getter for: Lcom/mi/a/PixleActivity$6;->this$0:Lcom/mi/a/PixleActivity;
    invoke-static {v0}, Lcom/mi/a/PixleActivity$6;->access$0(Lcom/mi/a/PixleActivity$6;)Lcom/mi/a/PixleActivity;

    move-result-object v0

    iget v0, v0, Lcom/mi/a/PixleActivity;->item_DIP:I

    packed-switch v0, :pswitch_data_0

    .line 456
    :goto_0
    return-void

    .line 421
    :pswitch_0
    iget-object v0, p0, Lcom/mi/a/PixleActivity$6$2;->this$1:Lcom/mi/a/PixleActivity$6;

    # getter for: Lcom/mi/a/PixleActivity$6;->this$0:Lcom/mi/a/PixleActivity;
    invoke-static {v0}, Lcom/mi/a/PixleActivity$6;->access$0(Lcom/mi/a/PixleActivity$6;)Lcom/mi/a/PixleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/a/PixleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dpi"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    const-string v0, "mount -o rw,remount /system"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 424
    const-string v0, "cp /system/vendor/pixle/500/build.prop /system/"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 426
    const-string v0, "reboot"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    goto :goto_0

    .line 428
    :pswitch_1
    iget-object v0, p0, Lcom/mi/a/PixleActivity$6$2;->this$1:Lcom/mi/a/PixleActivity$6;

    # getter for: Lcom/mi/a/PixleActivity$6;->this$0:Lcom/mi/a/PixleActivity;
    invoke-static {v0}, Lcom/mi/a/PixleActivity$6;->access$0(Lcom/mi/a/PixleActivity$6;)Lcom/mi/a/PixleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/a/PixleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dpi"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 429
    const-string v0, "mount -o rw,remount /system"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 430
    const-string v0, "cp /system/vendor/pixle/480/build.prop /system/"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 432
    const-string v0, "reboot"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    goto :goto_0

    .line 434
    :pswitch_2
    iget-object v0, p0, Lcom/mi/a/PixleActivity$6$2;->this$1:Lcom/mi/a/PixleActivity$6;

    # getter for: Lcom/mi/a/PixleActivity$6;->this$0:Lcom/mi/a/PixleActivity;
    invoke-static {v0}, Lcom/mi/a/PixleActivity$6;->access$0(Lcom/mi/a/PixleActivity$6;)Lcom/mi/a/PixleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/a/PixleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dpi"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    const-string v0, "mount -o rw,remount /system"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 436
    const-string v0, "cp /system/vendor/pixle/460/build.prop /system/"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 438
    const-string v0, "reboot"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    goto :goto_0

    .line 441
    :pswitch_3
    iget-object v0, p0, Lcom/mi/a/PixleActivity$6$2;->this$1:Lcom/mi/a/PixleActivity$6;

    # getter for: Lcom/mi/a/PixleActivity$6;->this$0:Lcom/mi/a/PixleActivity;
    invoke-static {v0}, Lcom/mi/a/PixleActivity$6;->access$0(Lcom/mi/a/PixleActivity$6;)Lcom/mi/a/PixleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/a/PixleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dpi"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 442
    const-string v0, "mount -o rw,remount /system"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 443
    const-string v0, "cp /system/vendor/pixle/440/build.prop /system/"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 445
    const-string v0, "reboot"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    goto :goto_0

    .line 448
    :pswitch_4
    iget-object v0, p0, Lcom/mi/a/PixleActivity$6$2;->this$1:Lcom/mi/a/PixleActivity$6;

    # getter for: Lcom/mi/a/PixleActivity$6;->this$0:Lcom/mi/a/PixleActivity;
    invoke-static {v0}, Lcom/mi/a/PixleActivity$6;->access$0(Lcom/mi/a/PixleActivity$6;)Lcom/mi/a/PixleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/a/PixleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dpi"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 449
    const-string v0, "mount -o rw,remount /system"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 450
    const-string v0, "cp /system/vendor/pixle/420/build.prop /system/"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 452
    const-string v0, "reboot"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
