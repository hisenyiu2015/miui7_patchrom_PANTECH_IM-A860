.class final Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntIntArgument;
.super Ljava/lang/Object;
.source "PantechWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/wifi/statemachine/PantechWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetIntIntArgument"
.end annotation


# instance fields
.field public ivalue:I

.field public ivalue2:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "ival"    # I
    .param p2, "ival2"    # I

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p1, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntIntArgument;->ivalue:I

    .line 147
    iput p2, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntIntArgument;->ivalue2:I

    .line 148
    return-void
.end method
