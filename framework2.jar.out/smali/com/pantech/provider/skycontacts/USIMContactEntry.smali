.class public abstract Lcom/pantech/provider/skycontacts/USIMContactEntry;
.super Ljava/lang/Object;
.source "USIMContactEntry.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addGroupID(Ljava/lang/String;)V
.end method

.method public abstract addPhoneNumber(Ljava/lang/String;)V
.end method

.method public abstract getEmail()Ljava/lang/String;
.end method

.method public abstract getGroup(I)I
.end method

.method public abstract getGroupList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPhoneList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setEmail(Ljava/lang/String;)V
.end method

.method public abstract setGroup(ILjava/lang/String;)V
.end method

.method public abstract setId(I)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method
