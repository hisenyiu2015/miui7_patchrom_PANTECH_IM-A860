.class Lcom/android/server/SecureHoldResetObserver;
.super Landroid/os/UEventObserver;
.source "SecureHoldResetObserver.java"


# static fields
.field private static final LOG:Z = true

.field private static final SECUREHOLD_RESET_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sky/apr"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/server/SecureHoldResetObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SecureHoldResetObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/server/SecureHoldResetObserver;->mContext:Landroid/content/Context;

    .line 26
    const-string v0, "DEVPATH=/devices/virtual/sky/apr"

    invoke-virtual {p0, v0}, Lcom/android/server/SecureHoldResetObserver;->startObserving(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 31
    sget-object v0, Lcom/android/server/SecureHoldResetObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecureHoldResetObserver UEVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/android/server/SecureHoldResetObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->secureHoldReset_sky(Landroid/content/Context;)V

    .line 33
    return-void
.end method
