.class Lcom/android/server/DevicePolicyManagerService$6;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService;->stopPackageForGPS(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;)V
    .locals 0

    .prologue
    .line 6386
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$6;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6388
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$6;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # getter for: Lcom/android/server/DevicePolicyManagerService;->mGPSPkg:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DevicePolicyManagerService;->access$600(Lcom/android/server/DevicePolicyManagerService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6401
    :goto_0
    return-void

    .line 6391
    :cond_0
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$6;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 6392
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v2, "location_providers_allowed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6393
    .local v0, "allowedLocationProviders":Ljava/lang/String;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6396
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$6;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10402f4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 6400
    :cond_1
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$6;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/DevicePolicyManagerService;->mGPSPkg:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/DevicePolicyManagerService;->access$602(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
