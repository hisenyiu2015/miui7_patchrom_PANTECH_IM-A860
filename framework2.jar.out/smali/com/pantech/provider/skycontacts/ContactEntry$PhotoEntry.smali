.class public final Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoEntry"
.end annotation


# instance fields
.field private mPhotoData:[B


# direct methods
.method public constructor <init>(J[B)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "photo"    # [B

    .prologue
    .line 496
    invoke-direct {p0, p1, p2}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(J)V

    .line 497
    iput-object p3, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;->mPhotoData:[B

    .line 498
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;->mData:Ljava/lang/String;

    .line 499
    const-string v0, "vnd.android.cursor.item/photo"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;->mMimeType:Ljava/lang/String;

    .line 500
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;->mPhotoData:[B

    .line 515
    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;->mData:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public getPhoto()[B
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;->mPhotoData:[B

    return-object v0
.end method

.method public setPhoto([B)V
    .locals 1
    .param p1, "photo"    # [B

    .prologue
    .line 507
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;->mPhotoData:[B

    .line 508
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;->mData:Ljava/lang/String;

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;->mDataOrTypeUpdated:Z

    .line 510
    return-void
.end method
