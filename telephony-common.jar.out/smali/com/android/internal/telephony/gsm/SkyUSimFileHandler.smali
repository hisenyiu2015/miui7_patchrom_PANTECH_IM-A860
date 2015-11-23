.class public final Lcom/android/internal/telephony/gsm/SkyUSimFileHandler;
.super Lcom/android/internal/telephony/uicc/UiccPBMHandler;
.source "SkyUSimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SkyUSimFileHandler"


# instance fields
.field private DBG:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SkyUSimFileHandler;->DBG:Z

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyUSimFileHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 43
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->dispose()V

    .line 47
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->handleMessage(Landroid/os/Message;)V

    .line 54
    return-void
.end method
