.class public Landroid/mtp/MtpDeviceInfo;
.super Ljava/lang/Object;
.source "MtpDeviceInfo.java"


# instance fields
.field private mManufacturer:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mOperations:[S

.field private mSerialNumber:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public final getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getOperationList()[S
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mOperations:[S

    return-object v0
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method
