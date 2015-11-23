.class Lcom/android/server/SafetyModeService$1;
.super Landroid/content/AsyncQueryHandler;
.source "SafetyModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SafetyModeService;->insertLocation(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SafetyModeService;


# direct methods
.method constructor <init>(Lcom/android/server/SafetyModeService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/ContentResolver;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/server/SafetyModeService$1;->this$0:Lcom/android/server/SafetyModeService;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 476
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 477
    return-void
.end method
