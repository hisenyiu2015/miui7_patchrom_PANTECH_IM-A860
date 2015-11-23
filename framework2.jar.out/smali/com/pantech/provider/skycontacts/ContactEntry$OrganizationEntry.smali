.class public final Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OrganizationEntry"
.end annotation


# instance fields
.field public mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 699
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(JI)V

    .line 700
    const-string v0, "vnd.android.cursor.item/organization"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mMimeType:Ljava/lang/String;

    .line 701
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mValues:Landroid/content/ContentValues;

    .line 702
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type"    # I

    .prologue
    .line 705
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(JI)V

    .line 706
    const-string v0, "vnd.android.cursor.item/organization"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mMimeType:Ljava/lang/String;

    .line 707
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mValues:Landroid/content/ContentValues;

    .line 708
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 752
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mData:Ljava/lang/String;

    .line 753
    return-void
.end method

.method public getCompany()Ljava/lang/String;
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mCustomLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mCustomLabel:Ljava/lang/String;

    .line 742
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 2
    .param p1, "company"    # Ljava/lang/String;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mData:Ljava/lang/String;

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mDataOrTypeUpdated:Z

    .line 718
    return-void
.end method

.method public setCustomLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "customLabel"    # Ljava/lang/String;

    .prologue
    .line 732
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mType:I

    .line 733
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mCustomLabel:Ljava/lang/String;

    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mDataOrTypeUpdated:Z

    .line 735
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data4"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mData:Ljava/lang/String;

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mDataOrTypeUpdated:Z

    .line 728
    return-void
.end method
