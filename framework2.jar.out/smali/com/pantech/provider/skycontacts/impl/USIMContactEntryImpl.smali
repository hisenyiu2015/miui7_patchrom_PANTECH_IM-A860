.class public Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;
.super Lcom/pantech/provider/skycontacts/USIMContactEntry;
.source "USIMContactEntryImpl.java"


# instance fields
.field private mGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUEmail:Ljava/lang/String;

.field private mUID:I

.field private mUName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/pantech/provider/skycontacts/USIMContactEntry;-><init>(ILjava/lang/String;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mPhoneList:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mGroupList:Ljava/util/ArrayList;

    .line 22
    iput p1, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mUID:I

    .line 23
    iput-object p2, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mUName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public addGroupID(Ljava/lang/String;)V
    .locals 1
    .param p1, "GrpID"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public addPhoneNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mUEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup(I)I
    .locals 1
    .param p1, "nIndex"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGroupList()Ljava/util/ArrayList;
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
    .line 51
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mUID:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mUName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneList()Ljava/util/ArrayList;
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
    .line 43
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mPhoneList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mUEmail:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setGroup(ILjava/lang/String;)V
    .locals 1
    .param p1, "nPos"    # I
    .param p2, "GrpID"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mUID:I

    .line 32
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;->mUName:Ljava/lang/String;

    .line 40
    return-void
.end method
