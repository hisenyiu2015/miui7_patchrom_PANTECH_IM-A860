.class final Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;
.super Ljava/lang/Object;
.source "PantechWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/wifi/statemachine/PantechWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetBoolArgument"
.end annotation


# instance fields
.field public value:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-boolean p1, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;->value:Z

    .line 120
    return-void
.end method
