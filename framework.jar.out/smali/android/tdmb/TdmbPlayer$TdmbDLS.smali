.class public Landroid/tdmb/TdmbPlayer$TdmbDLS;
.super Ljava/lang/Object;
.source "TdmbPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tdmb/TdmbPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TdmbDLS"
.end annotation


# instance fields
.field private mEnable:Z

.field final synthetic this$0:Landroid/tdmb/TdmbPlayer;


# direct methods
.method public constructor <init>(Landroid/tdmb/TdmbPlayer;)V
    .locals 0

    .prologue
    .line 2235
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer$TdmbDLS;->this$0:Landroid/tdmb/TdmbPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetDlsEnable()Z
    .locals 1

    .prologue
    .line 2239
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer$TdmbDLS;->mEnable:Z

    return v0
.end method
