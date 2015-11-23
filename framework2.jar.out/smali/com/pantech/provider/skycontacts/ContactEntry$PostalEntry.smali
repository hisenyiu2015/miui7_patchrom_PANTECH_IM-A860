.class public final Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostalEntry"
.end annotation


# instance fields
.field public mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 580
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(JI)V

    .line 581
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mMimeType:Ljava/lang/String;

    .line 582
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    .line 583
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type"    # I

    .prologue
    .line 586
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(JI)V

    .line 587
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mMimeType:Ljava/lang/String;

    .line 588
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    .line 589
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 683
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mData:Ljava/lang/String;

    .line 684
    return-void
.end method

.method public getCity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data7"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountury()Ljava/lang/String;
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data10"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mCustomLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mCustomLabel:Ljava/lang/String;

    .line 673
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNeighborhood()Ljava/lang/String;
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data6"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostBox()Ljava/lang/String;
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data5"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data9"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data8"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 2
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data7"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mData:Ljava/lang/String;

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mDataOrTypeUpdated:Z

    .line 619
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 2
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data10"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mData:Ljava/lang/String;

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mDataOrTypeUpdated:Z

    .line 599
    return-void
.end method

.method public setCustomLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "customLabel"    # Ljava/lang/String;

    .prologue
    .line 663
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mType:I

    .line 664
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mCustomLabel:Ljava/lang/String;

    .line 665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mDataOrTypeUpdated:Z

    .line 666
    return-void
.end method

.method public setNeighborhood(Ljava/lang/String;)V
    .locals 2
    .param p1, "neighborhood"    # Ljava/lang/String;

    .prologue
    .line 656
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data6"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mData:Ljava/lang/String;

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mDataOrTypeUpdated:Z

    .line 659
    return-void
.end method

.method public setPostBox(Ljava/lang/String;)V
    .locals 2
    .param p1, "postBox"    # Ljava/lang/String;

    .prologue
    .line 646
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data5"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mData:Ljava/lang/String;

    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mDataOrTypeUpdated:Z

    .line 649
    return-void
.end method

.method public setPostCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "postCode"    # Ljava/lang/String;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data9"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mData:Ljava/lang/String;

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mDataOrTypeUpdated:Z

    .line 639
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 2
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data8"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mData:Ljava/lang/String;

    .line 608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mDataOrTypeUpdated:Z

    .line 609
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 2
    .param p1, "street"    # Ljava/lang/String;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    const-string v1, "data4"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mData:Ljava/lang/String;

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mDataOrTypeUpdated:Z

    .line 629
    return-void
.end method
