.class public interface abstract Landroid/vts/VTSAPIInterface;
.super Ljava/lang/Object;
.source "VTSAPIInterface.java"


# virtual methods
.method public abstract EnableDBGLog(Z)V
.end method

.method public abstract EnableWaveAction(Z)I
.end method

.method public abstract Init(Landroid/content/Context;)V
.end method

.method public abstract Init(Landroid/content/Context;I)V
.end method

.method public abstract InitCameraParameter()V
.end method

.method public abstract RecordGesture(Z)V
.end method

.method public abstract RecordGesture(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract RegisterPreview(Landroid/view/SurfaceHolder;II)V
.end method

.method public abstract SetAccelerometerFilter(Z)V
.end method

.method public abstract SetConfig(II)V
.end method

.method public abstract SetOnDetectionStartListener(Landroid/vts/OnDetectionStartListener;)V
.end method

.method public abstract SetOnDetectionStopListener(Landroid/vts/OnDetectionStopListener;)V
.end method

.method public abstract SetOnErrorDetectedListener(Landroid/vts/OnErrorDetectedListener;)V
.end method

.method public abstract SetOnFPSChangeDetectedListener(Landroid/vts/OnFPSChangeDetectedListener;)V
.end method

.method public abstract SetOnGestureDetectedListener(Landroid/vts/OnGestureDetectedListener;)V
.end method

.method public abstract SetOnInitDoneListener(Landroid/vts/OnInitDoneListener;)V
.end method

.method public abstract SetOnLUXChangeDetectedListener(Landroid/vts/OnLUXChangeDetectedListener;)V
.end method

.method public abstract SetOnStatusChangeDetectedListener(Landroid/vts/OnStatusChangeDetectedListener;)V
.end method

.method public abstract SetOrientation(I)I
.end method

.method public abstract SetParameter(II)V
.end method

.method public abstract SetVisiblePreview(Z)V
.end method

.method public abstract StartVTS(I)V
.end method

.method public abstract getAPIVersion()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract newInstance()Landroid/vts/VTSAPIInterface;
.end method

.method public abstract release()V
.end method

.method public abstract setSensorMode(I)V
.end method

.method public abstract stopVTS()V
.end method
