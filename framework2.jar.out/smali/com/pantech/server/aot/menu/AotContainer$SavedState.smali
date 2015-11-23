.class public Lcom/pantech/server/aot/menu/AotContainer$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AotContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/menu/AotContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pantech/server/aot/menu/AotContainer$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field savedPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 816
    new-instance v0, Lcom/pantech/server/aot/menu/AotContainer$SavedState$1;

    invoke-direct {v0}, Lcom/pantech/server/aot/menu/AotContainer$SavedState$1;-><init>()V

    sput-object v0, Lcom/pantech/server/aot/menu/AotContainer$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 800
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 783
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer$SavedState;->savedPage:I

    .line 801
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer$SavedState;->savedPage:I

    .line 802
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/pantech/server/aot/menu/AotContainer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/pantech/server/aot/menu/AotContainer$1;

    .prologue
    .line 782
    invoke-direct {p0, p1}, Lcom/pantech/server/aot/menu/AotContainer$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 791
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 783
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer$SavedState;->savedPage:I

    .line 792
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 809
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 810
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer$SavedState;->savedPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    return-void
.end method
