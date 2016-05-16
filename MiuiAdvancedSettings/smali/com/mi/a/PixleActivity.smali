.class public Lcom/mi/a/PixleActivity;
.super Lmiui/preference/PreferenceActivity;
.source "PixleActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/a/PixleActivity$MypagerAdapter;
    }
.end annotation


# instance fields
.field private Dpi_change_item:[Ljava/lang/String;

.field private Lastpoint:I

.field private Launcher_change_item:[Ljava/lang/String;

.field private Reboot_item:[Ljava/lang/String;

.field private Recitem:[Ljava/lang/String;

.field final drawable:[I

.field private handler:Landroid/os/Handler;

.field private final imageDescriptions:[Ljava/lang/String;

.field protected is_running:Z

.field item:I

.field item_DIP:I

.field private layout:Landroid/widget/LinearLayout;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCPU:Landroid/preference/PreferenceScreen;

.field private mDip:Landroid/preference/PreferenceScreen;

.field private mLauncher_change_menu:Landroid/preference/PreferenceScreen;

.field private mReboot_menu:Landroid/preference/PreferenceScreen;

.field private mRecovery:Landroid/preference/PreferenceScreen;

.field private mShake:Landroid/preference/PreferenceScreen;

.field private mTest:Landroid/preference/PreferenceScreen;

.field private mshak:Landroid/preference/CheckBoxPreference;

.field private title_text:Landroid/widget/TextView;

.field private viewpager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 42
    iput v3, p0, Lcom/mi/a/PixleActivity;->Lastpoint:I

    .line 44
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mi/a/PixleActivity;->drawable:[I

    .line 46
    iput-boolean v4, p0, Lcom/mi/a/PixleActivity;->is_running:Z

    .line 49
    new-array v0, v6, [Ljava/lang/String;

    .line 50
    const-string v1, "\u56e0\u4e3a\u4e13\u4e1a\u6240\u4ee5\u66f4\u597d\u7528"

    aput-object v1, v0, v3

    .line 51
    const-string v1, "\u66f4\u591a\u52a8\u6001\u8ddfbug\u53cd\u9988\u8bf7\u70b9\u51fb\u56fe\u7247\u5173\u6ce8\u672c\u4eba\u5fae\u535a"

    aput-object v1, v0, v4

    .line 52
    const-string v1, "\u7248\u6743\u6240\u6709\u7981\u6b62\u76d7\u7528\u5230\u5176\u4ed6\u673a\u578b"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/mi/a/PixleActivity;->imageDescriptions:[Ljava/lang/String;

    .line 81
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u91cd\u542f\u624b\u673a"

    aput-object v1, v0, v3

    const-string v1, "\u8fdb\u5165recovery\u6a21\u5f0f"

    aput-object v1, v0, v4

    const-string v1, "\u8fdb\u5165bootloader\u6a21\u5f0f"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/mi/a/PixleActivity;->Reboot_item:[Ljava/lang/String;

    .line 82
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u5237\u5165\u5b98\u65b9recovery"

    aput-object v1, v0, v3

    const-string v1, "\u5237\u5165\u7b2c\u4e09\u65b9recovery"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/mi/a/PixleActivity;->Recitem:[Ljava/lang/String;

    .line 83
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "4X4\u5e03\u5c40"

    aput-object v1, v0, v3

    const-string v1, "4X5\u5e03\u5c40\uff08\u9ed8\u8ba4\uff09"

    aput-object v1, v0, v4

    const-string v1, "4X6\u5e03\u5c40"

    aput-object v1, v0, v5

    const-string v1, "5X4\u5e03\u5c40"

    aput-object v1, v0, v6

    const-string v1, "5X5\u5e03\u5c40"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "5X6\u5e03\u5c40"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mi/a/PixleActivity;->Launcher_change_item:[Ljava/lang/String;

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "500"

    aput-object v1, v0, v3

    const-string v1, "480"

    aput-object v1, v0, v4

    const-string v1, "460"

    aput-object v1, v0, v5

    const-string v1, "440"

    aput-object v1, v0, v6

    const-string v1, "420"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/mi/a/PixleActivity;->Dpi_change_item:[Ljava/lang/String;

    .line 88
    iput v3, p0, Lcom/mi/a/PixleActivity;->item_DIP:I

    .line 89
    iput v3, p0, Lcom/mi/a/PixleActivity;->item:I

    .line 776
    new-instance v0, Lcom/mi/a/PixleActivity$1;

    invoke-direct {v0, p0}, Lcom/mi/a/PixleActivity$1;-><init>(Lcom/mi/a/PixleActivity;)V

    iput-object v0, p0, Lcom/mi/a/PixleActivity;->handler:Landroid/os/Handler;

    .line 34
    return-void

    .line 44
    :array_0
    .array-data 4
        0x7f020007
        0x7f020008
        0x7f020009
    .end array-data
.end method

.method static synthetic access$0(Lcom/mi/a/PixleActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mi/a/PixleActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mi/a/PixleActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/mi/a/PixleActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/mi/a/PixleActivity;I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/mi/a/PixleActivity;->Lastpoint:I

    return-void
.end method

.method static synthetic access$2(Lcom/mi/a/PixleActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mi/a/PixleActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mi/a/PixleActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mi/a/PixleActivity;->Reboot_item:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mi/a/PixleActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mi/a/PixleActivity;->Launcher_change_item:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/mi/a/PixleActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mi/a/PixleActivity;->Dpi_change_item:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/mi/a/PixleActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mi/a/PixleActivity;->imageDescriptions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/mi/a/PixleActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mi/a/PixleActivity;->title_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/mi/a/PixleActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mi/a/PixleActivity;->layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/mi/a/PixleActivity;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/mi/a/PixleActivity;->Lastpoint:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v9, 0x3fffffff    # 1.9999999f

    const/16 v8, 0x1e

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 660
    const v4, 0x7f0a0007

    invoke-virtual {p0, v4}, Lcom/mi/a/PixleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/mi/a/PixleActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    .line 661
    const v4, 0x7f0a000a

    invoke-virtual {p0, v4}, Lcom/mi/a/PixleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/mi/a/PixleActivity;->layout:Landroid/widget/LinearLayout;

    .line 662
    const v4, 0x7f0a0009

    invoke-virtual {p0, v4}, Lcom/mi/a/PixleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mi/a/PixleActivity;->title_text:Landroid/widget/TextView;

    .line 665
    iget-object v4, p0, Lcom/mi/a/PixleActivity;->title_text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mi/a/PixleActivity;->imageDescriptions:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mi/a/PixleActivity;->list:Ljava/util/List;

    .line 668
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/mi/a/PixleActivity;->drawable:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 701
    iget-object v4, p0, Lcom/mi/a/PixleActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/mi/a/PixleActivity$MypagerAdapter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/mi/a/PixleActivity$MypagerAdapter;-><init>(Lcom/mi/a/PixleActivity;Lcom/mi/a/PixleActivity$MypagerAdapter;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 703
    iget-object v4, p0, Lcom/mi/a/PixleActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/mi/a/PixleActivity;->drawable:[I

    array-length v5, v5

    rem-int v5, v9, v5

    sub-int v5, v9, v5

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 710
    iget-object v4, p0, Lcom/mi/a/PixleActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/mi/a/PixleActivity$8;

    invoke-direct {v5, p0}, Lcom/mi/a/PixleActivity$8;-><init>(Lcom/mi/a/PixleActivity;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 735
    iget-object v4, p0, Lcom/mi/a/PixleActivity;->handler:Landroid/os/Handler;

    const-wide/16 v5, 0x1f40

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 736
    return-void

    .line 670
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 671
    .local v1, "image":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/mi/a/PixleActivity;->drawable:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 672
    iget-object v4, p0, Lcom/mi/a/PixleActivity;->list:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 675
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0xf

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 676
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 677
    .local v3, "point_image":Landroid/widget/ImageView;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    if-nez v0, :cond_2

    .line 680
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 681
    invoke-virtual {p0}, Lcom/mi/a/PixleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 686
    :goto_1
    if-ne v0, v6, :cond_1

    .line 687
    new-instance v4, Lcom/mi/a/PixleActivity$7;

    invoke-direct {v4, p0}, Lcom/mi/a/PixleActivity$7;-><init>(Lcom/mi/a/PixleActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    :cond_1
    iget-object v4, p0, Lcom/mi/a/PixleActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 668
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 683
    :cond_2
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 684
    invoke-virtual {p0}, Lcom/mi/a/PixleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/mi/a/PixleActivity;->addPreferencesFromResource(I)V

    .line 95
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/mi/a/PixleActivity;->setContentView(I)V

    .line 97
    invoke-virtual {p0}, Lcom/mi/a/PixleActivity;->a()V

    .line 98
    const-string v0, "shake_wake"

    invoke-virtual {p0, v0}, Lcom/mi/a/PixleActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mi/a/PixleActivity;->mshak:Landroid/preference/CheckBoxPreference;

    .line 101
    const-string v0, "cpu"

    invoke-virtual {p0, v0}, Lcom/mi/a/PixleActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/mi/a/PixleActivity;->mCPU:Landroid/preference/PreferenceScreen;

    .line 103
    const-string v0, "test"

    invoke-virtual {p0, v0}, Lcom/mi/a/PixleActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/mi/a/PixleActivity;->mTest:Landroid/preference/PreferenceScreen;

    .line 107
    const-string v0, "reboot_menu"

    invoke-virtual {p0, v0}, Lcom/mi/a/PixleActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/mi/a/PixleActivity;->mReboot_menu:Landroid/preference/PreferenceScreen;

    .line 108
    iget-object v0, p0, Lcom/mi/a/PixleActivity;->mReboot_menu:Landroid/preference/PreferenceScreen;

    new-instance v1, Lcom/mi/a/PixleActivity$2;

    invoke-direct {v1, p0}, Lcom/mi/a/PixleActivity$2;-><init>(Lcom/mi/a/PixleActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 246
    const-string v0, "shake"

    invoke-virtual {p0, v0}, Lcom/mi/a/PixleActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/mi/a/PixleActivity;->mShake:Landroid/preference/PreferenceScreen;

    .line 247
    iget-object v0, p0, Lcom/mi/a/PixleActivity;->mShake:Landroid/preference/PreferenceScreen;

    new-instance v1, Lcom/mi/a/PixleActivity$3;

    invoke-direct {v1, p0}, Lcom/mi/a/PixleActivity$3;-><init>(Lcom/mi/a/PixleActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/mi/a/PixleActivity;->mTest:Landroid/preference/PreferenceScreen;

    new-instance v1, Lcom/mi/a/PixleActivity$4;

    invoke-direct {v1, p0}, Lcom/mi/a/PixleActivity$4;-><init>(Lcom/mi/a/PixleActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 325
    const-string v0, "launcher_change_menu"

    invoke-virtual {p0, v0}, Lcom/mi/a/PixleActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/mi/a/PixleActivity;->mLauncher_change_menu:Landroid/preference/PreferenceScreen;

    .line 326
    iget-object v0, p0, Lcom/mi/a/PixleActivity;->mLauncher_change_menu:Landroid/preference/PreferenceScreen;

    new-instance v1, Lcom/mi/a/PixleActivity$5;

    invoke-direct {v1, p0}, Lcom/mi/a/PixleActivity$5;-><init>(Lcom/mi/a/PixleActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 400
    const-string v0, "dpi"

    invoke-virtual {p0, v0}, Lcom/mi/a/PixleActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/mi/a/PixleActivity;->mDip:Landroid/preference/PreferenceScreen;

    .line 402
    iget-object v0, p0, Lcom/mi/a/PixleActivity;->mDip:Landroid/preference/PreferenceScreen;

    new-instance v1, Lcom/mi/a/PixleActivity$6;

    invoke-direct {v1, p0}, Lcom/mi/a/PixleActivity$6;-><init>(Lcom/mi/a/PixleActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 464
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/a/PixleActivity;->is_running:Z

    .line 788
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 789
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 630
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 490
    iget-object v1, p0, Lcom/mi/a/PixleActivity;->mshak:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 492
    iget-object v1, p0, Lcom/mi/a/PixleActivity;->mshak:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/mi/a/PixleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "shake_wake"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 623
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/mi/a/PixleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "shake_wake"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 615
    :cond_2
    iget-object v1, p0, Lcom/mi/a/PixleActivity;->mCPU:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_0

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cpuset/ActivitySeting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 619
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mi/a/PixleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
