.class public final Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Me2DayEntry"
.end annotation


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "me2day"    # Ljava/lang/String;

    .prologue
    .line 761
    invoke-direct {p0, p1, p2}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(J)V

    .line 762
    iput-object p3, p0, Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;->mData:Ljava/lang/String;

    .line 763
    const-string v0, "vnd.android.cursor.item/me2day"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;->mMimeType:Ljava/lang/String;

    .line 764
    return-void
.end method


# virtual methods
.method public getMe2Day()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public setMe2Day(Ljava/lang/String;)V
    .locals 1
    .param p1, "me2day"    # Ljava/lang/String;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;->mData:Ljava/lang/String;

    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;->mDataOrTypeUpdated:Z

    .line 773
    return-void
.end method
