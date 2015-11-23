.class public interface abstract Landroid/view/alwaysontop/AlwaysOnTopInterface;
.super Ljava/lang/Object;
.source "AlwaysOnTopInterface.java"


# static fields
.field public static final EXTRA_AOT_WIDGET_DB_ID:Ljava/lang/String; = "android.alwaysontopservice.aot.widget_db_id"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.alwaysontopservice.AlwaysOnTopService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.alwaysontopservice.aot"


# virtual methods
.method public abstract attachToken(Landroid/os/IBinder;)V
.end method

.method public abstract hideAlwaysOnTop()V
.end method

.method public abstract moveAOTFrame()V
.end method

.method public abstract restoreState()V
.end method

.method public abstract saveState()V
.end method

.method public abstract sendMediaStateEvent(II)V
.end method

.method public abstract showAlwaysOnTop()V
.end method

.method public abstract skipAOTWindow()V
.end method

.method public abstract visibleAOTFrame(Z)V
.end method
