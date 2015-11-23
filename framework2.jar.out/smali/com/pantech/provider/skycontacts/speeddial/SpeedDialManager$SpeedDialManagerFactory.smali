.class public Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager$SpeedDialManagerFactory;
.super Ljava/lang/Object;
.source "SpeedDialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeedDialManagerFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/ContentResolver;)Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 51
    const-string v0, "63"

    invoke-static {v0}, Lcom/pantech/provider/skycontacts/DeviceInfo;->equalsOrNextGroup(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pantech/provider/skycontacts/speeddial/CloseToPeopleSpeedDialManagerImpl;

    invoke-direct {v0, p0}, Lcom/pantech/provider/skycontacts/speeddial/CloseToPeopleSpeedDialManagerImpl;-><init>(Landroid/content/ContentResolver;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;

    invoke-direct {v0, p0}, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;-><init>(Landroid/content/ContentResolver;)V

    goto :goto_0
.end method
