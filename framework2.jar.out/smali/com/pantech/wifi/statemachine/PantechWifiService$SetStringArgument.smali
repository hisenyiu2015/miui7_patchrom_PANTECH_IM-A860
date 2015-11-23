.class public final Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;
.super Ljava/lang/Object;
.source "PantechWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/wifi/statemachine/PantechWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetStringArgument"
.end annotation


# instance fields
.field public svalue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sval"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;->svalue:Ljava/lang/String;

    .line 167
    return-void
.end method
