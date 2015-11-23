.class Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;
.super Ljava/lang/Object;
.source "UiccPBMHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccPBMHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadLinearFixedContext"
.end annotation


# instance fields
.field countRecords:I

.field onLoaded:Landroid/os/Message;

.field rec_id:I

.field recordSize:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/os/Message;)V
    .locals 0
    .param p1, "rec_id"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;->rec_id:I

    .line 58
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    .line 59
    return-void
.end method
