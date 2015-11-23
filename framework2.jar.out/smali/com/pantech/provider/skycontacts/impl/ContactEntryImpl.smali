.class public final Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;
.super Lcom/pantech/provider/skycontacts/ContactEntry;
.source "ContactEntryImpl.java"


# instance fields
.field private final mAccout:Landroid/accounts/Account;

.field private mAnniversaryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mBlogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebook:Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;

.field private mGroupmembershipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mImList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mMe2Day:Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;

.field private mMemo:Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;

.field private mMemoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;

.field private mNickName:Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;

.field private mOrganizationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoto:Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;

.field private mPostalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mRawContactId:Ljava/lang/Long;

.field private mRelationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSipAddress:Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;

.field private mTwitter:Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;

.field private final mVersion:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;J)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "rawContactId"    # J

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/provider/skycontacts/ContactEntry;-><init>(Landroid/accounts/Account;J)V

    .line 75
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mAccout:Landroid/accounts/Account;

    .line 76
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mRawContactId:Ljava/lang/Long;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mVersion:Ljava/lang/Long;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "rawContactId"    # Ljava/lang/Long;
    .param p3, "version"    # Ljava/lang/Long;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/provider/skycontacts/ContactEntry;-><init>(Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 82
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mAccout:Landroid/accounts/Account;

    .line 83
    iput-object p2, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mRawContactId:Ljava/lang/Long;

    .line 84
    iput-object p3, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mVersion:Ljava/lang/Long;

    .line 85
    return-void
.end method


# virtual methods
.method public addAnniversary(Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;)V
    .locals 1
    .param p1, "anniv"    # Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mAnniversaryList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mAnniversaryList:Ljava/util/ArrayList;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mAnniversaryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public addBlog(Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;)V
    .locals 1
    .param p1, "blog"    # Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mBlogList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mBlogList:Ljava/util/ArrayList;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mBlogList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public addEmail(Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;)V
    .locals 1
    .param p1, "email"    # Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mEmailList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mEmailList:Ljava/util/ArrayList;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public addFacebook(Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;)V
    .locals 0
    .param p1, "facebook"    # Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mFacebook:Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;

    .line 258
    return-void
.end method

.method public addGroupmembership(Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;)V
    .locals 1
    .param p1, "grpmembership"    # Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mGroupmembershipList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mGroupmembershipList:Ljava/util/ArrayList;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mGroupmembershipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public addIm(Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;)V
    .locals 1
    .param p1, "im"    # Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mImList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mImList:Ljava/util/ArrayList;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mImList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public addMe2Day(Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;)V
    .locals 0
    .param p1, "me2day"    # Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mMe2Day:Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;

    .line 241
    return-void
.end method

.method public addMemo(Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;)V
    .locals 4
    .param p1, "memo"    # Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;

    .prologue
    .line 183
    iget-object v3, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mMemoList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mMemoList:Ljava/util/ArrayList;

    .line 188
    :cond_0
    const/4 v2, 0x1

    .line 189
    .local v2, "okToAdd":Z
    iget-object v3, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mMemoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;

    .line 192
    .local v1, "memoEntry":Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;
    invoke-virtual {v1}, Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;->getMemo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 193
    const/4 v2, 0x0

    .line 197
    .end local v1    # "memoEntry":Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;
    :cond_2
    if-eqz v2, :cond_3

    .line 198
    iget-object v3, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mMemoList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_3
    return-void
.end method

.method public addName(Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;)V
    .locals 0
    .param p1, "name"    # Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mName:Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;

    .line 112
    return-void
.end method

.method public addNickName(Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;)V
    .locals 0
    .param p1, "nickName"    # Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mNickName:Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;

    .line 120
    return-void
.end method

.method public addOrganization(Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;)V
    .locals 1
    .param p1, "organization"    # Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mOrganizationList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mOrganizationList:Ljava/util/ArrayList;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mOrganizationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public addPhoneNumber(Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;)V
    .locals 1
    .param p1, "phone"    # Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mPhoneList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mPhoneList:Ljava/util/ArrayList;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public addPhoto(Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;)V
    .locals 0
    .param p1, "photo"    # Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mPhoto:Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;

    .line 132
    return-void
.end method

.method public addPostal(Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;)V
    .locals 1
    .param p1, "postal"    # Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mPostalList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mPostalList:Ljava/util/ArrayList;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mPostalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public addRelation(Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;)V
    .locals 1
    .param p1, "relation"    # Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mRelationList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mRelationList:Ljava/util/ArrayList;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mRelationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

.method public addSipAddress(Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;)V
    .locals 0
    .param p1, "sipAddress"    # Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mSipAddress:Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;

    .line 289
    return-void
.end method

.method public addTwitter(Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;)V
    .locals 0
    .param p1, "twitter"    # Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mTwitter:Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;

    .line 249
    return-void
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mAccout:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAnniversaryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mAnniversaryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBlogList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mBlogList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEmailList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mEmailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFacebook()Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mFacebook:Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;

    return-object v0
.end method

.method public getGroupmembershipList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mGroupmembershipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mRawContactId:Ljava/lang/Long;

    return-object v0
.end method

.method public getImList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mImList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMe2Day()Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mMe2Day:Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;

    return-object v0
.end method

.method public getMemo()Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mMemo:Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;

    return-object v0
.end method

.method public getMemoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mMemoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mName:Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;

    return-object v0
.end method

.method public getNickName()Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mNickName:Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;

    return-object v0
.end method

.method public getOrganizationList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mOrganizationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mPhoneList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoto()Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mPhoto:Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;

    return-object v0
.end method

.method public getPostalList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mPostalList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRelationList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mRelationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSipAddress()Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mSipAddress:Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;

    return-object v0
.end method

.method public getTwitter()Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mTwitter:Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;

    return-object v0
.end method

.method public getVersion()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;->mVersion:Ljava/lang/Long;

    return-object v0
.end method
