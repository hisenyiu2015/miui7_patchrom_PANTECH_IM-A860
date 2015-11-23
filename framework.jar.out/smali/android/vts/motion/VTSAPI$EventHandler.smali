.class Landroid/vts/motion/VTSAPI$EventHandler;
.super Landroid/os/Handler;
.source "VTSAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/vts/motion/VTSAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mVTSAPI:Landroid/vts/motion/VTSAPI;

.field final synthetic this$0:Landroid/vts/motion/VTSAPI;


# direct methods
.method public constructor <init>(Landroid/vts/motion/VTSAPI;Landroid/vts/motion/VTSAPI;Landroid/os/Looper;)V
    .locals 0
    .param p2, "vts"    # Landroid/vts/motion/VTSAPI;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 793
    iput-object p1, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    .line 794
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 795
    iput-object p2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->mVTSAPI:Landroid/vts/motion/VTSAPI;

    .line 796
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    .line 802
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x12c

    if-ne v2, v3, :cond_0

    .line 804
    const-string v2, "VTSAPI"

    const-string v3, "[EVT] VTS_LOOP_QUIT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 968
    :goto_0
    return-void

    .line 810
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 967
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[EVT] Unknown message (type)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 813
    :sswitch_0
    # getter for: Landroid/vts/motion/VTSAPI;->mVTSState:I
    invoke-static {}, Landroid/vts/motion/VTSAPI;->access$0()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 814
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[EVT] VTS_INIT_DONE : invalid state (state)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Landroid/vts/motion/VTSAPI;->mVTSState:I
    invoke-static {}, Landroid/vts/motion/VTSAPI;->access$0()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 818
    :cond_1
    invoke-static {v4}, Landroid/vts/motion/VTSAPI;->access$1(I)V

    .line 820
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnInitDoneListener:Landroid/vts/OnInitDoneListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$2(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnInitDoneListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 821
    const-string v2, "VTSAPI"

    const-string v3, "[EVT] VTS_INIT_DONE : mOnInitDoneListener.OnInitDone()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnInitDoneListener:Landroid/vts/OnInitDoneListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$2(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnInitDoneListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/vts/OnInitDoneListener;->OnInitDone()V

    goto :goto_0

    .line 824
    :cond_2
    const-string v2, "VTSAPI"

    const-string v3, "[EVT] VTS_INIT_DONE : mOnInitDoneListener is not REGISTERED!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 832
    :sswitch_1
    # getter for: Landroid/vts/motion/VTSAPI;->mVTSState:I
    invoke-static {}, Landroid/vts/motion/VTSAPI;->access$0()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 833
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[EVT] VTS_DETECTION_START : invalid state (state)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Landroid/vts/motion/VTSAPI;->mVTSState:I
    invoke-static {}, Landroid/vts/motion/VTSAPI;->access$0()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 837
    :cond_3
    const/4 v2, 0x4

    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$1(I)V

    .line 839
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnDetectionStartListener:Landroid/vts/OnDetectionStartListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$3(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnDetectionStartListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 840
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[EVT] VTS_DETECTION_START : mOnDetectionStartListener.OnDetectionStart() (cam)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnDetectionStartListener:Landroid/vts/OnDetectionStartListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$3(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnDetectionStartListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/vts/OnDetectionStartListener;->OnDetectionStart(I)V

    goto/16 :goto_0

    .line 843
    :cond_4
    const-string v2, "VTSAPI"

    const-string v3, "[EVT] VTS_DETECTION_START : mOnDetectionStartListener is not REGISTERED!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 850
    :sswitch_2
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnFPSChangeDetectedListener:Landroid/vts/OnFPSChangeDetectedListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$4(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnFPSChangeDetectedListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 852
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[EVT] VTS_FPS_CHANGE_DETECTED : mOnFPSChangeDetectedListener.OnFPSChangeDetected() (fps)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnFPSChangeDetectedListener:Landroid/vts/OnFPSChangeDetectedListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$4(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnFPSChangeDetectedListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/vts/OnFPSChangeDetectedListener;->OnFPSChangeDetected(I)V

    goto/16 :goto_0

    .line 859
    :cond_5
    const-string v2, "VTSAPI"

    const-string v3, "[EVT] VTS_FPS_CHANGE_DETECTED : mOnFPSChangeDetectedListener is not REGISTERED!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 868
    :sswitch_3
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnGestureDetectedListener:Landroid/vts/OnGestureDetectedListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$5(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnGestureDetectedListener;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 870
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[EVT] VTS_GESTURE_DETECTED : mOnGestureDetectedListener.OnGestureDetected() (gesture)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$6(Landroid/vts/motion/VTSAPI;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 875
    .local v0, "pm":Landroid/os/PowerManager;
    const v2, 0x3000001a

    .line 877
    const-string v3, "VTSAPI"

    .line 875
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 879
    .local v1, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 880
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnGestureDetectedListener:Landroid/vts/OnGestureDetectedListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$5(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnGestureDetectedListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/vts/OnGestureDetectedListener;->OnGestureDetected(I)V

    .line 881
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 885
    .end local v0    # "pm":Landroid/os/PowerManager;
    .end local v1    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_6
    const-string v2, "VTSAPI"

    const-string v3, "[EVT] VTS_GESTURE_DETECTED : mOnGestureDetectedListener is not REGISTERED!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 894
    :sswitch_4
    # getter for: Landroid/vts/motion/VTSAPI;->mVTSState:I
    invoke-static {}, Landroid/vts/motion/VTSAPI;->access$0()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    .line 896
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[EVT] VTS_DETECTION_STOP : invalid state (state)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Landroid/vts/motion/VTSAPI;->mVTSState:I
    invoke-static {}, Landroid/vts/motion/VTSAPI;->access$0()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 900
    :cond_7
    invoke-static {v4}, Landroid/vts/motion/VTSAPI;->access$1(I)V

    .line 902
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnDetectionStopListener:Landroid/vts/OnDetectionStopListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$7(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnDetectionStopListener;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 904
    const-string v2, "VTSAPI"

    const-string v3, "[EVT] VTS_DETECTION_STOP : mOnDetectionStopListener.OnDetectionStop()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnDetectionStopListener:Landroid/vts/OnDetectionStopListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$7(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnDetectionStopListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/vts/OnDetectionStopListener;->OnDetectionStop()V

    goto/16 :goto_0

    .line 909
    :cond_8
    const-string v2, "VTSAPI"

    const-string v3, "[EVT] VTS_DETECTION_STOP : mOnDetectionStopListener is not REGISTERED!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 917
    :sswitch_5
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnErrorDetectedListener:Landroid/vts/OnErrorDetectedListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$8(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnErrorDetectedListener;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 919
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[EVT] VTS_ERROR_DETECTED : mOnErrorDetectedListener.OnErrorDetected() (err)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/4 v2, 0x6

    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$1(I)V

    .line 924
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnErrorDetectedListener:Landroid/vts/OnErrorDetectedListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$8(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnErrorDetectedListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/vts/OnErrorDetectedListener;->OnErrorDetected(I)V

    goto/16 :goto_0

    .line 928
    :cond_9
    const-string v2, "VTSAPI"

    const-string v3, "[EVT] VTS_ERROR_DETECTED : mOnErrorDetectedListener is not REGISTERED!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 936
    :sswitch_6
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnStatusChangeDetectedListener:Landroid/vts/OnStatusChangeDetectedListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$9(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnStatusChangeDetectedListener;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 938
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[EVT] VTS_STATUS_CHANGE_DETECTED : mOnStatusChangeDetectedListener.OnStatusChangeDetected() (status)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnStatusChangeDetectedListener:Landroid/vts/OnStatusChangeDetectedListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$9(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnStatusChangeDetectedListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/vts/OnStatusChangeDetectedListener;->OnStatusChangeDetected(I)V

    goto/16 :goto_0

    .line 943
    :cond_a
    const-string v2, "VTSAPI"

    const-string v3, "[EVT] VTS_STATUS_CHANGE_DETECTED : mOnStatusChangeDetectedListener is not REGISTERED!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 952
    :sswitch_7
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnLUXChangeDetectedListener:Landroid/vts/OnLUXChangeDetectedListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$10(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnLUXChangeDetectedListener;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 954
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[EVT] VTS_LUX_CHANGE_DETECTED : mOnLUXChangeDetectedListener.OnLUXChangeDetected() (lux)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v2, p0, Landroid/vts/motion/VTSAPI$EventHandler;->this$0:Landroid/vts/motion/VTSAPI;

    # getter for: Landroid/vts/motion/VTSAPI;->mOnLUXChangeDetectedListener:Landroid/vts/OnLUXChangeDetectedListener;
    invoke-static {v2}, Landroid/vts/motion/VTSAPI;->access$10(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnLUXChangeDetectedListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/vts/OnLUXChangeDetectedListener;->OnLUXChangeDetected(I)V

    goto/16 :goto_0

    .line 959
    :cond_b
    const-string v2, "VTSAPI"

    const-string v3, "[EVT] VTS_LUX_CHANGE_DETECTED : mOnLUXChangeDetectedListener is not REGISTERED!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 810
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x64 -> :sswitch_5
        0xc8 -> :sswitch_6
        0xfa -> :sswitch_2
        0x104 -> :sswitch_7
    .end sparse-switch
.end method
