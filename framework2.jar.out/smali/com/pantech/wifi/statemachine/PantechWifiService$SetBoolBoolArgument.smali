.class final Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolBoolArgument;
.super Ljava/lang/Object;
.source "PantechWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/wifi/statemachine/PantechWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetBoolBoolArgument"
.end annotation


# instance fields
.field public bvalue:Z

.field public bvalue2:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "bval"    # Z
    .param p2, "bval2"    # Z

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-boolean p1, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolBoolArgument;->bvalue:Z

    .line 157
    iput-boolean p2, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolBoolArgument;->bvalue2:Z

    .line 158
    return-void
.end method
