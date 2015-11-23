.class final Lcom/android/internal/telephony/SkyMsgConfig$1;
.super Ljava/lang/Object;
.source "SkyMsgConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SkyMsgConfig;->addSmsCallCount(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fSend:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/android/internal/telephony/SkyMsgConfig$1;->val$fSend:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 228
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v8, "/data/data/com.android.phone/factorycmd.dat"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 230
    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/data/data/com.android.phone/factorycmd.dat"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 231
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 233
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v8

    if-lez v8, :cond_1

    .line 234
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 235
    .local v6, "nRecvCount":I
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 240
    .local v7, "nSendCount":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 246
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :goto_1
    iget-boolean v8, p0, Lcom/android/internal/telephony/SkyMsgConfig$1;->val$fSend:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 247
    add-int/lit8 v7, v7, 0x1

    .line 251
    :goto_2
    new-instance v5, Ljava/io/FileOutputStream;

    const-string v8, "/data/data/com.android.phone/factorycmd.dat"

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 252
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 254
    .local v1, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 255
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 256
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 266
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "nRecvCount":I
    .end local v7    # "nSendCount":I
    :cond_0
    :goto_3
    return-void

    .line 237
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_1
    const/4 v6, 0x0

    .line 238
    .restart local v6    # "nRecvCount":I
    const/4 v7, 0x0

    .restart local v7    # "nSendCount":I
    goto :goto_0

    .line 242
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "nRecvCount":I
    .end local v7    # "nSendCount":I
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    const/4 v6, 0x0

    .line 244
    .restart local v6    # "nRecvCount":I
    const/4 v7, 0x0

    .restart local v7    # "nSendCount":I
    goto :goto_1

    .line 249
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 257
    .end local v3    # "f":Ljava/io/File;
    .end local v6    # "nRecvCount":I
    .end local v7    # "nSendCount":I
    :catch_0
    move-exception v2

    .line 258
    .local v2, "e":Ljava/io/IOException;
    if-eqz v2, :cond_0

    .line 259
    const-string v8, "SkySms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SmsDispatcher]addSmsCallCount - IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 261
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_0

    .line 263
    const-string v8, "SkySms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SmsDispatcher]addSmsCallCount - Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
