.class final Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntArgument;
.super Ljava/lang/Object;
.source "PantechWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/wifi/statemachine/PantechWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetIntArgument"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntArgument;->value:I

    .line 128
    return-void
.end method
