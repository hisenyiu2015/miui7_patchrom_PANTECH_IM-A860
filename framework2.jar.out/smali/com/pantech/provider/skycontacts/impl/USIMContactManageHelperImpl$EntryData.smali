.class Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
.super Ljava/lang/Object;
.source "USIMContactManageHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryData"
.end annotation


# instance fields
.field mData1:Ljava/lang/String;

.field mData2:Ljava/lang/String;

.field mId:J

.field mMimeType:Ljava/lang/String;

.field mRawContactId:J

.field mSync1:Ljava/lang/String;

.field final synthetic this$0:Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;


# direct methods
.method private constructor <init>(Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;)V
    .locals 0

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->this$0:Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;
    .param p2, "x1"    # Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$1;

    .prologue
    .line 1233
    invoke-direct {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;-><init>(Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;)V

    return-void
.end method
