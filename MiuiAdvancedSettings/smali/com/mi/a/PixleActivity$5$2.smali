.class Lcom/mi/a/PixleActivity$5$2;
.super Ljava/lang/Object;
.source "PixleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/a/PixleActivity$5;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/a/PixleActivity$5;


# direct methods
.method constructor <init>(Lcom/mi/a/PixleActivity$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mi/a/PixleActivity$5$2;->this$1:Lcom/mi/a/PixleActivity$5;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "paramAnonymous2DialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "paramAnonymous2Int"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mi/a/PixleActivity$5$2;->this$1:Lcom/mi/a/PixleActivity$5;

    # getter for: Lcom/mi/a/PixleActivity$5;->this$0:Lcom/mi/a/PixleActivity;
    invoke-static {v0}, Lcom/mi/a/PixleActivity$5;->access$0(Lcom/mi/a/PixleActivity$5;)Lcom/mi/a/PixleActivity;

    move-result-object v0

    iget v0, v0, Lcom/mi/a/PixleActivity;->item:I

    packed-switch v0, :pswitch_data_0

    .line 386
    :goto_0
    return-void

    .line 347
    :pswitch_0
    const-string v0, "mount -o rw,remount /system"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 348
    const-string v0, "cp /system/vendor/pixle/com.miui.home44 /system/media/theme/default/com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 349
    const-string v0, "chmod -R 0644 /system/media/theme/default/com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 350
    const-string v0, "busybox killall com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 351
    iget-object v0, p0, Lcom/mi/a/PixleActivity$5$2;->this$1:Lcom/mi/a/PixleActivity$5;

    # getter for: Lcom/mi/a/PixleActivity$5;->this$0:Lcom/mi/a/PixleActivity;
    invoke-static {v0}, Lcom/mi/a/PixleActivity$5;->access$0(Lcom/mi/a/PixleActivity$5;)Lcom/mi/a/PixleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/a/PixleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 354
    :pswitch_1
    const-string v0, "mount -o rw,remount /system"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 355
    const-string v0, "rm -rf /system/media/theme/default/com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 356
    const-string v0, "busybox killall com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 357
    iget-object v0, p0, Lcom/mi/a/PixleActivity$5$2;->this$1:Lcom/mi/a/PixleActivity$5;

    # getter for: Lcom/mi/a/PixleActivity$5;->this$0:Lcom/mi/a/PixleActivity;
    invoke-static {v0}, Lcom/mi/a/PixleActivity$5;->access$0(Lcom/mi/a/PixleActivity$5;)Lcom/mi/a/PixleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/a/PixleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 360
    :pswitch_2
    const-string v0, "mount -o rw,remount /system"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 361
    const-string v0, "cp /system/vendor/pixle/com.miui.home46 /system/media/theme/default/com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 362
    const-string v0, "chmod -R 0644 /system/media/theme/default/com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 363
    const-string v0, "busybox killall com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 364
    iget-object v0, p0, Lcom/mi/a/PixleActivity$5$2;->this$1:Lcom/mi/a/PixleActivity$5;

    # getter for: Lcom/mi/a/PixleActivity$5;->this$0:Lcom/mi/a/PixleActivity;
    invoke-static {v0}, Lcom/mi/a/PixleActivity$5;->access$0(Lcom/mi/a/PixleActivity$5;)Lcom/mi/a/PixleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/a/PixleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 367
    :pswitch_3
    const-string v0, "mount -o rw,remount /system"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 368
    const-string v0, "cp /system/vendor/pixle/com.miui.home54 /system/media/theme/default/com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 369
    const-string v0, "chmod -R 0644 /system/media/theme/default/com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 370
    const-string v0, "busybox killall com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 371
    iget-object v0, p0, Lcom/mi/a/PixleActivity$5$2;->this$1:Lcom/mi/a/PixleActivity$5;

    # getter for: Lcom/mi/a/PixleActivity$5;->this$0:Lcom/mi/a/PixleActivity;
    invoke-static {v0}, Lcom/mi/a/PixleActivity$5;->access$0(Lcom/mi/a/PixleActivity$5;)Lcom/mi/a/PixleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/a/PixleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 374
    :pswitch_4
    const-string v0, "mount -o rw,remount /system"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 375
    const-string v0, "cp /system/vendor/pixle/com.miui.home55 /system/media/theme/default/com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 376
    const-string v0, "chmod -R 0644 /system/media/theme/default/com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 377
    const-string v0, "busybox killall com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 378
    iget-object v0, p0, Lcom/mi/a/PixleActivity$5$2;->this$1:Lcom/mi/a/PixleActivity$5;

    # getter for: Lcom/mi/a/PixleActivity$5;->this$0:Lcom/mi/a/PixleActivity;
    invoke-static {v0}, Lcom/mi/a/PixleActivity$5;->access$0(Lcom/mi/a/PixleActivity$5;)Lcom/mi/a/PixleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/a/PixleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 381
    :pswitch_5
    const-string v0, "mount -o rw,remount /system"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 382
    const-string v0, "cp /system/vendor/pixle/com.miui.home56 /system/media/theme/default/com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 383
    const-string v0, "chmod -R 0644 /system/media/theme/default/com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 384
    const-string v0, "busybox killall com.miui.home"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    .line 385
    iget-object v0, p0, Lcom/mi/a/PixleActivity$5$2;->this$1:Lcom/mi/a/PixleActivity$5;

    # getter for: Lcom/mi/a/PixleActivity$5;->this$0:Lcom/mi/a/PixleActivity;
    invoke-static {v0}, Lcom/mi/a/PixleActivity$5;->access$0(Lcom/mi/a/PixleActivity$5;)Lcom/mi/a/PixleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/a/PixleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
