.class public abstract Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.super Ljava/lang/Object;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EditEntry"
.end annotation


# instance fields
.field protected mCustomLabel:Ljava/lang/String;

.field public mData:Ljava/lang/String;

.field private final mDataId:J

.field public mDataOrTypeUpdated:Z

.field public mMimeType:Ljava/lang/String;

.field protected mType:I


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-wide p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mDataId:J

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mType:I

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mDataOrTypeUpdated:Z

    .line 137
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type"    # I

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-wide p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mDataId:J

    .line 141
    iput p3, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mType:I

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mDataOrTypeUpdated:Z

    .line 143
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mData:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public getCustomLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataType()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mType:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mDataId:J

    return-wide v0
.end method

.method public hasChanged()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 173
    iget-wide v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mDataId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mDataId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mData:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mDataOrTypeUpdated:Z

    if-eqz v0, :cond_2

    .line 174
    :cond_1
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCustomLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "customLabel"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mCustomLabel:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setDataType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mType:I

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mDataOrTypeUpdated:Z

    .line 160
    return-void
.end method
