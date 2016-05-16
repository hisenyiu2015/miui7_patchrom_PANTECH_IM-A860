.class public Lcom/cpuset/Cpusetting;
.super Ljava/lang/Object;
.source "Cpusetting.java"


# static fields
.field private static final CONSERVATIVE_GOVERNOR:Ljava/lang/String; = "performance"

.field private static final ONDEMAND_GOVERNOR:Ljava/lang/String; = "performance"

.field private static final PERFORMANCE_GOVERNOR:Ljava/lang/String; = "performance"

.field private static final POWER_SAVE_GOVERNOR:Ljava/lang/String; = "performance"

.field private static final USERSAPCE_GOVERNOR:Ljava/lang/String; = "performance"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final cpuFreqPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "SetCPU"

    iput-object v0, p0, Lcom/cpuset/Cpusetting;->TAG:Ljava/lang/String;

    .line 33
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq"

    iput-object v0, p0, Lcom/cpuset/Cpusetting;->cpuFreqPath:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getCpuCurGovernor()Ljava/lang/String;
    .locals 7

    .prologue
    .line 47
    const-string v3, ""

    .line 49
    .local v3, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 50
    .local v1, "is":Ljava/io/DataInputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 51
    .local v4, "process":Ljava/lang/Process;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "is":Ljava/io/DataInputStream;
    .local v2, "is":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 56
    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v4    # "process":Ljava/lang/Process;
    :goto_0
    return-object v3

    .line 53
    .restart local v1    # "is":Ljava/io/DataInputStream;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    .restart local v4    # "process":Ljava/lang/Process;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/DataInputStream;
    .restart local v1    # "is":Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method public getCpufrequency()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    const-string v1, ""

    .line 132
    .local v1, "line":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x200

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {p0, v1}, Lcom/cpuset/Cpusetting;->toMHz(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 137
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 142
    .end local v0    # "br":Ljava/io/BufferedReader;
    :goto_0
    return-object v1

    .line 136
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    .line 137
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 138
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    .end local v0    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getCpufrequency2()Ljava/lang/String;
    .locals 7

    .prologue
    .line 111
    const-string v3, ""

    .line 113
    .local v3, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 114
    .local v1, "is":Ljava/io/DataInputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 115
    .local v4, "process":Ljava/lang/Process;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "is":Ljava/io/DataInputStream;
    .local v2, "is":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {p0, v3}, Lcom/cpuset/Cpusetting;->toMHz(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 121
    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v4    # "process":Ljava/lang/Process;
    :goto_0
    return-object v3

    .line 118
    .restart local v1    # "is":Ljava/io/DataInputStream;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    .restart local v4    # "process":Ljava/lang/Process;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/DataInputStream;
    .restart local v1    # "is":Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method public readCpuGovernors()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v1, "governors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 94
    .local v3, "is":Ljava/io/DataInputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 95
    .local v6, "process":Ljava/lang/Process;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v3    # "is":Ljava/io/DataInputStream;
    .local v4, "is":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "line":Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, "strs":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v7

    if-lt v2, v8, :cond_0

    move-object v3, v4

    .line 104
    .end local v2    # "i":I
    .end local v4    # "is":Ljava/io/DataInputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "process":Ljava/lang/Process;
    .end local v7    # "strs":[Ljava/lang/String;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    :goto_1
    return-object v1

    .line 100
    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "i":I
    .restart local v4    # "is":Ljava/io/DataInputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "process":Ljava/lang/Process;
    .restart local v7    # "strs":[Ljava/lang/String;
    :cond_0
    aget-object v8, v7, v2

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "i":I
    .end local v4    # "is":Ljava/io/DataInputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "process":Ljava/lang/Process;
    .end local v7    # "strs":[Ljava/lang/String;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    const-string v8, "SetCPU"

    const-string v9, "readCpuGovernors: read CPU Governors failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v4    # "is":Ljava/io/DataInputStream;
    .restart local v6    # "process":Ljava/lang/Process;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "is":Ljava/io/DataInputStream;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    goto :goto_2
.end method

.method public readCpufrequency()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "frequency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 153
    .local v2, "is":Ljava/io/DataInputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 154
    .local v5, "process":Ljava/lang/Process;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v2    # "is":Ljava/io/DataInputStream;
    .local v3, "is":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "line":Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "strs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v6

    if-lt v1, v7, :cond_0

    move-object v2, v3

    .line 163
    .end local v1    # "i":I
    .end local v3    # "is":Ljava/io/DataInputStream;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "process":Ljava/lang/Process;
    .end local v6    # "strs":[Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    :goto_1
    return-object v0

    .line 159
    .end local v2    # "is":Ljava/io/DataInputStream;
    .restart local v1    # "i":I
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "process":Ljava/lang/Process;
    .restart local v6    # "strs":[Ljava/lang/String;
    :cond_0
    aget-object v7, v6, v1

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "i":I
    .end local v3    # "is":Ljava/io/DataInputStream;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "process":Ljava/lang/Process;
    .end local v6    # "strs":[Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    :catch_0
    move-exception v7

    goto :goto_1

    .end local v2    # "is":Ljava/io/DataInputStream;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v5    # "process":Ljava/lang/Process;
    :catch_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method public toMHz(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mhzString"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    return-object v0
.end method

.method public writeCpuGovernor(Ljava/lang/String;)Z
    .locals 9
    .param p1, "governor"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v3, 0x0

    .line 66
    .local v3, "os":Ljava/io/DataOutputStream;
    const/16 v6, 0x100

    new-array v0, v6, [B

    .line 67
    .local v0, "buffer":[B
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "echo "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/sys/devices/system/cpu/cpu0/cpufreq"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/scaling_governor"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "command":Ljava/lang/String;
    const-string v6, "SetCPU"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "command: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 71
    .local v5, "process":Ljava/lang/Process;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    .end local v3    # "os":Ljava/io/DataOutputStream;
    .local v4, "os":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 73
    const-string v6, "exit\n"

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 75
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 76
    const-string v6, "SetCPU"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "exit value = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 83
    .end local v4    # "os":Ljava/io/DataOutputStream;
    .end local v5    # "process":Ljava/lang/Process;
    .restart local v3    # "os":Ljava/io/DataOutputStream;
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    const-string v6, "SetCPU"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "writeCpuGovernor: write CPU Governor("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") failed!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v6, 0x0

    goto :goto_1

    .line 80
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/InterruptedException;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "process":Ljava/lang/Process;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "os":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 77
    .end local v3    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "os":Ljava/io/DataOutputStream;
    goto :goto_2
.end method

.method public writeCpufrequencyMax(Ljava/lang/String;)Z
    .locals 9
    .param p1, "governor"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v3, 0x0

    .line 173
    .local v3, "os":Ljava/io/DataOutputStream;
    const/16 v6, 0x100

    new-array v0, v6, [B

    .line 174
    .local v0, "buffer":[B
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "echo "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/sys/devices/system/cpu/cpu0/cpufreq"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/scaling_max_freq"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "command":Ljava/lang/String;
    const-string v6, "SetCPU"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "command: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 178
    .local v5, "process":Ljava/lang/Process;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    .end local v3    # "os":Ljava/io/DataOutputStream;
    .local v4, "os":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 180
    const-string v6, "exit\n"

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 182
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 183
    const-string v6, "SetCPU"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "exit value = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 190
    .end local v4    # "os":Ljava/io/DataOutputStream;
    .end local v5    # "process":Ljava/lang/Process;
    .restart local v3    # "os":Ljava/io/DataOutputStream;
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 184
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    const-string v6, "SetCPU"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "writeCpuGovernor: write CPU Governor("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") failed!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v6, 0x0

    goto :goto_1

    .line 187
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/InterruptedException;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "process":Ljava/lang/Process;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "os":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 184
    .end local v3    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "os":Ljava/io/DataOutputStream;
    goto :goto_2
.end method

.method public writeCpufrequencyMin(Ljava/lang/String;)Z
    .locals 9
    .param p1, "governor"    # Ljava/lang/String;

    .prologue
    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, "os":Ljava/io/DataOutputStream;
    const/16 v6, 0x100

    new-array v0, v6, [B

    .line 202
    .local v0, "buffer":[B
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "echo "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/sys/devices/system/cpu/cpu0/cpufreq"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/scaling_min_freq"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "command":Ljava/lang/String;
    const-string v6, "SetCPU"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "command: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 206
    .local v5, "process":Ljava/lang/Process;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 207
    .end local v3    # "os":Ljava/io/DataOutputStream;
    .local v4, "os":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 208
    const-string v6, "exit\n"

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 210
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 211
    const-string v6, "SetCPU"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "exit value = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 218
    .end local v4    # "os":Ljava/io/DataOutputStream;
    .end local v5    # "process":Ljava/lang/Process;
    .restart local v3    # "os":Ljava/io/DataOutputStream;
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 212
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    const-string v6, "SetCPU"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "writeCpuGovernor: write CPU Governor("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") failed!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v6, 0x0

    goto :goto_1

    .line 215
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/InterruptedException;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 215
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "process":Ljava/lang/Process;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "os":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 212
    .end local v3    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "os":Ljava/io/DataOutputStream;
    goto :goto_2
.end method
