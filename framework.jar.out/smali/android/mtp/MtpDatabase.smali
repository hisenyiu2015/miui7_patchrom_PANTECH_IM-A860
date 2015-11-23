.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabase$ScannerClient;
    }
.end annotation


# static fields
.field public static final ACTION_MTP_DELETE_FILE:Ljava/lang/String; = "android.mtp.action.MTP_DELETE_FILE"

.field public static final ACTION_MTP_INSERT_FILE:Ljava/lang/String; = "android.mtp.action.MTP_INSERT_FILE"

.field public static final ACTION_MTP_UPDATE_FILE:Ljava/lang/String; = "android.mtp.action.MTP_UPDATE_FILE"

.field static final ALL_PROPERTIES:[I

.field static final AUDIO_PROPERTIES:[I

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field static final FILE_PROPERTIES:[I

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "format=? AND parent=?"

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private final mMediaProvider:Landroid/content/IContentProvider;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:I

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mScannerClient:Landroid/mtp/MtpDatabase$ScannerClient;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 104
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 108
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 113
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "storage_id"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    const-string/jumbo v1, "parent"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 140
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1036
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 1051
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 1076
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 1097
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 1115
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    return-void

    .line 1036
    :array_0
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdc4e
    .end array-data

    .line 1051
    :array_1
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
    .end array-data

    .line 1076
    :array_2
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
    .end array-data

    .line 1097
    :array_3
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc48
    .end array-data

    .line 1115
    :array_4
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc48
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
        0xdc48
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "storagePath"    # Ljava/lang/String;
    .param p4, "subDirectories"    # [Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 87
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 91
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 186
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 188
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "media"

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    .line 191
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 192
    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 193
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 194
    new-instance v10, Landroid/media/MediaScanner;

    invoke-direct {v10, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 196
    new-instance v10, Landroid/mtp/MtpDatabase$ScannerClient;

    invoke-direct {v10, p1}, Landroid/mtp/MtpDatabase$ScannerClient;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mScannerClient:Landroid/mtp/MtpDatabase$ScannerClient;

    .line 198
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 199
    if-eqz p4, :cond_2

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    move-object/from16 v0, p4

    array-length v2, v0

    .line 204
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 205
    const-string v10, "_data=? OR _data LIKE ?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    add-int/lit8 v10, v2, -0x1

    if-eq v4, v10, :cond_0

    .line 208
    const-string v10, " OR "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    :cond_1
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 215
    mul-int/lit8 v10, v2, 0x2

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 216
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "j":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 217
    aget-object v9, p4, v4

    .line 218
    .local v9, "path":Ljava/lang/String;
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aput-object v9, v10, v6

    .line 219
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 216
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v6    # "j":I
    .end local v9    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v8, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 225
    .local v8, "locale":Ljava/util/Locale;
    if-eqz v8, :cond_3

    .line 226
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, "language":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "country":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 229
    if-eqz v3, :cond_4

    .line 230
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 236
    .end local v3    # "country":Ljava/lang/String;
    .end local v7    # "language":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 237
    return-void

    .line 232
    .restart local v3    # "country":Ljava/lang/String;
    .restart local v7    # "language":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v10, v7}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private addFileInfo(Ljava/lang/String;IIIJJ)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I
    .param p5, "size"    # J
    .param p7, "lastModified"    # J

    .prologue
    .line 1337
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1339
    .local v2, "fileUri":Landroid/net/Uri;
    if-eqz p1, :cond_1

    .line 1340
    const/4 v8, 0x0

    .line 1343
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1345
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1346
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file data already exists : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 1368
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1372
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .line 1350
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1351
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1353
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    const-string v0, "format"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1355
    const-string/jumbo v0, "parent"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1356
    const-string/jumbo v0, "storage_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1357
    const-string v0, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1358
    const-string v0, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1360
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v11}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1361
    .local v10, "uri":Landroid/net/Uri;
    if-nez v10, :cond_0

    .line 1362
    const-string v0, "MtpDatabase"

    const-string v1, "Object info insertion failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1364
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 1365
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in addFileInfo"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1367
    if-eqz v8, :cond_1

    .line 1368
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1367
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1368
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I
    .param p5, "size"    # J
    .param p7, "modified"    # J

    .prologue
    .line 326
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Landroid/mtp/MtpDatabase;->beginSendObject(Ljava/lang/String;IIIJJZ)I

    move-result v0

    return v0
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJZ)I
    .locals 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I
    .param p5, "size"    # J
    .param p7, "modified"    # J
    .param p9, "move"    # Z

    .prologue
    .line 332
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    .line 387
    :cond_0
    :goto_0
    return v2

    .line 335
    :cond_1
    if-eqz p1, :cond_3

    .line 336
    const/4 v10, 0x0

    .line 338
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v5, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "_data=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 340
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 341
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file already exists in beginSendObject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    const/4 v2, -0x1

    .line 347
    if-eqz v10, :cond_0

    .line 348
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 347
    :cond_2
    if-eqz v10, :cond_3

    .line 348
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 353
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 354
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 355
    .local v14, "values":Landroid/content/ContentValues;
    const-string v2, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v2, "format"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string/jumbo v2, "parent"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string/jumbo v2, "storage_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    const-string v2, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    const-string v2, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 364
    const/4 v13, 0x0

    .line 365
    .local v13, "uri":Landroid/net/Uri;
    if-nez p9, :cond_5

    .line 366
    :try_start_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v4, v14}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 370
    :goto_2
    if-eqz v13, :cond_6

    .line 372
    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.mtp.action.MTP_INSERT_FILE"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v12, "intent":Landroid/content/Intent;
    const-string v2, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v2, "format"

    move/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string/jumbo v2, "parent"

    move/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    const-string/jumbo v2, "storage_id"

    move/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    const-string v2, "_size"

    move-wide/from16 v0, p5

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 378
    const-string v2, "date_modified"

    move-wide/from16 v0, p7

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 379
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 381
    invoke-virtual {v13}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto/16 :goto_0

    .line 344
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "uri":Landroid/net/Uri;
    .end local v14    # "values":Landroid/content/ContentValues;
    .restart local v10    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 345
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in beginSendObject"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    if-eqz v10, :cond_3

    .line 348
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 347
    .end local v11    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_4

    .line 348
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 368
    .end local v10    # "c":Landroid/database/Cursor;
    .restart local v13    # "uri":Landroid/net/Uri;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_5
    :try_start_3
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, v3, v4, v14}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v13

    goto :goto_2

    .line 383
    :cond_6
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 385
    :catch_1
    move-exception v11

    .line 386
    .restart local v11    # "e":Landroid/os/RemoteException;
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in beginSendObject"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    const/4 v2, -0x1

    goto/16 :goto_0
.end method

.method private copy(Ljava/io/File;Ljava/io/File;I)V
    .locals 12
    .param p1, "sourceF"    # Ljava/io/File;
    .param p2, "targetF"    # Ljava/io/File;
    .param p3, "storageid"    # I

    .prologue
    .line 428
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 431
    .local v3, "ff":[Ljava/io/File;
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 432
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 433
    invoke-direct {p0, p2, p3}, Landroid/mtp/MtpDatabase;->insertDir(Ljava/io/File;I)V

    .line 435
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v10, v3

    if-ge v8, v10, :cond_4

    .line 436
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v8

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .local v9, "temp":Ljava/io/File;
    aget-object v10, v3, v8

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 438
    aget-object v10, v3, v8

    invoke-direct {p0, v10, v9, p3}, Landroid/mtp/MtpDatabase;->copy(Ljava/io/File;Ljava/io/File;I)V

    .line 435
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 440
    :cond_2
    const/4 v4, 0x0

    .line 441
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 443
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    aget-object v10, v3, v8

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 445
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/16 v10, 0x1000

    :try_start_2
    new-array v0, v10, [B

    .line 446
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 447
    .local v1, "cnt":I
    :goto_2
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_3

    .line 448
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 450
    .end local v0    # "b":[B
    .end local v1    # "cnt":I
    :catch_0
    move-exception v2

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 451
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 455
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 461
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/mtp/MtpDatabase;->isScan(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 462
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mScannerClient:Landroid/mtp/MtpDatabase$ScannerClient;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/mtp/MtpDatabase$ScannerClient;->scanPath(Ljava/lang/String;)V

    goto :goto_1

    .line 454
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "b":[B
    .restart local v1    # "cnt":I
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 455
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 459
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 456
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 458
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 460
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 456
    .end local v0    # "b":[B
    .end local v1    # "cnt":I
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 458
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 453
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 454
    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 455
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 459
    :goto_6
    throw v10

    .line 456
    :catch_3
    move-exception v2

    .line 458
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 465
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "temp":Ljava/io/File;
    :cond_4
    return-void

    .line 453
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "temp":Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 450
    :catch_4
    move-exception v2

    goto :goto_3

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private copyDevLogo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 21
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "dstPath"    # Ljava/lang/String;
    .param p3, "storageId"    # I

    .prologue
    .line 1376
    const/4 v11, 0x0

    .line 1377
    .local v11, "devLogoFileIn":Ljava/io/File;
    const/4 v13, 0x0

    .line 1379
    .local v13, "devLogoFileOut":Ljava/io/File;
    const/16 v16, 0x0

    .line 1380
    .local v16, "in":Ljava/io/FileInputStream;
    const/16 v19, 0x0

    .line 1383
    .local v19, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    .end local v11    # "devLogoFileIn":Ljava/io/File;
    .local v12, "devLogoFileIn":Ljava/io/File;
    :try_start_1
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1386
    .end local v16    # "in":Ljava/io/FileInputStream;
    .local v17, "in":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1388
    .end local v13    # "devLogoFileOut":Ljava/io/File;
    .local v14, "devLogoFileOut":Ljava/io/File;
    :try_start_3
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1389
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1390
    .end local v19    # "out":Ljava/io/FileOutputStream;
    .local v20, "out":Ljava/io/FileOutputStream;
    const/16 v18, 0x0

    .line 1391
    .local v18, "logoData":I
    :goto_0
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->read()I

    move-result v18

    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    .line 1392
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_0

    .line 1400
    :catch_0
    move-exception v15

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/FileOutputStream;
    .restart local v19    # "out":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "in":Ljava/io/FileInputStream;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14    # "devLogoFileOut":Ljava/io/File;
    .restart local v13    # "devLogoFileOut":Ljava/io/File;
    move-object v11, v12

    .line 1401
    .end local v12    # "devLogoFileIn":Ljava/io/File;
    .end local v18    # "logoData":I
    .restart local v11    # "devLogoFileIn":Ljava/io/File;
    .local v15, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    const-string v2, "MtpDatabase"

    const-string v3, "File copy failed"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1404
    if-eqz v16, :cond_0

    .line 1405
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 1406
    :cond_0
    if-eqz v19, :cond_1

    .line 1407
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1412
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 1394
    .end local v11    # "devLogoFileIn":Ljava/io/File;
    .end local v13    # "devLogoFileOut":Ljava/io/File;
    .end local v16    # "in":Ljava/io/FileInputStream;
    .end local v19    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v14    # "devLogoFileOut":Ljava/io/File;
    .restart local v17    # "in":Ljava/io/FileInputStream;
    .restart local v18    # "logoData":I
    .restart local v20    # "out":Ljava/io/FileOutputStream;
    :cond_2
    const/16 v4, 0x3000

    const/4 v5, 0x0

    :try_start_7
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v9, 0x3e8

    div-long v9, v2, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v10}, Landroid/mtp/MtpDatabase;->addFileInfo(Ljava/lang/String;IIIJJ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v19, v20

    .line 1404
    .end local v18    # "logoData":I
    .end local v20    # "out":Ljava/io/FileOutputStream;
    .restart local v19    # "out":Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v17, :cond_3

    .line 1405
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 1406
    :cond_3
    if-eqz v19, :cond_4

    .line 1407
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_4
    move-object/from16 v16, v17

    .end local v17    # "in":Ljava/io/FileInputStream;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14    # "devLogoFileOut":Ljava/io/File;
    .restart local v13    # "devLogoFileOut":Ljava/io/File;
    move-object v11, v12

    .line 1410
    .end local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v11    # "devLogoFileIn":Ljava/io/File;
    goto :goto_2

    .line 1399
    .end local v11    # "devLogoFileIn":Ljava/io/File;
    .end local v13    # "devLogoFileOut":Ljava/io/File;
    .end local v16    # "in":Ljava/io/FileInputStream;
    .restart local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v14    # "devLogoFileOut":Ljava/io/File;
    .restart local v17    # "in":Ljava/io/FileInputStream;
    :cond_5
    :try_start_9
    const-string v2, "MtpDatabase"

    const-string v3, "Same file exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    .line 1400
    :catch_1
    move-exception v15

    move-object/from16 v16, v17

    .end local v17    # "in":Ljava/io/FileInputStream;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14    # "devLogoFileOut":Ljava/io/File;
    .restart local v13    # "devLogoFileOut":Ljava/io/File;
    move-object v11, v12

    .end local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v11    # "devLogoFileIn":Ljava/io/File;
    goto :goto_1

    .line 1408
    .end local v11    # "devLogoFileIn":Ljava/io/File;
    .end local v13    # "devLogoFileOut":Ljava/io/File;
    .end local v16    # "in":Ljava/io/FileInputStream;
    .restart local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v14    # "devLogoFileOut":Ljava/io/File;
    .restart local v17    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v15

    .line 1409
    .local v15, "e":Ljava/io/IOException;
    const-string v2, "MtpDatabase"

    const-string v3, "File stream close failed"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v16, v17

    .end local v17    # "in":Ljava/io/FileInputStream;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14    # "devLogoFileOut":Ljava/io/File;
    .restart local v13    # "devLogoFileOut":Ljava/io/File;
    move-object v11, v12

    .line 1411
    .end local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v11    # "devLogoFileIn":Ljava/io/File;
    goto :goto_2

    .line 1408
    .local v15, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v15

    .line 1409
    .local v15, "e":Ljava/io/IOException;
    const-string v2, "MtpDatabase"

    const-string v3, "File stream close failed"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1403
    .end local v15    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 1404
    :goto_4
    if-eqz v16, :cond_6

    .line 1405
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 1406
    :cond_6
    if-eqz v19, :cond_7

    .line 1407
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 1410
    :cond_7
    :goto_5
    throw v2

    .line 1408
    :catch_4
    move-exception v15

    .line 1409
    .restart local v15    # "e":Ljava/io/IOException;
    const-string v3, "MtpDatabase"

    const-string v4, "File stream close failed"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1403
    .end local v11    # "devLogoFileIn":Ljava/io/File;
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v12    # "devLogoFileIn":Ljava/io/File;
    :catchall_1
    move-exception v2

    move-object v11, v12

    .end local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v11    # "devLogoFileIn":Ljava/io/File;
    goto :goto_4

    .end local v11    # "devLogoFileIn":Ljava/io/File;
    .end local v16    # "in":Ljava/io/FileInputStream;
    .restart local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v17    # "in":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v2

    move-object/from16 v16, v17

    .end local v17    # "in":Ljava/io/FileInputStream;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v11    # "devLogoFileIn":Ljava/io/File;
    goto :goto_4

    .end local v11    # "devLogoFileIn":Ljava/io/File;
    .end local v13    # "devLogoFileOut":Ljava/io/File;
    .end local v16    # "in":Ljava/io/FileInputStream;
    .restart local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v14    # "devLogoFileOut":Ljava/io/File;
    .restart local v17    # "in":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v2

    move-object/from16 v16, v17

    .end local v17    # "in":Ljava/io/FileInputStream;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14    # "devLogoFileOut":Ljava/io/File;
    .restart local v13    # "devLogoFileOut":Ljava/io/File;
    move-object v11, v12

    .end local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v11    # "devLogoFileIn":Ljava/io/File;
    goto :goto_4

    .end local v11    # "devLogoFileIn":Ljava/io/File;
    .end local v13    # "devLogoFileOut":Ljava/io/File;
    .end local v16    # "in":Ljava/io/FileInputStream;
    .end local v19    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v14    # "devLogoFileOut":Ljava/io/File;
    .restart local v17    # "in":Ljava/io/FileInputStream;
    .restart local v18    # "logoData":I
    .restart local v20    # "out":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v2

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/FileOutputStream;
    .restart local v19    # "out":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "in":Ljava/io/FileInputStream;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14    # "devLogoFileOut":Ljava/io/File;
    .restart local v13    # "devLogoFileOut":Ljava/io/File;
    move-object v11, v12

    .end local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v11    # "devLogoFileIn":Ljava/io/File;
    goto :goto_4

    .line 1400
    .end local v18    # "logoData":I
    :catch_5
    move-exception v15

    goto/16 :goto_1

    .end local v11    # "devLogoFileIn":Ljava/io/File;
    .restart local v12    # "devLogoFileIn":Ljava/io/File;
    :catch_6
    move-exception v15

    move-object v11, v12

    .end local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v11    # "devLogoFileIn":Ljava/io/File;
    goto/16 :goto_1

    .end local v11    # "devLogoFileIn":Ljava/io/File;
    .end local v16    # "in":Ljava/io/FileInputStream;
    .restart local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v17    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v15

    move-object/from16 v16, v17

    .end local v17    # "in":Ljava/io/FileInputStream;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12    # "devLogoFileIn":Ljava/io/File;
    .restart local v11    # "devLogoFileIn":Ljava/io/File;
    goto/16 :goto_1
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 11
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 852
    if-ne p1, v0, :cond_6

    .line 854
    if-nez p2, :cond_3

    .line 856
    if-nez p3, :cond_1

    .line 858
    const/4 v4, 0x0

    .line 859
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x0

    .line 923
    .local v5, "whereArgs":[Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 924
    if-nez v4, :cond_c

    .line 925
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 926
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 944
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    move-object v7, v6

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 861
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_1
    if-ne p3, v0, :cond_2

    .line 863
    const/4 p3, 0x0

    .line 865
    :cond_2
    const-string/jumbo v4, "parent=?"

    .line 866
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 870
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_4

    .line 872
    const-string v4, "format=?"

    .line 873
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 875
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_4
    if-ne p3, v0, :cond_5

    .line 877
    const/4 p3, 0x0

    .line 879
    :cond_5
    const-string v4, "format=? AND parent=?"

    .line 880
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 886
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_6
    if-nez p2, :cond_9

    .line 888
    if-nez p3, :cond_7

    .line 890
    const-string/jumbo v4, "storage_id=?"

    .line 891
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 893
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_7
    if-ne p3, v0, :cond_8

    .line 895
    const/4 p3, 0x0

    .line 897
    :cond_8
    const-string/jumbo v4, "storage_id=? AND parent=?"

    .line 898
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 903
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_9
    if-nez p3, :cond_a

    .line 905
    const-string/jumbo v4, "storage_id=? AND format=?"

    .line 906
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 909
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_a
    if-ne p3, v0, :cond_b

    .line 911
    const/4 p3, 0x0

    .line 913
    :cond_b
    const-string/jumbo v4, "storage_id=? AND format=? AND parent=?"

    .line 914
    .restart local v4    # "where":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_0

    .line 928
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 931
    array-length v0, v5

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v10, v0, [Ljava/lang/String;

    .line 934
    .local v10, "newWhereArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v5

    if-ge v8, v0, :cond_d

    .line 935
    aget-object v0, v5, v8

    aput-object v0, v10, v8

    .line 934
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 937
    :cond_d
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_e

    .line 938
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v0, v0, v9

    aput-object v0, v10, v8

    .line 937
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 940
    :cond_e
    move-object v5, v10

    goto/16 :goto_1
.end method

.method private deleteFile(I)I
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 1596
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/mtp/MtpDatabase;->deleteFile(IZ)I

    move-result v0

    return v0
.end method

.method private deleteFile(IZ)I
    .locals 17
    .param p1, "handle"    # I
    .param p2, "move"    # Z

    .prologue
    .line 1600
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1601
    const/4 v15, 0x0

    .line 1602
    .local v15, "path":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1604
    .local v12, "format":I
    const/4 v9, 0x0

    .line 1606
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 1608
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1611
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1612
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 1617
    if-eqz v15, :cond_0

    if-nez v12, :cond_3

    .line 1618
    :cond_0
    const/16 v1, 0x2002

    .line 1678
    if-eqz v9, :cond_1

    .line 1679
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v1

    .line 1614
    :cond_2
    const/16 v1, 0x2009

    .line 1678
    if-eqz v9, :cond_1

    .line 1679
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1622
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    .line 1623
    const/16 v1, 0x200d

    .line 1678
    if-eqz v9, :cond_1

    .line 1679
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1626
    :cond_4
    const/16 v1, 0x3001

    if-ne v12, v1, :cond_5

    .line 1629
    const/16 v16, 0x0

    .line 1630
    .local v16, "uri":Landroid/net/Uri;
    if-eqz p2, :cond_7

    .line 1631
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 1636
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v3, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v16

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1642
    .local v10, "count":I
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.mtp.action.MTP_DELETE_FILE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1643
    .local v13, "intent":Landroid/content/Intent;
    const-string v1, "_data"

    invoke-virtual {v13, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1644
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1648
    .end local v10    # "count":I
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_5
    const/16 v16, 0x0

    .line 1649
    .restart local v16    # "uri":Landroid/net/Uri;
    if-eqz p2, :cond_8

    .line 1650
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, p1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v16

    .line 1655
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    .line 1657
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.mtp.action.MTP_DELETE_FILE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1658
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v1, "_data"

    invoke-virtual {v13, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1659
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1661
    const/16 v1, 0x3001

    if-eq v12, v1, :cond_6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v15, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    .line 1664
    const/4 v1, 0x0

    :try_start_3
    const-string v2, "/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1665
    .local v14, "parentPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "unhide"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v14, v4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1670
    .end local v14    # "parentPath":Ljava/lang/String;
    :cond_6
    :goto_3
    const/16 v1, 0x2001

    .line 1678
    if-eqz v9, :cond_1

    .line 1679
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1634
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    goto/16 :goto_1

    .line 1653
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, p1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v16

    goto :goto_2

    .line 1666
    .restart local v13    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v11

    .line 1667
    .local v11, "e":Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1674
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v16    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v11

    .line 1675
    .restart local v11    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in deleteFile"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1676
    const/16 v1, 0x2002

    .line 1678
    if-eqz v9, :cond_1

    .line 1679
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1672
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v16    # "uri":Landroid/net/Uri;
    :cond_9
    const/16 v1, 0x2009

    .line 1678
    if-eqz v9, :cond_1

    .line 1679
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1678
    .end local v16    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_a

    .line 1679
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I
    .param p4, "succeeded"    # Z

    .prologue
    .line 392
    if-eqz p4, :cond_3

    .line 395
    const v4, 0xba05

    if-ne p3, v4, :cond_2

    .line 397
    move-object v2, p1

    .line 398
    .local v2, "name":Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 399
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 400
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 403
    :cond_0
    const-string v4, ".pla"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 407
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 408
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v4, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 412
    const-string/jumbo v4, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    :try_start_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v6, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v6, v3}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 416
    .restart local v1    # "lastSlash":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 423
    :cond_3
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    goto :goto_0
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 22
    .param p1, "property"    # I
    .param p2, "outIntValue"    # [J
    .param p3, "outStringValue"    # [C

    .prologue
    .line 1415
    sparse-switch p1, :sswitch_data_0

    .line 1501
    const/16 v19, 0x200a

    :goto_0
    return v19

    .line 1418
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 1420
    .local v14, "resources":Landroid/content/res/Resources;
    :try_start_0
    new-instance v7, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/etc/Pantech_white_72.ico"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1421
    .local v7, "file":Ljava/io/File;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1422
    .local v8, "fres":Ljava/io/FileInputStream;
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v12

    .line 1423
    .local v12, "len":I
    new-array v4, v12, [B

    .line 1424
    .local v4, "data":[B
    :cond_0
    invoke-virtual {v8, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1427
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 1428
    const/16 v19, 0x0

    int-to-long v0, v12

    move-wide/from16 v20, v0

    aput-wide v20, p2, v19

    .line 1429
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    add-int/lit8 v19, v12, 0x1

    move/from16 v0, v19

    if-ge v10, v0, :cond_1

    .line 1430
    add-int/lit8 v19, v10, -0x1

    aget-byte v19, v4, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    aput-wide v19, p2, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1431
    .end local v4    # "data":[B
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fres":Ljava/io/FileInputStream;
    .end local v10    # "i":I
    .end local v12    # "len":I
    :catch_0
    move-exception v6

    .line 1432
    .local v6, "e":Ljava/lang/Exception;
    const-string v19, "MtpDatabase"

    const-string v20, "File read error"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1433
    const/16 v19, 0x2002

    goto :goto_0

    .line 1435
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "data":[B
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fres":Ljava/io/FileInputStream;
    .restart local v10    # "i":I
    .restart local v12    # "len":I
    :cond_1
    const/16 v19, 0x2001

    goto :goto_0

    .line 1446
    .end local v4    # "data":[B
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fres":Ljava/io/FileInputStream;
    .end local v10    # "i":I
    .end local v12    # "len":I
    .end local v14    # "resources":Landroid/content/res/Resources;
    :sswitch_1
    const-string/jumbo v19, "ro.product.model"

    const-string v20, "MTP Device"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1447
    .local v17, "value":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v13

    .line 1448
    .local v13, "length":I
    const/16 v19, 0xff

    move/from16 v0, v19

    if-le v13, v0, :cond_2

    .line 1449
    const/4 v13, 0x0

    .line 1452
    :cond_2
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v13, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1453
    const/16 v19, 0x0

    aput-char v19, p3, v13

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/mtp/MtpStorage;

    .line 1458
    .local v15, "storage":Landroid/mtp/MtpStorage;
    const/16 v16, 0x0

    .line 1461
    .local v16, "storageId":I
    if-eqz v15, :cond_4

    .line 1462
    invoke-virtual {v15}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v16

    .line 1467
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/etc/DevLogo.fil"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/DevLogo.fil"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Landroid/mtp/MtpDatabase;->copyDevLogo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1472
    invoke-static {}, Landroid/os/Environment;->get2ndExternalStorageState()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "mounted"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1473
    const-string v19, "MtpDatabase"

    const-string v20, "checking 2nd stroage\'s mount state"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/os/Environment;->get2ndExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "storage":Landroid/mtp/MtpStorage;
    check-cast v15, Landroid/mtp/MtpStorage;

    .line 1477
    .restart local v15    # "storage":Landroid/mtp/MtpStorage;
    if-eqz v15, :cond_5

    .line 1478
    invoke-virtual {v15}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v16

    .line 1482
    :goto_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/etc/DevLogo.fil"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->get2ndExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/DevLogo.fil"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Landroid/mtp/MtpDatabase;->copyDevLogo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1487
    :cond_3
    const/16 v19, 0x2001

    goto/16 :goto_0

    .line 1464
    :cond_4
    const v16, 0x10001

    goto/16 :goto_2

    .line 1480
    :cond_5
    const v16, 0x20001

    goto :goto_3

    .line 1491
    .end local v13    # "length":I
    .end local v15    # "storage":Landroid/mtp/MtpStorage;
    .end local v16    # "storageId":I
    .end local v17    # "value":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "window"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/WindowManager;

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 1493
    .local v5, "display":Landroid/view/Display;
    invoke-virtual {v5}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v18

    .line 1494
    .local v18, "width":I
    invoke-virtual {v5}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v9

    .line 1495
    .local v9, "height":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1496
    .local v11, "imageSize":Ljava/lang/String;
    const/16 v19, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1497
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x0

    aput-char v20, p3, v19

    .line 1498
    const/16 v19, 0x2001

    goto/16 :goto_0

    .line 1415
    :sswitch_data_0
    .sparse-switch
        0x5003 -> :sswitch_2
        0xd401 -> :sswitch_1
        0xd402 -> :sswitch_1
        0xd405 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getFreeSpace(I)J
    .locals 6
    .param p0, "storageid"    # I

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 540
    .local v1, "storageDirectory":Ljava/lang/String;
    const v2, 0x10001

    if-ne p0, v2, :cond_0

    .line 541
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 542
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 543
    .local v0, "fs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x6400000

    sub-long/2addr v2, v4

    .line 549
    .end local v0    # "fs":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 544
    :cond_0
    const v2, 0x20001

    if-ne p0, v2, :cond_1

    .line 545
    invoke-static {}, Landroid/os/Environment;->get2ndExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 546
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 547
    .restart local v0    # "fs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    goto :goto_0

    .line 549
    .end local v0    # "fs":Landroid/os/StatFs;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getNumObjects(III)I
    .locals 4
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .prologue
    .line 975
    const/4 v0, 0x0

    .line 977
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    move-result-object v0

    .line 978
    if-eqz v0, :cond_1

    .line 979
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 984
    if-eqz v0, :cond_0

    .line 985
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 988
    :cond_0
    :goto_0
    return v2

    .line 984
    :cond_1
    if-eqz v0, :cond_2

    .line 985
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 988
    :cond_2
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 981
    :catch_0
    move-exception v1

    .line 982
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 984
    if-eqz v0, :cond_2

    .line 985
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 984
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 985
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getObjectFilePath(I[C[J)I
    .locals 12
    .param p1, "handle"    # I
    .param p2, "outFilePath"    # [C
    .param p3, "outFileLengthFormat"    # [J

    .prologue
    const/16 v11, 0x2001

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1560
    if-nez p1, :cond_1

    .line 1562
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1563
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput-char v2, p2, v0

    .line 1564
    const-wide/16 v0, 0x0

    aput-wide v0, p3, v2

    .line 1565
    const-wide/16 v0, 0x3001

    aput-wide v0, p3, v3

    move v0, v11

    .line 1589
    :cond_0
    :goto_0
    return v0

    .line 1568
    :cond_1
    const/4 v8, 0x0

    .line 1570
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1572
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1573
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1574
    .local v10, "path":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1575
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, p2, v0

    .line 1578
    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 1579
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p3, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    if-eqz v8, :cond_2

    .line 1589
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v11

    goto :goto_0

    .line 1582
    .end local v10    # "path":Ljava/lang/String;
    :cond_3
    const/16 v0, 0x2009

    .line 1588
    if-eqz v8, :cond_0

    .line 1589
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1584
    :catch_0
    move-exception v9

    .line 1585
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1586
    const/16 v0, 0x2002

    .line 1588
    if-eqz v8, :cond_0

    .line 1589
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1588
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 1589
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 15
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outCreatedModified"    # [J

    .prologue
    .line 1521
    const/4 v9, 0x0

    .line 1523
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 1525
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1526
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v1

    .line 1527
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v1

    .line 1528
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v1

    .line 1531
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1532
    .local v13, "path":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v13, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 1533
    .local v12, "lastSlash":I
    if-ltz v12, :cond_3

    add-int/lit8 v14, v12, 0x1

    .line 1534
    .local v14, "start":I
    :goto_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    .line 1535
    .local v11, "end":I
    sub-int v1, v11, v14

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 1536
    add-int/lit16 v11, v14, 0xff

    .line 1538
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v11, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1539
    sub-int v1, v11, v14

    const/4 v2, 0x0

    aput-char v2, p3, v1

    .line 1541
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p4, v1

    .line 1542
    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p4, v1

    .line 1544
    const/4 v1, 0x0

    aget-wide v1, p4, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1545
    const/4 v1, 0x0

    const/4 v2, 0x1

    aget-wide v2, p4, v2

    aput-wide v2, p4, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1547
    :cond_1
    const/4 v1, 0x1

    .line 1552
    if-eqz v9, :cond_2

    .line 1553
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1556
    .end local v11    # "end":I
    .end local v12    # "lastSlash":I
    .end local v13    # "path":Ljava/lang/String;
    .end local v14    # "start":I
    :cond_2
    :goto_1
    return v1

    .line 1533
    .restart local v12    # "lastSlash":I
    .restart local v13    # "path":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 1552
    .end local v12    # "lastSlash":I
    .end local v13    # "path":Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_5

    .line 1553
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1556
    :cond_5
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1549
    :catch_0
    move-exception v10

    .line 1550
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in getObjectInfo"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1552
    if-eqz v9, :cond_5

    .line 1553
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1552
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    .line 1553
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method private getObjectList(III)[I
    .locals 8
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .prologue
    const/4 v5, 0x0

    .line 949
    const/4 v0, 0x0

    .line 951
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 952
    if-nez v0, :cond_2

    .line 967
    if-eqz v0, :cond_0

    .line 968
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v4, v5

    .line 971
    :cond_1
    :goto_0
    return-object v4

    .line 955
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 956
    .local v1, "count":I
    if-lez v1, :cond_4

    .line 957
    new-array v4, v1, [I

    .line 958
    .local v4, "result":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 959
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 960
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v4, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 958
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 967
    :cond_3
    if-eqz v0, :cond_1

    .line 968
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 967
    .end local v3    # "i":I
    .end local v4    # "result":[I
    :cond_4
    if-eqz v0, :cond_5

    .line 968
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v1    # "count":I
    :cond_5
    :goto_2
    move-object v4, v5

    .line 971
    goto :goto_0

    .line 964
    :catch_0
    move-exception v2

    .line 965
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in getObjectList"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 967
    if-eqz v0, :cond_5

    .line 968
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 967
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_6

    .line 968
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5
.end method

.method private getObjectPropertyList(JIJII)Landroid/mtp/MtpPropertyList;
    .locals 6
    .param p1, "handle"    # J
    .param p3, "format"    # I
    .param p4, "property"    # J
    .param p6, "groupCode"    # I
    .param p7, "depth"    # I

    .prologue
    const/4 v3, 0x0

    .line 1194
    if-eqz p6, :cond_0

    .line 1195
    new-instance v1, Landroid/mtp/MtpPropertyList;

    const v2, 0xa807

    invoke-direct {v1, v3, v2}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 1217
    :goto_0
    return-object v1

    .line 1199
    :cond_0
    const-wide v1, 0xffffffffL

    cmp-long v1, p4, v1

    if-nez v1, :cond_2

    .line 1200
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 1201
    .local v0, "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_1

    .line 1202
    invoke-direct {p0, p3}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v5

    .line 1203
    .local v5, "propertyList":[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 1205
    .restart local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    .end local v5    # "propertyList":[I
    :cond_1
    :goto_1
    long-to-int v1, p1

    invoke-virtual {v0, v1, p3, p7}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v1

    goto :goto_0

    .line 1208
    .end local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_2
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 1209
    .restart local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_1

    .line 1210
    const/4 v1, 0x1

    new-array v5, v1, [I

    long-to-int v1, p4

    aput v1, v5, v3

    .line 1211
    .restart local v5    # "propertyList":[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 1213
    .restart local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    long-to-int v3, p4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private getObjectReferences(I)[I
    .locals 14
    .param p1, "handle"    # I

    .prologue
    const/4 v13, 0x0

    .line 1685
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v3, p1

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 1686
    .local v2, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1688
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1689
    if-nez v8, :cond_2

    .line 1704
    if-eqz v8, :cond_0

    .line 1705
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v12, v13

    .line 1708
    :cond_1
    :goto_0
    return-object v12

    .line 1692
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1693
    .local v9, "count":I
    if-lez v9, :cond_4

    .line 1694
    new-array v12, v9, [I

    .line 1695
    .local v12, "result":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v9, :cond_3

    .line 1696
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1697
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v12, v11
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1695
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1704
    :cond_3
    if-eqz v8, :cond_1

    .line 1705
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1704
    .end local v11    # "i":I
    .end local v12    # "result":[I
    :cond_4
    if-eqz v8, :cond_5

    .line 1705
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9    # "count":I
    :cond_5
    :goto_2
    move-object v12, v13

    .line 1708
    goto :goto_0

    .line 1701
    :catch_0
    move-exception v10

    .line 1702
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectList"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1704
    if-eqz v8, :cond_5

    .line 1705
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1704
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 1705
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 1

    .prologue
    .line 1177
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xd401
        0xd402
        0x5003
        0xd406
        0xd405
    .end array-data
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 1153
    sparse-switch p1, :sswitch_data_0

    .line 1172
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    :goto_0
    return-object v0

    .line 1159
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    goto :goto_0

    .line 1163
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    goto :goto_0

    .line 1168
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    goto :goto_0

    .line 1170
    :sswitch_3
    sget-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    goto :goto_0

    .line 1153
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x3008 -> :sswitch_0
        0x3009 -> :sswitch_0
        0x300b -> :sswitch_1
        0x3801 -> :sswitch_2
        0x3804 -> :sswitch_2
        0x3807 -> :sswitch_2
        0x380b -> :sswitch_2
        0xb901 -> :sswitch_0
        0xb902 -> :sswitch_0
        0xb903 -> :sswitch_0
        0xb981 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    .prologue
    .line 992
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3000
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x300b
        0x3801
        0x3802
        0x3804
        0x3807
        0x3808
        0x380b
        0x380d
        0xb901
        0xb902
        0xb903
        0xb982
        0xb983
        0xb984
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0x300a
        0x300c
        0xba83
        0xba85
        0xba86
    .end array-data
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 297
    :cond_2
    const/4 v0, 0x0

    .line 298
    .local v0, "allowed":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 299
    .local v2, "pathLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    if-nez v0, :cond_0

    .line 300
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 301
    .local v3, "subdir":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 302
    .local v4, "subdirLength":I
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 305
    const/4 v0, 0x1

    .line 299
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 257
    const-string v10, "device-properties"

    .line 258
    .local v10, "devicePropertiesName":Ljava/lang/String;
    const-string v1, "device-properties"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 259
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 261
    .local v9, "databaseFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 267
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "device-properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_4

    .line 269
    const-string/jumbo v1, "properties"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 271
    if-eqz v8, :cond_4

    .line 272
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 273
    .local v11, "e":Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 275
    .local v12, "name":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 276
    .local v13, "value":Ljava/lang/String;
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 281
    .end local v11    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 282
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "failed to migrate device properties"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 287
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 289
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_2
    return-void

    .line 278
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "c":Landroid/database/Cursor;
    .local v11, "e":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :try_start_2
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    .end local v11    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_5
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 284
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v1
.end method

.method private insertDir(Ljava/io/File;I)V
    .locals 18
    .param p1, "file"    # Ljava/io/File;
    .param p2, "storageid"    # I

    .prologue
    .line 489
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 490
    .local v15, "parentPath":Ljava/lang/String;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertDir parentPath= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v11, 0x0

    .line 492
    .local v11, "c":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 494
    .local v14, "parent":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 496
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 497
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 498
    .end local v14    # "parent":I
    .local v4, "parent":I
    :try_start_1
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertDir parent= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 503
    :goto_0
    if-eqz v11, :cond_0

    .line 504
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 508
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->get2ndExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    :cond_1
    const/4 v4, 0x0

    .line 512
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3001

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v16, 0x3e8

    div-long v8, v8, v16

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move/from16 v5, p2

    invoke-direct/range {v1 .. v10}, Landroid/mtp/MtpDatabase;->beginSendObject(Ljava/lang/String;IIIJJZ)I

    move-result v13

    .line 513
    .local v13, "handle":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    const/16 v5, 0x3001

    invoke-virtual {v1, v2, v3, v13, v5}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    .line 515
    return-void

    .line 500
    .end local v4    # "parent":I
    .end local v13    # "handle":I
    .restart local v14    # "parent":I
    :catch_0
    move-exception v12

    move v4, v14

    .line 501
    .end local v14    # "parent":I
    .restart local v4    # "parent":I
    .local v12, "e":Landroid/os/RemoteException;
    :goto_2
    :try_start_2
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in insertDir"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 503
    if-eqz v11, :cond_0

    .line 504
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 503
    .end local v4    # "parent":I
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v14    # "parent":I
    :catchall_0
    move-exception v1

    move v4, v14

    .end local v14    # "parent":I
    .restart local v4    # "parent":I
    :goto_3
    if-eqz v11, :cond_3

    .line 504
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 503
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 500
    :catch_1
    move-exception v12

    goto :goto_2

    .end local v4    # "parent":I
    .restart local v14    # "parent":I
    :cond_4
    move v4, v14

    .end local v14    # "parent":I
    .restart local v4    # "parent":I
    goto :goto_0
.end method

.method private isScan(Ljava/lang/String;)Z
    .locals 13
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 468
    const/4 v8, 0x0

    .line 471
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 473
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 475
    .local v10, "handle":I
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isScan handle= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    if-eqz v8, :cond_0

    .line 482
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v11

    .line 485
    .end local v10    # "handle":I
    :goto_0
    return v0

    .line 481
    :cond_1
    if-eqz v8, :cond_2

    .line 482
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v12

    .line 485
    goto :goto_0

    .line 478
    :catch_0
    move-exception v9

    .line 479
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in isScan"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    if-eqz v8, :cond_2

    .line 482
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 481
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 482
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v1

    .line 315
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 316
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    const/4 v1, 0x1

    goto :goto_0

    .line 315
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private moveObject(III)I
    .locals 51
    .param p1, "handle"    # I
    .param p2, "storageid"    # I
    .param p3, "parent"    # I

    .prologue
    .line 554
    const/16 v43, 0x0

    .local v43, "oldpath":Ljava/lang/String;
    const/16 v39, 0x0

    .local v39, "newparentpath":Ljava/lang/String;
    const/16 v40, 0x0

    .line 555
    .local v40, "newpath":Ljava/lang/String;
    const/16 v38, -0x1

    .line 556
    .local v38, "newparent":I
    const/16 v46, 0x0

    .line 557
    .local v46, "pathindex":I
    const/16 v28, 0x0

    .line 558
    .local v28, "format":I
    const/16 v42, 0x0

    .line 559
    .local v42, "oldhandle":I
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v50, v0

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v50, v4

    .line 561
    .local v50, "whereArgs":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 564
    :cond_0
    if-nez p3, :cond_6

    const v4, 0x10001

    move/from16 v0, p2

    if-ne v0, v4, :cond_6

    .line 565
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v39

    .line 572
    :goto_0
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "storageid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newparentpath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/16 v18, 0x0

    .line 575
    .local v18, "c":Landroid/database/Cursor;
    if-eqz p3, :cond_2

    .line 577
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v7, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v18

    .line 579
    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 580
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 581
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newparentpath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    :cond_1
    if-eqz v18, :cond_2

    .line 588
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 593
    :cond_2
    if-eqz p1, :cond_4

    .line 595
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v7, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v18

    .line 597
    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 598
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 599
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "oldpath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 605
    :cond_3
    if-eqz v18, :cond_4

    .line 606
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 611
    :cond_4
    if-nez v39, :cond_c

    .line 612
    const/16 v4, 0x2009

    move/from16 v6, v28

    .end local v28    # "format":I
    .local v6, "format":I
    move/from16 v7, v38

    .end local v38    # "newparent":I
    .local v7, "newparent":I
    move-object/from16 v5, v40

    .line 842
    .end local v40    # "newpath":Ljava/lang/String;
    .local v5, "newpath":Ljava/lang/String;
    :cond_5
    :goto_1
    return v4

    .line 566
    .end local v5    # "newpath":Ljava/lang/String;
    .end local v6    # "format":I
    .end local v7    # "newparent":I
    .end local v18    # "c":Landroid/database/Cursor;
    .restart local v28    # "format":I
    .restart local v38    # "newparent":I
    .restart local v40    # "newpath":Ljava/lang/String;
    :cond_6
    if-nez p3, :cond_7

    const v4, 0x20001

    move/from16 v0, p2

    if-ne v0, v4, :cond_7

    .line 567
    invoke-static {}, Landroid/os/Environment;->get2ndExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_0

    .line 569
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    move-object/from16 v39, v0

    goto/16 :goto_0

    .line 583
    .restart local v18    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v22

    .line 584
    .local v22, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "MtpDatabase"

    const-string v8, "RemoteException in newparentpath"

    move-object/from16 v0, v22

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 585
    const/16 v4, 0x2002

    .line 587
    if-eqz v18, :cond_8

    .line 588
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_8
    move/from16 v6, v28

    .end local v28    # "format":I
    .restart local v6    # "format":I
    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    move-object/from16 v5, v40

    .end local v40    # "newpath":Ljava/lang/String;
    .restart local v5    # "newpath":Ljava/lang/String;
    goto :goto_1

    .line 587
    .end local v5    # "newpath":Ljava/lang/String;
    .end local v6    # "format":I
    .end local v7    # "newparent":I
    .end local v22    # "e":Landroid/os/RemoteException;
    .restart local v28    # "format":I
    .restart local v38    # "newparent":I
    .restart local v40    # "newpath":Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v18, :cond_9

    .line 588
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v4

    .line 601
    :catch_1
    move-exception v22

    .line 602
    .restart local v22    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "MtpDatabase"

    const-string v8, "RemoteException in oldpath"

    move-object/from16 v0, v22

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 603
    const/16 v4, 0x2002

    .line 605
    if-eqz v18, :cond_a

    .line 606
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_a
    move/from16 v6, v28

    .end local v28    # "format":I
    .restart local v6    # "format":I
    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    move-object/from16 v5, v40

    .end local v40    # "newpath":Ljava/lang/String;
    .restart local v5    # "newpath":Ljava/lang/String;
    goto :goto_1

    .line 605
    .end local v5    # "newpath":Ljava/lang/String;
    .end local v6    # "format":I
    .end local v7    # "newparent":I
    .end local v22    # "e":Landroid/os/RemoteException;
    .restart local v28    # "format":I
    .restart local v38    # "newparent":I
    .restart local v40    # "newpath":Ljava/lang/String;
    :catchall_1
    move-exception v4

    if-eqz v18, :cond_b

    .line 606
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v4

    .line 614
    :cond_c
    if-nez v43, :cond_d

    .line 615
    const/16 v4, 0x2009

    move/from16 v6, v28

    .end local v28    # "format":I
    .restart local v6    # "format":I
    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    move-object/from16 v5, v40

    .end local v40    # "newpath":Ljava/lang/String;
    .restart local v5    # "newpath":Ljava/lang/String;
    goto :goto_1

    .line 618
    .end local v5    # "newpath":Ljava/lang/String;
    .end local v6    # "format":I
    .end local v7    # "newparent":I
    .restart local v28    # "format":I
    .restart local v38    # "newparent":I
    .restart local v40    # "newpath":Ljava/lang/String;
    :cond_d
    const/4 v4, 0x0

    const/16 v8, 0x10

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/16 v9, 0x10

    move-object/from16 v0, v39

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 619
    const/16 v18, 0x0

    .line 620
    const/16 v19, 0x0

    .line 621
    .local v19, "c1":Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 623
    .local v17, "bOverlap":Z
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v7, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v18

    .line 625
    if-eqz v18, :cond_35

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 626
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 627
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 628
    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 629
    const/16 v4, 0x2f

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v46

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v0, v43

    move/from16 v1, v46

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v40

    .line 632
    const/16 v19, 0x0

    .line 634
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v7, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v8, "_data=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v40, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v19

    .line 636
    if-eqz v19, :cond_e

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v4

    if-eqz v4, :cond_e

    .line 637
    const/16 v17, 0x1

    .line 643
    :cond_e
    if-eqz v19, :cond_35

    .line 644
    :try_start_6
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move/from16 v6, v28

    .end local v28    # "format":I
    .restart local v6    # "format":I
    move-object/from16 v5, v40

    .line 654
    .end local v40    # "newpath":Ljava/lang/String;
    .restart local v5    # "newpath":Ljava/lang/String;
    :goto_2
    if-eqz v18, :cond_f

    .line 655
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_f
    if-nez v17, :cond_17

    if-eqz v43, :cond_17

    if-eqz v5, :cond_17

    .line 660
    new-instance v41, Ljava/io/File;

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 661
    .local v41, "oldFile":Ljava/io/File;
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 662
    .local v35, "newFile":Ljava/io/File;
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "oldpath =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newpath =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v48

    .line 665
    .local v48, "success":Z
    if-nez v48, :cond_15

    .line 666
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "move "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/16 v4, 0x2002

    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    goto/16 :goto_1

    .line 639
    .end local v5    # "newpath":Ljava/lang/String;
    .end local v6    # "format":I
    .end local v7    # "newparent":I
    .end local v35    # "newFile":Ljava/io/File;
    .end local v41    # "oldFile":Ljava/io/File;
    .end local v48    # "success":Z
    .restart local v28    # "format":I
    .restart local v38    # "newparent":I
    .restart local v40    # "newpath":Ljava/lang/String;
    :catch_2
    move-exception v23

    .line 640
    .local v23, "e1":Landroid/os/RemoteException;
    :try_start_7
    const-string v4, "MtpDatabase"

    const-string v8, "RemoteException in getObjectFilePath"

    move-object/from16 v0, v23

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 641
    const/16 v4, 0x2002

    .line 643
    if-eqz v19, :cond_10

    .line 644
    :try_start_8
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 654
    :cond_10
    if-eqz v18, :cond_11

    .line 655
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_11
    move/from16 v6, v28

    .end local v28    # "format":I
    .restart local v6    # "format":I
    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    move-object/from16 v5, v40

    .end local v40    # "newpath":Ljava/lang/String;
    .restart local v5    # "newpath":Ljava/lang/String;
    goto/16 :goto_1

    .line 643
    .end local v5    # "newpath":Ljava/lang/String;
    .end local v6    # "format":I
    .end local v7    # "newparent":I
    .end local v23    # "e1":Landroid/os/RemoteException;
    .restart local v28    # "format":I
    .restart local v38    # "newparent":I
    .restart local v40    # "newpath":Ljava/lang/String;
    :catchall_2
    move-exception v4

    if-eqz v19, :cond_12

    .line 644
    :try_start_9
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v4
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 649
    :catch_3
    move-exception v22

    move/from16 v6, v28

    .end local v28    # "format":I
    .restart local v6    # "format":I
    move-object/from16 v5, v40

    .line 650
    .end local v40    # "newpath":Ljava/lang/String;
    .restart local v5    # "newpath":Ljava/lang/String;
    .restart local v22    # "e":Landroid/os/RemoteException;
    :try_start_a
    const-string v4, "MtpDatabase"

    const-string v8, "RemoteException in getObjectFilePath"

    move-object/from16 v0, v22

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    .line 651
    const/16 v4, 0x2002

    .line 654
    if-eqz v18, :cond_13

    .line 655
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_13
    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    goto/16 :goto_1

    .line 654
    .end local v5    # "newpath":Ljava/lang/String;
    .end local v6    # "format":I
    .end local v7    # "newparent":I
    .end local v22    # "e":Landroid/os/RemoteException;
    .restart local v28    # "format":I
    .restart local v38    # "newparent":I
    .restart local v40    # "newpath":Ljava/lang/String;
    :catchall_3
    move-exception v4

    move/from16 v6, v28

    .end local v28    # "format":I
    .restart local v6    # "format":I
    move-object/from16 v5, v40

    .end local v40    # "newpath":Ljava/lang/String;
    .restart local v5    # "newpath":Ljava/lang/String;
    :goto_3
    if-eqz v18, :cond_14

    .line 655
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v4

    .line 669
    .restart local v35    # "newFile":Ljava/io/File;
    .restart local v41    # "oldFile":Ljava/io/File;
    .restart local v48    # "success":Z
    :cond_15
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 670
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->mkdir()Z

    .line 672
    :cond_16
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    const/4 v13, 0x1

    move-object/from16 v4, p0

    move/from16 v7, p3

    move/from16 v8, p2

    invoke-direct/range {v4 .. v13}, Landroid/mtp/MtpDatabase;->beginSendObject(Ljava/lang/String;IIIJJZ)I

    move-result v37

    .line 673
    .local v37, "newhandle":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, v37

    invoke-virtual {v4, v5, v8, v0, v6}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    .line 676
    .end local v35    # "newFile":Ljava/io/File;
    .end local v37    # "newhandle":I
    .end local v41    # "oldFile":Ljava/io/File;
    .end local v48    # "success":Z
    :cond_17
    const/16 v18, 0x0

    .line 677
    const/16 v19, 0x0

    .line 679
    if-eqz v43, :cond_19

    .line 680
    :try_start_b
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v10, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v11, "_data LIKE ?"

    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v7 .. v14}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-result-object v18

    .line 687
    if-nez v18, :cond_1b

    .line 688
    const/16 v4, 0x2002

    .line 753
    if-eqz v18, :cond_18

    .line 754
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_18
    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    goto/16 :goto_1

    .line 684
    .end local v7    # "newparent":I
    .restart local v38    # "newparent":I
    :cond_19
    const/16 v4, 0x2009

    .line 753
    if-eqz v18, :cond_1a

    .line 754
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_1a
    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    goto/16 :goto_1

    .line 690
    .end local v7    # "newparent":I
    .restart local v38    # "newparent":I
    :cond_1b
    :try_start_c
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 691
    .local v21, "count":I
    if-lez v21, :cond_25

    .line 692
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_4
    move/from16 v0, v33

    move/from16 v1, v21

    if-ge v0, v1, :cond_25

    .line 693
    const/16 v17, 0x0

    .line 694
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 695
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 696
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 697
    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 698
    new-instance v41, Ljava/io/File;

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    .restart local v41    # "oldFile":Ljava/io/File;
    if-nez v33, :cond_1c

    .line 700
    const/4 v4, 0x0

    const/16 v8, 0x2f

    move-object/from16 v0, v43

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x2f

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v46

    .line 703
    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v0, v43

    move/from16 v1, v46

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-result-object v5

    .line 704
    const/16 v19, 0x0

    .line 706
    :try_start_d
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v10, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v11, "_data=?"

    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v5, v12, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v7 .. v14}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v19

    .line 708
    if-eqz v19, :cond_1d

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-result v4

    if-eqz v4, :cond_1d

    .line 709
    const/16 v17, 0x1

    .line 714
    :cond_1d
    if-eqz v19, :cond_1e

    .line 715
    :try_start_e
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 718
    :cond_1e
    :goto_5
    if-nez v17, :cond_34

    .line 719
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "oldpath =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newpath =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 722
    .restart local v35    # "newFile":Ljava/io/File;
    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v48

    .line 723
    .restart local v48    # "success":Z
    if-nez v48, :cond_1f

    .line 724
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "move "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_1f
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 728
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->mkdir()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 730
    :cond_20
    const/16 v19, 0x0

    .line 732
    :try_start_f
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v10, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v11, "_data=?"

    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x2f

    invoke-virtual {v5, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v7 .. v14}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v19

    .line 734
    if-eqz v19, :cond_33

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 735
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-result v7

    .line 740
    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    :goto_6
    if-eqz v19, :cond_21

    .line 741
    :try_start_10
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 744
    :cond_21
    :goto_7
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    const/4 v13, 0x1

    move-object/from16 v4, p0

    move/from16 v8, p2

    invoke-direct/range {v4 .. v13}, Landroid/mtp/MtpDatabase;->beginSendObject(Ljava/lang/String;IIIJJZ)I

    move-result v37

    .line 745
    .restart local v37    # "newhandle":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, v37

    invoke-virtual {v4, v5, v8, v0, v6}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 692
    .end local v35    # "newFile":Ljava/io/File;
    .end local v37    # "newhandle":I
    .end local v48    # "success":Z
    :goto_8
    add-int/lit8 v33, v33, 0x1

    move/from16 v38, v7

    .end local v7    # "newparent":I
    .restart local v38    # "newparent":I
    goto/16 :goto_4

    .line 711
    :catch_4
    move-exception v23

    .line 712
    .restart local v23    # "e1":Landroid/os/RemoteException;
    :try_start_11
    const-string v4, "MtpDatabase"

    const-string v8, "RemoteException in getObjectFilePath"

    move-object/from16 v0, v23

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 714
    if-eqz v19, :cond_1e

    .line 715
    :try_start_12
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto/16 :goto_5

    .line 749
    .end local v21    # "count":I
    .end local v23    # "e1":Landroid/os/RemoteException;
    .end local v33    # "i":I
    .end local v41    # "oldFile":Ljava/io/File;
    :catch_5
    move-exception v22

    move/from16 v7, v38

    .line 750
    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    .restart local v22    # "e":Landroid/os/RemoteException;
    :goto_9
    :try_start_13
    const-string v4, "MtpDatabase"

    const-string v8, "RemoteException in getObjectList"

    move-object/from16 v0, v22

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 751
    const/16 v4, 0x2002

    .line 753
    if-eqz v18, :cond_5

    .line 754
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 714
    .end local v7    # "newparent":I
    .end local v22    # "e":Landroid/os/RemoteException;
    .restart local v21    # "count":I
    .restart local v33    # "i":I
    .restart local v38    # "newparent":I
    .restart local v41    # "oldFile":Ljava/io/File;
    :catchall_4
    move-exception v4

    if-eqz v19, :cond_22

    .line 715
    :try_start_14
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_22
    throw v4
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 753
    .end local v21    # "count":I
    .end local v33    # "i":I
    .end local v41    # "oldFile":Ljava/io/File;
    :catchall_5
    move-exception v4

    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    :goto_a
    if-eqz v18, :cond_23

    .line 754
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_23
    throw v4

    .line 737
    .end local v7    # "newparent":I
    .restart local v21    # "count":I
    .restart local v33    # "i":I
    .restart local v35    # "newFile":Ljava/io/File;
    .restart local v38    # "newparent":I
    .restart local v41    # "oldFile":Ljava/io/File;
    .restart local v48    # "success":Z
    :catch_6
    move-exception v23

    .line 738
    .restart local v23    # "e1":Landroid/os/RemoteException;
    :try_start_15
    const-string v4, "MtpDatabase"

    const-string v8, "RemoteException in getObjectFilePath"

    move-object/from16 v0, v23

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 740
    if-eqz v19, :cond_32

    .line 741
    :try_start_16
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    goto :goto_7

    .line 740
    .end local v7    # "newparent":I
    .end local v23    # "e1":Landroid/os/RemoteException;
    .restart local v38    # "newparent":I
    :catchall_6
    move-exception v4

    if-eqz v19, :cond_24

    .line 741
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_24
    throw v4
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .end local v33    # "i":I
    .end local v35    # "newFile":Ljava/io/File;
    .end local v41    # "oldFile":Ljava/io/File;
    .end local v48    # "success":Z
    :cond_25
    move/from16 v7, v38

    .line 753
    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    if-eqz v18, :cond_26

    .line 754
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 757
    :cond_26
    const/16 v4, 0x2001

    goto/16 :goto_1

    .line 761
    .end local v5    # "newpath":Ljava/lang/String;
    .end local v6    # "format":I
    .end local v7    # "newparent":I
    .end local v17    # "bOverlap":Z
    .end local v19    # "c1":Landroid/database/Cursor;
    .end local v21    # "count":I
    .restart local v28    # "format":I
    .restart local v38    # "newparent":I
    .restart local v40    # "newpath":Ljava/lang/String;
    :cond_27
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "oldpath =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newparentpath =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v47, Ljava/io/File;

    move-object/from16 v0, v47

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    .local v47, "sourceF":Ljava/io/File;
    new-instance v49, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v47 .. v47}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 766
    .local v49, "targetF":Ljava/io/File;
    invoke-static/range {p2 .. p2}, Landroid/mtp/MtpDatabase;->getFreeSpace(I)J

    move-result-wide v31

    .line 767
    .local v31, "freeSpace":J
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/mtp/MtpDatabase;->checkSize(Ljava/io/File;)J

    move-result-wide v24

    .line 769
    .local v24, "fileSize":J
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "freeSpace =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v31

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileSize =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v24

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-wide v8, 0x100000000L

    cmp-long v4, v24, v8

    if-lez v4, :cond_28

    .line 773
    const-string v4, "MtpDatabase"

    const-string v8, "RESPONSE_OPERATION_NOT_SUPPORTED"

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/16 v4, 0x2005

    move/from16 v6, v28

    .end local v28    # "format":I
    .restart local v6    # "format":I
    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    move-object/from16 v5, v40

    .end local v40    # "newpath":Ljava/lang/String;
    .restart local v5    # "newpath":Ljava/lang/String;
    goto/16 :goto_1

    .line 776
    .end local v5    # "newpath":Ljava/lang/String;
    .end local v6    # "format":I
    .end local v7    # "newparent":I
    .restart local v28    # "format":I
    .restart local v38    # "newparent":I
    .restart local v40    # "newpath":Ljava/lang/String;
    :cond_28
    cmp-long v4, v24, v31

    if-lez v4, :cond_29

    .line 777
    const/16 v4, 0x200c

    move/from16 v6, v28

    .end local v28    # "format":I
    .restart local v6    # "format":I
    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    move-object/from16 v5, v40

    .end local v40    # "newpath":Ljava/lang/String;
    .restart local v5    # "newpath":Ljava/lang/String;
    goto/16 :goto_1

    .line 779
    .end local v5    # "newpath":Ljava/lang/String;
    .end local v6    # "format":I
    .end local v7    # "newparent":I
    .restart local v28    # "format":I
    .restart local v38    # "newparent":I
    .restart local v40    # "newpath":Ljava/lang/String;
    :cond_29
    const/16 v17, 0x0

    .line 780
    .restart local v17    # "bOverlap":Z
    const/16 v45, -0x1

    .line 782
    .local v45, "overlapHandle":I
    const/16 v44, 0x0

    .line 784
    .local v44, "overlapC":Landroid/database/Cursor;
    :try_start_17
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v11, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v12, "_data=?"

    const/4 v4, 0x1

    new-array v13, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v8 .. v15}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v44

    .line 786
    if-eqz v44, :cond_2a

    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 787
    const/16 v17, 0x1

    .line 788
    const/4 v4, 0x0

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 789
    const-string v4, "MtpDatabase"

    const-string v8, "bOverlap = true"

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "overlapHandle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v45

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 795
    :cond_2a
    if-eqz v44, :cond_2b

    .line 796
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->close()V

    .line 799
    :cond_2b
    :goto_b
    const/16 v44, 0x0

    .line 801
    if-eqz v17, :cond_2d

    .line 802
    new-instance v35, Ljava/io/File;

    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 803
    .restart local v35    # "newFile":Ljava/io/File;
    invoke-virtual/range {v47 .. v47}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 805
    :goto_c
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v34

    .line 806
    .local v34, "name":Ljava/lang/String;
    new-instance v36, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_new"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 807
    .end local v35    # "newFile":Ljava/io/File;
    .local v36, "newFile":Ljava/io/File;
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_31

    move-object/from16 v35, v36

    .line 809
    .end local v34    # "name":Ljava/lang/String;
    .end local v36    # "newFile":Ljava/io/File;
    .restart local v35    # "newFile":Ljava/io/File;
    :cond_2c
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "renamePath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    new-instance v49, Ljava/io/File;

    .end local v49    # "targetF":Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 811
    .restart local v49    # "targetF":Ljava/io/File;
    const-string v4, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "targetF = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    .end local v35    # "newFile":Ljava/io/File;
    :cond_2d
    invoke-virtual/range {v47 .. v47}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 815
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v49

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/mtp/MtpDatabase;->copy(Ljava/io/File;Ljava/io/File;I)V

    .line 842
    :goto_d
    const/16 v4, 0x2001

    move/from16 v6, v28

    .end local v28    # "format":I
    .restart local v6    # "format":I
    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    move-object/from16 v5, v40

    .end local v40    # "newpath":Ljava/lang/String;
    .restart local v5    # "newpath":Ljava/lang/String;
    goto/16 :goto_1

    .line 792
    .end local v5    # "newpath":Ljava/lang/String;
    .end local v6    # "format":I
    .end local v7    # "newparent":I
    .restart local v28    # "format":I
    .restart local v38    # "newparent":I
    .restart local v40    # "newpath":Ljava/lang/String;
    :catch_7
    move-exception v22

    .line 793
    .restart local v22    # "e":Landroid/os/RemoteException;
    :try_start_18
    const-string v4, "MtpDatabase"

    const-string v8, "RemoteException in getObjectFilePath"

    move-object/from16 v0, v22

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 795
    if-eqz v44, :cond_2b

    .line 796
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b

    .line 795
    .end local v22    # "e":Landroid/os/RemoteException;
    :catchall_7
    move-exception v4

    if-eqz v44, :cond_2e

    .line 796
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->close()V

    :cond_2e
    throw v4

    .line 818
    :cond_2f
    const/16 v26, 0x0

    .line 819
    .local v26, "fis":Ljava/io/FileInputStream;
    const/16 v29, 0x0

    .line 821
    .local v29, "fos":Ljava/io/FileOutputStream;
    :try_start_19
    new-instance v27, Ljava/io/FileInputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 822
    .end local v26    # "fis":Ljava/io/FileInputStream;
    .local v27, "fis":Ljava/io/FileInputStream;
    :try_start_1a
    new-instance v30, Ljava/io/FileOutputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .line 823
    .end local v29    # "fos":Ljava/io/FileOutputStream;
    .local v30, "fos":Ljava/io/FileOutputStream;
    const/16 v4, 0x1000

    :try_start_1b
    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 824
    .local v16, "b":[B
    const/16 v20, 0x0

    .line 825
    .local v20, "cnt":I
    :goto_e
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v20

    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_30

    .line 826
    const/4 v4, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    goto :goto_e

    .line 828
    .end local v16    # "b":[B
    .end local v20    # "cnt":I
    :catch_8
    move-exception v22

    move-object/from16 v29, v30

    .end local v30    # "fos":Ljava/io/FileOutputStream;
    .restart local v29    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v26, v27

    .line 829
    .end local v27    # "fis":Ljava/io/FileInputStream;
    .local v22, "e":Ljava/lang/Exception;
    .restart local v26    # "fis":Ljava/io/FileInputStream;
    :goto_f
    :try_start_1c
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 832
    :try_start_1d
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileInputStream;->close()V

    .line 833
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_a

    .line 839
    .end local v22    # "e":Ljava/lang/Exception;
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mScannerClient:Landroid/mtp/MtpDatabase$ScannerClient;

    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/mtp/MtpDatabase$ScannerClient;->scanPath(Ljava/lang/String;)V

    goto :goto_d

    .line 832
    .end local v26    # "fis":Ljava/io/FileInputStream;
    .end local v29    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "b":[B
    .restart local v20    # "cnt":I
    .restart local v27    # "fis":Ljava/io/FileInputStream;
    .restart local v30    # "fos":Ljava/io/FileOutputStream;
    :cond_30
    :try_start_1e
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V

    .line 833
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_9

    move-object/from16 v29, v30

    .end local v30    # "fos":Ljava/io/FileOutputStream;
    .restart local v29    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v26, v27

    .line 837
    .end local v27    # "fis":Ljava/io/FileInputStream;
    .restart local v26    # "fis":Ljava/io/FileInputStream;
    goto :goto_10

    .line 834
    .end local v26    # "fis":Ljava/io/FileInputStream;
    .end local v29    # "fos":Ljava/io/FileOutputStream;
    .restart local v27    # "fis":Ljava/io/FileInputStream;
    .restart local v30    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v22

    .line 836
    .local v22, "e":Ljava/io/IOException;
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v29, v30

    .end local v30    # "fos":Ljava/io/FileOutputStream;
    .restart local v29    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v26, v27

    .line 838
    .end local v27    # "fis":Ljava/io/FileInputStream;
    .restart local v26    # "fis":Ljava/io/FileInputStream;
    goto :goto_10

    .line 834
    .end local v16    # "b":[B
    .end local v20    # "cnt":I
    .local v22, "e":Ljava/lang/Exception;
    :catch_a
    move-exception v22

    .line 836
    .local v22, "e":Ljava/io/IOException;
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 831
    .end local v22    # "e":Ljava/io/IOException;
    :catchall_8
    move-exception v4

    .line 832
    :goto_11
    :try_start_1f
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileInputStream;->close()V

    .line 833
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_b

    .line 837
    :goto_12
    throw v4

    .line 834
    :catch_b
    move-exception v22

    .line 836
    .restart local v22    # "e":Ljava/io/IOException;
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 831
    .end local v22    # "e":Ljava/io/IOException;
    .end local v26    # "fis":Ljava/io/FileInputStream;
    .restart local v27    # "fis":Ljava/io/FileInputStream;
    :catchall_9
    move-exception v4

    move-object/from16 v26, v27

    .end local v27    # "fis":Ljava/io/FileInputStream;
    .restart local v26    # "fis":Ljava/io/FileInputStream;
    goto :goto_11

    .end local v26    # "fis":Ljava/io/FileInputStream;
    .end local v29    # "fos":Ljava/io/FileOutputStream;
    .restart local v27    # "fis":Ljava/io/FileInputStream;
    .restart local v30    # "fos":Ljava/io/FileOutputStream;
    :catchall_a
    move-exception v4

    move-object/from16 v29, v30

    .end local v30    # "fos":Ljava/io/FileOutputStream;
    .restart local v29    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v26, v27

    .end local v27    # "fis":Ljava/io/FileInputStream;
    .restart local v26    # "fis":Ljava/io/FileInputStream;
    goto :goto_11

    .line 828
    :catch_c
    move-exception v22

    goto :goto_f

    .end local v26    # "fis":Ljava/io/FileInputStream;
    .restart local v27    # "fis":Ljava/io/FileInputStream;
    :catch_d
    move-exception v22

    move-object/from16 v26, v27

    .end local v27    # "fis":Ljava/io/FileInputStream;
    .restart local v26    # "fis":Ljava/io/FileInputStream;
    goto :goto_f

    .line 753
    .end local v24    # "fileSize":J
    .end local v26    # "fis":Ljava/io/FileInputStream;
    .end local v28    # "format":I
    .end local v29    # "fos":Ljava/io/FileOutputStream;
    .end local v31    # "freeSpace":J
    .end local v38    # "newparent":I
    .end local v40    # "newpath":Ljava/lang/String;
    .end local v44    # "overlapC":Landroid/database/Cursor;
    .end local v45    # "overlapHandle":I
    .end local v47    # "sourceF":Ljava/io/File;
    .end local v49    # "targetF":Ljava/io/File;
    .restart local v5    # "newpath":Ljava/lang/String;
    .restart local v6    # "format":I
    .restart local v7    # "newparent":I
    .restart local v19    # "c1":Landroid/database/Cursor;
    :catchall_b
    move-exception v4

    goto/16 :goto_a

    .line 749
    .restart local v21    # "count":I
    .restart local v33    # "i":I
    .restart local v35    # "newFile":Ljava/io/File;
    .restart local v41    # "oldFile":Ljava/io/File;
    .restart local v48    # "success":Z
    :catch_e
    move-exception v22

    goto/16 :goto_9

    .line 654
    .end local v7    # "newparent":I
    .end local v21    # "count":I
    .end local v33    # "i":I
    .end local v35    # "newFile":Ljava/io/File;
    .end local v41    # "oldFile":Ljava/io/File;
    .end local v48    # "success":Z
    .local v22, "e":Landroid/os/RemoteException;
    .restart local v38    # "newparent":I
    :catchall_c
    move-exception v4

    goto/16 :goto_3

    .end local v5    # "newpath":Ljava/lang/String;
    .end local v6    # "format":I
    .end local v19    # "c1":Landroid/database/Cursor;
    .end local v22    # "e":Landroid/os/RemoteException;
    .restart local v24    # "fileSize":J
    .restart local v28    # "format":I
    .restart local v31    # "freeSpace":J
    .restart local v34    # "name":Ljava/lang/String;
    .restart local v36    # "newFile":Ljava/io/File;
    .restart local v40    # "newpath":Ljava/lang/String;
    .restart local v44    # "overlapC":Landroid/database/Cursor;
    .restart local v45    # "overlapHandle":I
    .restart local v47    # "sourceF":Ljava/io/File;
    .restart local v49    # "targetF":Ljava/io/File;
    :cond_31
    move-object/from16 v35, v36

    .end local v36    # "newFile":Ljava/io/File;
    .restart local v35    # "newFile":Ljava/io/File;
    goto/16 :goto_c

    .end local v24    # "fileSize":J
    .end local v28    # "format":I
    .end local v31    # "freeSpace":J
    .end local v34    # "name":Ljava/lang/String;
    .end local v40    # "newpath":Ljava/lang/String;
    .end local v44    # "overlapC":Landroid/database/Cursor;
    .end local v45    # "overlapHandle":I
    .end local v47    # "sourceF":Ljava/io/File;
    .end local v49    # "targetF":Ljava/io/File;
    .restart local v5    # "newpath":Ljava/lang/String;
    .restart local v6    # "format":I
    .restart local v19    # "c1":Landroid/database/Cursor;
    .restart local v21    # "count":I
    .restart local v23    # "e1":Landroid/os/RemoteException;
    .restart local v33    # "i":I
    .restart local v41    # "oldFile":Ljava/io/File;
    .restart local v48    # "success":Z
    :cond_32
    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    goto/16 :goto_7

    .end local v7    # "newparent":I
    .end local v23    # "e1":Landroid/os/RemoteException;
    .restart local v38    # "newparent":I
    :cond_33
    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    goto/16 :goto_6

    .end local v7    # "newparent":I
    .end local v35    # "newFile":Ljava/io/File;
    .end local v48    # "success":Z
    .restart local v38    # "newparent":I
    :cond_34
    move/from16 v7, v38

    .end local v38    # "newparent":I
    .restart local v7    # "newparent":I
    goto/16 :goto_8

    .end local v5    # "newpath":Ljava/lang/String;
    .end local v6    # "format":I
    .end local v7    # "newparent":I
    .end local v21    # "count":I
    .end local v33    # "i":I
    .end local v41    # "oldFile":Ljava/io/File;
    .restart local v28    # "format":I
    .restart local v38    # "newparent":I
    .restart local v40    # "newpath":Ljava/lang/String;
    :cond_35
    move/from16 v6, v28

    .end local v28    # "format":I
    .restart local v6    # "format":I
    move-object/from16 v5, v40

    .end local v40    # "newpath":Ljava/lang/String;
    .restart local v5    # "newpath":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 20
    .param p1, "handle"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 1221
    const/4 v10, 0x0

    .line 1224
    .local v10, "c":Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 1225
    .local v17, "path":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 1227
    .local v7, "whereArgs":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v5, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 1229
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1230
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 1236
    :cond_0
    if-eqz v10, :cond_1

    .line 1237
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1240
    :cond_1
    if-nez v17, :cond_4

    .line 1241
    const/16 v2, 0x2009

    .line 1321
    :cond_2
    :goto_0
    return v2

    .line 1232
    :catch_0
    move-exception v11

    .line 1233
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getObjectFilePath"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1234
    const/16 v2, 0x2002

    .line 1236
    if-eqz v10, :cond_2

    .line 1237
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1236
    .end local v11    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_3

    .line 1237
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 1245
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1246
    const/16 v2, 0x200d

    goto :goto_0

    .line 1250
    :cond_5
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1251
    .local v16, "oldFile":Ljava/io/File;
    const/16 v2, 0x2f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 1252
    .local v13, "lastSlash":I
    const/4 v2, 0x1

    if-gt v13, v2, :cond_6

    .line 1253
    const/16 v2, 0x2002

    goto :goto_0

    .line 1255
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v13, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1256
    .local v15, "newPath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1257
    .local v14, "newFile":Ljava/io/File;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v18

    .line 1258
    .local v18, "success":Z
    if-nez v18, :cond_7

    .line 1259
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "renaming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    const/16 v2, 0x2002

    goto/16 :goto_0

    .line 1264
    :cond_7
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1265
    .local v5, "values":Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v5, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    const/16 v19, 0x0

    .line 1270
    .local v19, "updated":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v6, "_id=?"

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v19

    .line 1274
    :goto_1
    if-nez v19, :cond_8

    .line 1275
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to update path for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1278
    const/16 v2, 0x2002

    goto/16 :goto_0

    .line 1271
    :catch_1
    move-exception v11

    .line 1272
    .restart local v11    # "e":Landroid/os/RemoteException;
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in mMediaProvider.update"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1282
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_8
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v2, 0x2e

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_9

    .line 1283
    const/16 v2, 0x2e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v15, v3, v0, v4}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1293
    :cond_9
    :goto_2
    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.mtp.action.MTP_UPDATE_FILE"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1294
    .local v12, "intent":Landroid/content/Intent;
    const-string v2, "_data"

    invoke-virtual {v12, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1299
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1301
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "."

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1304
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "unhide"

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v15, v6}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1321
    :cond_a
    :goto_3
    const/16 v2, 0x2001

    goto/16 :goto_0

    .line 1286
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_b
    const/16 v2, 0x2e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v15, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v15, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v15, v3, v0, v4}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_2

    .line 1305
    .restart local v12    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v11

    .line 1306
    .restart local v11    # "e":Landroid/os/RemoteException;
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unhide/rescan for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1311
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v15, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1314
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "unhide"

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v2, v3, v4, v6, v8}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    .line 1315
    :catch_3
    move-exception v11

    .line 1316
    .restart local v11    # "e":Landroid/os/RemoteException;
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unhide/rescan for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private sessionEnded()V
    .locals 3

    .prologue
    .line 1736
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1738
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1740
    :cond_0
    return-void
.end method

.method private sessionStarted()V
    .locals 1

    .prologue
    .line 1732
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1733
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 2
    .param p1, "property"    # I
    .param p2, "intValue"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 1506
    packed-switch p1, :pswitch_data_0

    .line 1516
    const/16 v1, 0x200a

    :goto_0
    return v1

    .line 1510
    :pswitch_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1511
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1512
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2001

    goto :goto_0

    :cond_0
    const/16 v1, 0x2002

    goto :goto_0

    .line 1506
    nop

    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 1
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "intValue"    # J
    .param p5, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 1326
    packed-switch p2, :pswitch_data_0

    .line 1331
    const v0, 0xa80a

    :goto_0
    return v0

    .line 1328
    :pswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1326
    :pswitch_data_0
    .packed-switch 0xdc07
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .locals 9
    .param p1, "handle"    # I
    .param p2, "references"    # [I

    .prologue
    .line 1712
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1713
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v7, p1

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 1714
    .local v3, "uri":Landroid/net/Uri;
    array-length v0, p2

    .line 1715
    .local v0, "count":I
    new-array v5, v0, [Landroid/content/ContentValues;

    .line 1716
    .local v5, "valuesList":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1717
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1718
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "_id"

    aget v7, p2, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1719
    aput-object v4, v5, v2

    .line 1716
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1722
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    invoke-interface {v6, v7, v3, v5}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_1

    .line 1723
    const/16 v6, 0x2001

    .line 1728
    :goto_1
    return v6

    .line 1725
    :catch_0
    move-exception v1

    .line 1726
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in setObjectReferences"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1728
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/16 v6, 0x2002

    goto :goto_1
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 249
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public checkSize(Ljava/io/File;)J
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 518
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 519
    const-wide/16 v3, 0x0

    .line 535
    :cond_0
    :goto_0
    return-wide v3

    .line 520
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 521
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_0

    .line 522
    :cond_2
    const-wide/16 v3, 0x0

    .line 524
    .local v3, "size":J
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 525
    .local v2, "listFile":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 526
    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 527
    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 525
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 529
    :cond_3
    aget-object v5, v2, v1

    invoke-virtual {p0, v5}, Landroid/mtp/MtpDatabase;->checkSize(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 532
    .end local v1    # "i":I
    .end local v2    # "listFile":[Ljava/io/File;
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 242
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 246
    return-void

    .line 244
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 253
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method
