.class final Lcom/pantech/wifi/statemachine/PantechWifiService$SetNoneArgument;
.super Ljava/lang/Object;
.source "PantechWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/wifi/statemachine/PantechWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetNoneArgument"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetNoneArgument;->value:I

    .line 112
    return-void
.end method
