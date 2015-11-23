.class final Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntBoolArgument;
.super Ljava/lang/Object;
.source "PantechWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/wifi/statemachine/PantechWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetIntBoolArgument"
.end annotation


# instance fields
.field public bvalue:Z

.field public ivalue:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "ival"    # I
    .param p2, "bval"    # Z

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p1, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntBoolArgument;->ivalue:I

    .line 137
    iput-boolean p2, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntBoolArgument;->bvalue:Z

    .line 138
    return-void
.end method
