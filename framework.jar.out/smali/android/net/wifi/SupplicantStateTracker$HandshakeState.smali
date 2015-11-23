.class Landroid/net/wifi/SupplicantStateTracker$HandshakeState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandshakeState"
.end annotation


# static fields
.field private static final MAX_SUPPLICANT_LOOP_ITERATIONS:I = 0x4


# instance fields
.field private mLoopDetectCount:I

.field private mLoopDetectIndex:I

.field final synthetic this$0:Landroid/net/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/SupplicantStateTracker;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 355
    iput v0, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    .line 356
    iput v0, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    .line 357
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 361
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 386
    :cond_0
    :goto_0
    return v2

    .line 363
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/StateChangeResult;

    .line 364
    .local v1, "stateChangeResult":Landroid/net/wifi/StateChangeResult;
    iget-object v0, v1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 365
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    iget v2, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 367
    iget v2, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    .line 369
    :cond_1
    iget v2, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    .line 370
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supplicant loop detected, disabling network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget v3, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    const/4 v4, 0x3

    # invokes: Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V
    invoke-static {v2, v3, v4}, Landroid/net/wifi/SupplicantStateTracker;->access$1100(Landroid/net/wifi/SupplicantStateTracker;II)V

    .line 375
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    .line 376
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$100(Landroid/net/wifi/SupplicantStateTracker;)Z

    move-result v3

    # invokes: Landroid/net/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    invoke-static {v2, v0, v3}, Landroid/net/wifi/SupplicantStateTracker;->access$200(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 386
    const/4 v2, 0x1

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x24006
        :pswitch_0
    .end packed-switch
.end method
