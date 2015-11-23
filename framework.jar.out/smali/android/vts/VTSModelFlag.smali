.class public Landroid/vts/VTSModelFlag;
.super Ljava/lang/Object;
.source "VTSModelFlag.java"


# static fields
.field public static EF39:Z

.field public static EF40:Z

.field public static EF44:Z

.field public static EF47:Z

.field public static EF48:Z

.field public static EF51:Z

.field public static EF52:Z

.field public static EF59:Z

.field public static EF60:Z

.field public static EF63:Z

.field public static EF65L:Z

.field public static EF65S:Z

.field public static EF67:Z


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Landroid/vts/VTSModelFlag;->EF39:Z

    .line 12
    sput-boolean v0, Landroid/vts/VTSModelFlag;->EF40:Z

    .line 13
    sput-boolean v0, Landroid/vts/VTSModelFlag;->EF65L:Z

    .line 16
    sput-boolean v0, Landroid/vts/VTSModelFlag;->EF47:Z

    .line 17
    sput-boolean v0, Landroid/vts/VTSModelFlag;->EF44:Z

    .line 20
    sput-boolean v0, Landroid/vts/VTSModelFlag;->EF48:Z

    .line 21
    sput-boolean v0, Landroid/vts/VTSModelFlag;->EF51:Z

    .line 22
    sput-boolean v0, Landroid/vts/VTSModelFlag;->EF52:Z

    .line 25
    sput-boolean v0, Landroid/vts/VTSModelFlag;->EF59:Z

    .line 26
    sput-boolean v0, Landroid/vts/VTSModelFlag;->EF60:Z

    .line 27
    sput-boolean v0, Landroid/vts/VTSModelFlag;->EF63:Z

    .line 28
    sput-boolean v0, Landroid/vts/VTSModelFlag;->EF65S:Z

    .line 31
    sput-boolean v0, Landroid/vts/VTSModelFlag;->EF67:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/vts/VTSModelFlag;->name:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    .line 39
    .local v0, "b":Landroid/os/Build;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Landroid/vts/VTSModelFlag;->name:Ljava/lang/String;

    .line 42
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A930S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A930K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A930L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 43
    sput-boolean v4, Landroid/vts/VTSModelFlag;->EF67:Z

    .line 70
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A920S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A940K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 45
    sput-boolean v4, Landroid/vts/VTSModelFlag;->EF65S:Z

    goto :goto_0

    .line 46
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A910S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A910K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A910L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 47
    sput-boolean v4, Landroid/vts/VTSModelFlag;->EF63:Z

    goto :goto_0

    .line 48
    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A900S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A900K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A900L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 49
    sput-boolean v4, Landroid/vts/VTSModelFlag;->EF60:Z

    goto :goto_0

    .line 50
    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A890S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A890K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A890L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 51
    sput-boolean v4, Landroid/vts/VTSModelFlag;->EF59:Z

    goto :goto_0

    .line 52
    :cond_4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A870S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A870K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A870L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 53
    sput-boolean v4, Landroid/vts/VTSModelFlag;->EF52:Z

    goto/16 :goto_0

    .line 54
    :cond_5
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A860S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A860K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A860L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 55
    sput-boolean v4, Landroid/vts/VTSModelFlag;->EF51:Z

    goto/16 :goto_0

    .line 56
    :cond_6
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A850S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A850K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A850L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 57
    sput-boolean v4, Landroid/vts/VTSModelFlag;->EF48:Z

    goto/16 :goto_0

    .line 58
    :cond_7
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A840S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A840SP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_8

    .line 59
    sput-boolean v4, Landroid/vts/VTSModelFlag;->EF44:Z

    goto/16 :goto_0

    .line 60
    :cond_8
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A830S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A830K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A830L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_9

    .line 61
    sput-boolean v4, Landroid/vts/VTSModelFlag;->EF47:Z

    goto/16 :goto_0

    .line 62
    :cond_9
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A820L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 63
    sput-boolean v4, Landroid/vts/VTSModelFlag;->EF65L:Z

    goto/16 :goto_0

    .line 64
    :cond_a
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A810S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "IM-A810K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_b

    .line 65
    sput-boolean v4, Landroid/vts/VTSModelFlag;->EF40:Z

    goto/16 :goto_0

    .line 66
    :cond_b
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A800S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 67
    sput-boolean v4, Landroid/vts/VTSModelFlag;->EF39:Z

    goto/16 :goto_0

    .line 69
    :cond_c
    const-string v1, "VTSModelFlag"

    const-string v2, "There isn\'t any valid model!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
