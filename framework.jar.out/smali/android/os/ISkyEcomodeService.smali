.class public interface abstract Landroid/os/ISkyEcomodeService;
.super Ljava/lang/Object;
.source "ISkyEcomodeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISkyEcomodeService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getBatteryLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getBatteryStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
