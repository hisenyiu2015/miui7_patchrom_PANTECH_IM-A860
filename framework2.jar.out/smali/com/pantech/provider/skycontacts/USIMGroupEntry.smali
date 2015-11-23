.class public abstract Lcom/pantech/provider/skycontacts/USIMGroupEntry;
.super Ljava/lang/Object;
.source "USIMGroupEntry.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getId()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method
