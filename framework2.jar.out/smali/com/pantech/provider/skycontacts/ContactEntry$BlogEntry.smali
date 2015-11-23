.class public final Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlogEntry"
.end annotation


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "blog"    # Ljava/lang/String;

    .prologue
    .line 473
    invoke-direct {p0, p1, p2}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(J)V

    .line 474
    iput-object p3, p0, Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;->mData:Ljava/lang/String;

    .line 475
    const-string v0, "vnd.android.cursor.item/website"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;->mMimeType:Ljava/lang/String;

    .line 476
    return-void
.end method


# virtual methods
.method public getBlog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public setBlog(Ljava/lang/String;)V
    .locals 1
    .param p1, "blog"    # Ljava/lang/String;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;->mData:Ljava/lang/String;

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;->mDataOrTypeUpdated:Z

    .line 485
    return-void
.end method
