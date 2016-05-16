.class Lcom/mi/a/PixleActivity$2$2;
.super Ljava/lang/Object;
.source "PixleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/a/PixleActivity$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/a/PixleActivity$2;


# direct methods
.method constructor <init>(Lcom/mi/a/PixleActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mi/a/PixleActivity$2$2;->this$1:Lcom/mi/a/PixleActivity$2;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mi/a/PixleActivity$2$2;->this$1:Lcom/mi/a/PixleActivity$2;

    iget v0, v0, Lcom/mi/a/PixleActivity$2;->item:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 132
    :pswitch_0
    const-string v0, "reboot"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    goto :goto_0

    .line 137
    :pswitch_1
    const-string v0, "reboot recovery"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    goto :goto_0

    .line 142
    :pswitch_2
    const-string v0, "reboot bootloader"

    invoke-static {v0}, Lcom/mi/a/Rootcommands;->runRootCommand(Ljava/lang/String;)Z

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
