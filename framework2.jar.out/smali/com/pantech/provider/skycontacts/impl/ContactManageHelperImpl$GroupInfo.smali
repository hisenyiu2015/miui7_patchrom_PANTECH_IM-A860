.class Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;
.super Ljava/lang/Object;
.source "ContactManageHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupInfo"
.end annotation


# instance fields
.field public accountName:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public groupId:J

.field public groupIsReadOnly:I

.field public groupTitle:Ljava/lang/String;

.field public isDefaultGroup:Z

.field private mGroupEntry:Lcom/pantech/provider/skycontacts/GroupEntry;

.field public resPackage:Ljava/lang/String;

.field public systemId:Ljava/lang/String;

.field final synthetic this$0:Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;

.field public titleRes:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZI)V
    .locals 0
    .param p2, "groupId"    # J
    .param p4, "accountName"    # Ljava/lang/String;
    .param p5, "accountType"    # Ljava/lang/String;
    .param p6, "groupTitle"    # Ljava/lang/String;
    .param p7, "resPackage"    # Ljava/lang/String;
    .param p8, "titleRes"    # Ljava/lang/Integer;
    .param p9, "systemId"    # Ljava/lang/String;
    .param p10, "isDefaultGroup"    # Z
    .param p11, "groupIsReadOnly"    # I

    .prologue
    .line 2315
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->this$0:Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2316
    iput-wide p2, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->groupId:J

    .line 2317
    iput-object p4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountName:Ljava/lang/String;

    .line 2318
    iput-object p5, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountType:Ljava/lang/String;

    .line 2319
    iput-object p6, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->groupTitle:Ljava/lang/String;

    .line 2320
    iput-object p7, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->resPackage:Ljava/lang/String;

    .line 2321
    iput-object p8, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->titleRes:Ljava/lang/Integer;

    .line 2322
    iput-object p9, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->systemId:Ljava/lang/String;

    .line 2323
    iput-boolean p10, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->isDefaultGroup:Z

    .line 2324
    iput p11, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->groupIsReadOnly:I

    .line 2325
    return-void
.end method


# virtual methods
.method public toGroupEntry()Lcom/pantech/provider/skycontacts/GroupEntry;
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 2328
    iget-object v4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->mGroupEntry:Lcom/pantech/provider/skycontacts/GroupEntry;

    if-nez v4, :cond_4

    .line 2330
    const/4 v0, 0x0

    .line 2331
    .local v0, "account":Landroid/accounts/Account;
    iget-object v4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountType:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2332
    new-instance v0, Landroid/accounts/Account;

    .end local v0    # "account":Landroid/accounts/Account;
    iget-object v4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountType:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_0
    iget-object v1, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->groupTitle:Ljava/lang/String;

    .line 2336
    .local v1, "groupName":Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->titleRes:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 2337
    iget-object v3, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->resPackage:Ljava/lang/String;

    .line 2338
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->this$0:Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;

    # getter for: Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContext:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->access$000(Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->titleRes:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2342
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2343
    iget-object v4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->this$0:Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;

    # getter for: Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContext:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->access$000(Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const v5, 0x104000e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2346
    :cond_2
    new-instance v4, Lcom/pantech/provider/skycontacts/impl/GroupEntryImpl;

    iget-wide v5, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->groupId:J

    invoke-direct {v4, v0, v5, v6, v1}, Lcom/pantech/provider/skycontacts/impl/GroupEntryImpl;-><init>(Landroid/accounts/Account;JLjava/lang/String;)V

    iput-object v4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->mGroupEntry:Lcom/pantech/provider/skycontacts/GroupEntry;

    .line 2351
    iget-boolean v4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->isDefaultGroup:Z

    if-nez v4, :cond_3

    const-string v4, "Starred in Android"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->groupIsReadOnly:I

    if-ne v4, v2, :cond_5

    .line 2352
    :cond_3
    const/4 v2, 0x0

    .line 2356
    .local v2, "isEditable":Z
    :goto_0
    iget-object v4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->mGroupEntry:Lcom/pantech/provider/skycontacts/GroupEntry;

    invoke-virtual {v4, v2}, Lcom/pantech/provider/skycontacts/GroupEntry;->setEditable(Z)V

    .line 2358
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "groupName":Ljava/lang/String;
    .end local v2    # "isEditable":Z
    :cond_4
    iget-object v4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->mGroupEntry:Lcom/pantech/provider/skycontacts/GroupEntry;

    return-object v4

    .line 2354
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "groupName":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->this$0:Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;

    iget-object v5, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountType:Ljava/lang/String;

    iget-object v6, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->systemId:Ljava/lang/String;

    # invokes: Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->isGoogleSystemGroup(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v5, v6}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->access$100(Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .restart local v2    # "isEditable":Z
    :goto_1
    goto :goto_0

    .end local v2    # "isEditable":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method
