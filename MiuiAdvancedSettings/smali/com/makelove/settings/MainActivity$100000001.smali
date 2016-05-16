.class Lcom/makelove/settings/MainActivity$100000001;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/makelove/settings/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/makelove/settings/MainActivity;


# direct methods
.method constructor <init>(Lcom/makelove/settings/MainActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/makelove/settings/MainActivity$100000001;->this$0:Lcom/makelove/settings/MainActivity;

    return-void
.end method

.method static access$0(Lcom/makelove/settings/MainActivity$100000001;)Lcom/makelove/settings/MainActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/makelove/settings/MainActivity$100000001;->this$0:Lcom/makelove/settings/MainActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/makelove/settings/MainActivity$100000001;->this$0:Lcom/makelove/settings/MainActivity;

    invoke-virtual {v4}, Lcom/makelove/settings/MainActivity;->finish()V

    return-void
.end method
