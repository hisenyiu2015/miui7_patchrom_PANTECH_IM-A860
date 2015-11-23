.class public Lcom/pantech/provider/skycontacts/impl/USIMGroupEntryImpl;
.super Lcom/pantech/provider/skycontacts/USIMGroupEntry;
.source "USIMGroupEntryImpl.java"


# instance fields
.field private mGrpID:I

.field private mGrpName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/pantech/provider/skycontacts/USIMGroupEntry;-><init>(ILjava/lang/String;)V

    .line 14
    iput p1, p0, Lcom/pantech/provider/skycontacts/impl/USIMGroupEntryImpl;->mGrpID:I

    .line 15
    iput-object p2, p0, Lcom/pantech/provider/skycontacts/impl/USIMGroupEntryImpl;->mGrpName:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMGroupEntryImpl;->mGrpID:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMGroupEntryImpl;->mGrpName:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/USIMGroupEntryImpl;->mGrpName:Ljava/lang/String;

    .line 28
    return-void
.end method
