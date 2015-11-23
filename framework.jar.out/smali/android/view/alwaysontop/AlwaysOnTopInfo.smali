.class public final Landroid/view/alwaysontop/AlwaysOnTopInfo;
.super Ljava/lang/Object;
.source "AlwaysOnTopInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "AlwaysOnTopInfo"


# instance fields
.field final mAotMotherAppPkg:Ljava/lang/String;

.field mEnabled:Z

.field final mId:Ljava/lang/String;

.field final mIsDisableListResId:I

.field final mService:Landroid/content/pm/ResolveInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Landroid/view/alwaysontop/AlwaysOnTopInfo$1;

    invoke-direct {v0}, Landroid/view/alwaysontop/AlwaysOnTopInfo$1;-><init>()V

    sput-object v0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mEnabled:Z

    .line 78
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 79
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 80
    .local v12, "si":Landroid/content/pm/ServiceInfo;
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mId:Ljava/lang/String;

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 84
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 85
    .local v6, "isDisableListResId":I
    const/4 v2, 0x0

    .line 87
    .local v2, "aotMotherAppPkg":Ljava/lang/String;
    const/4 v8, 0x0

    .line 89
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v14, "android.alwaysontopservice.aot"

    invoke-virtual {v12, v9, v14}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 90
    if-nez v8, :cond_1

    .line 91
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v15, "No android.alwaysontopservice.aot meta-data"

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :catch_0
    move-exception v4

    .line 121
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to create context for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v14

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v14

    .line 95
    :cond_1
    :try_start_2
    iget-object v14, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    .line 96
    .local v10, "res":Landroid/content/res/Resources;
    iget-object v14, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/16 v15, 0x2200

    invoke-virtual {v9, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 99
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v14, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mEnabled:Z

    .line 100
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 104
    .local v3, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_3

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 107
    :cond_3
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, "nodeName":Ljava/lang/String;
    const-string v14, "always-on-top"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 109
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v15, "Meta-data does not start with always-on-top tag"

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 113
    :cond_4
    sget-object v14, Lcom/android/internal/R$styleable;->AlwaysOnTop:[I

    invoke-virtual {v10, v3, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 115
    .local v11, "sa":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 117
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 126
    :cond_5
    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mIsDisableListResId:I

    .line 127
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mAotMotherAppPkg:Ljava/lang/String;

    .line 128
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mEnabled:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mId:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mIsDisableListResId:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mAotMotherAppPkg:Ljava/lang/String;

    .line 134
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "settingsActivity"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v3, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mEnabled:Z

    .line 142
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 143
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/pm/ServiceInfo;

    invoke-direct {v2}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 144
    .local v2, "si":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 145
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 146
    iput-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 147
    iput-object v0, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 148
    iput-boolean v3, v2, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 149
    iput-object p1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 150
    iput-object p2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 151
    iput-boolean v3, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 152
    iput-object p3, v2, Landroid/content/pm/ServiceInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 153
    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 154
    iput-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 155
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mId:Ljava/lang/String;

    .line 156
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mIsDisableListResId:I

    .line 157
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mAotMotherAppPkg:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsDisableListResId=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mIsDisableListResId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAotMotherAppPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mAotMotherAppPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mService:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 252
    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 253
    :cond_1
    if-eqz p1, :cond_0

    .line 255
    instance-of v2, p1, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 257
    check-cast v0, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 258
    .local v0, "obj":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAotMotherAppPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mAotMotherAppPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 196
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mEnabled:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDisableListResourceId()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mIsDisableListResId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 217
    iget-object v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 207
    iget-object v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlwaysOnTopInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 268
    iget-object v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mIsDisableListResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mAotMotherAppPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Landroid/view/alwaysontop/AlwaysOnTopInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 272
    return-void
.end method
