.class public final Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;
.super Ljava/lang/Object;
.source "PantechWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/wifi/statemachine/PantechWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PantechServiceThreadRequest"
.end annotation


# instance fields
.field public argument:Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "argument"    # Ljava/lang/Object;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->argument:Ljava/lang/Object;

    .line 58
    return-void
.end method
