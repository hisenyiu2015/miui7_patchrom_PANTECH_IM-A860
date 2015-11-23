.class public final Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelationEntry"
.end annotation


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "relation"    # Ljava/lang/String;

    .prologue
    .line 853
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(JI)V

    .line 854
    iput-object p4, p0, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->mData:Ljava/lang/String;

    .line 855
    const-string v0, "vnd.android.cursor.item/relation"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->mMimeType:Ljava/lang/String;

    .line 856
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "relation"    # Ljava/lang/String;

    .prologue
    .line 847
    invoke-direct {p0, p1, p2}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(J)V

    .line 848
    iput-object p3, p0, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->mData:Ljava/lang/String;

    .line 849
    const-string v0, "vnd.android.cursor.item/relation"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->mMimeType:Ljava/lang/String;

    .line 850
    return-void
.end method


# virtual methods
.method public getCustomLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->mType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->mCustomLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->mCustomLabel:Ljava/lang/String;

    .line 879
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRelation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "customLabel"    # Ljava/lang/String;

    .prologue
    .line 869
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->mType:I

    .line 870
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->mCustomLabel:Ljava/lang/String;

    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->mDataOrTypeUpdated:Z

    .line 872
    return-void
.end method

.method public setRelation(Ljava/lang/String;)V
    .locals 1
    .param p1, "relation"    # Ljava/lang/String;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->mData:Ljava/lang/String;

    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->mDataOrTypeUpdated:Z

    .line 865
    return-void
.end method
