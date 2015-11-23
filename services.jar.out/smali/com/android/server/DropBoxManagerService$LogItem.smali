.class Lcom/android/server/DropBoxManagerService$LogItem;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogItem"
.end annotation


# instance fields
.field public mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLastModified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public miFileListCount:I

.field public final mszLogPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .locals 1
    .param p2, "szLogPath"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$LogItem;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService$LogItem;->mszLogPath:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$LogItem;->miFileListCount:I

    .line 172
    return-void
.end method


# virtual methods
.method public getFileListCount()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/server/DropBoxManagerService$LogItem;->miFileListCount:I

    return v0
.end method

.method public getFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$LogItem;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastModified()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$LogItem;->mLastModified:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$LogItem;->mszLogPath:Ljava/lang/String;

    return-object v0
.end method
