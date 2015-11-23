.class public Lcom/pantech/pcu/telephony/PCUCallInterface$KT_RAD_CALL_MODE_E;
.super Ljava/lang/Object;
.source "PCUCallInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/pcu/telephony/PCUCallInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KT_RAD_CALL_MODE_E"
.end annotation


# static fields
.field public static final KT_RAD_CALL_TO_KOREA:I = 0x0

.field public static final KT_RAD_CALL_TO_LOCAL:I = 0x2

.field public static final KT_RAD_CALL_TO_OTHER_COUNTRY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/pantech/pcu/telephony/PCUCallInterface;


# direct methods
.method public constructor <init>(Lcom/pantech/pcu/telephony/PCUCallInterface;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/pantech/pcu/telephony/PCUCallInterface$KT_RAD_CALL_MODE_E;->this$0:Lcom/pantech/pcu/telephony/PCUCallInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
