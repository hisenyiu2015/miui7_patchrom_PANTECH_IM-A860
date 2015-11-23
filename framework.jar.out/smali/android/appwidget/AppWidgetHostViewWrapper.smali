.class public Landroid/appwidget/AppWidgetHostViewWrapper;
.super Landroid/widget/FrameLayout;
.source "AppWidgetHostViewWrapper.java"


# instance fields
.field private mWidgetId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Landroid/appwidget/AppWidgetHostViewWrapper;->mWidgetId:I

    .line 13
    return-void
.end method


# virtual methods
.method public widgetIdInfo(ZI)I
    .locals 1
    .param p1, "setType"    # Z
    .param p2, "widgetId"    # I

    .prologue
    .line 16
    if-eqz p1, :cond_0

    .line 17
    iput p2, p0, Landroid/appwidget/AppWidgetHostViewWrapper;->mWidgetId:I

    .line 18
    const/4 v0, -0x1

    .line 20
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/appwidget/AppWidgetHostViewWrapper;->mWidgetId:I

    goto :goto_0
.end method
