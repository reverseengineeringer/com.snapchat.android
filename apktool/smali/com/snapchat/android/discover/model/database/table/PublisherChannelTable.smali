.class public final Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lbju;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;


# instance fields
.field private final d:Lajx;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 58
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->values()[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    move-result-object v1

    .line 59
    array-length v2, v1

    .line 60
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a:[Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->b:Ljava/util/HashMap;

    .line 62
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 63
    aget-object v3, v1, v0

    .line 64
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a:[Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 65
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lajx;

    invoke-direct {v0}, Lajx;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;-><init>(Lajx;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Lajx;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->d:Lajx;

    .line 54
    return-void
.end method

.method private static a(Lbju;)Landroid/content/ContentValues;
    .locals 4
    .param p0    # Lbju;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 170
    if-nez p0, :cond_0

    move-object v0, v1

    .line 201
    :goto_0
    return-object v0

    .line 174
    :cond_0
    new-instance v0, Laad;

    invoke-direct {v0}, Laad;-><init>()V

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbju;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->PUBLISHER_FORMAL_NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbju;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->PUBLISHER_INTERNATIONAL_NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbju;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->PRIMARY_COLOR:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbju;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->SECONDARY_COLOR:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbju;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->FILLED_ICON:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbju;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INVERTED_ICON:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbju;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->LOADING_ICON:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbju;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_MOVIE:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbju;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->ENABLED:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbju;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0}, Laad;->a(Lzw;Z)Laad;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lbju;->b()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 187
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->STORIES_PAGE_POSITION:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbju;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Laad;->a(Lzw;I)Laad;

    .line 190
    :cond_1
    invoke-virtual {p0}, Lbju;->m()Lbgv;

    move-result-object v2

    .line 192
    if-eqz v2, :cond_3

    .line 193
    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_AD_UNIT_ID:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {v2}, Lbgv;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v1

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_AD_TARGETING:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {v2}, Lbgv;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Laad;->a(Lzw;Ljava/util/Map;)Laad;

    .line 201
    :goto_2
    iget-object v0, v0, Laad;->a:Landroid/content/ContentValues;

    goto/16 :goto_0

    .line 174
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 197
    :cond_3
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_AD_UNIT_ID:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {v0, v2, v1}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_AD_TARGETING:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {v2, v3, v1}, Laad;->a(Lzw;Ljava/util/Map;)Laad;

    goto :goto_2
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;
    .locals 2

    .prologue
    .line 117
    const-class v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->c:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->c:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    .line 120
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->c:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 290
    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 293
    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 294
    return-void
.end method

.method public static a(Landroid/content/Context;Lbjt;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-static {}, Lajx;->aL()J

    move-result-wide v0

    invoke-virtual {p1}, Lbjt;->b()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 215
    :cond_0
    if-nez p1, :cond_2

    .line 216
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to initialize with null channel list response."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    invoke-static {p0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p1}, Lbjt;->a()Ljava/util/List;

    move-result-object v3

    .line 224
    if-nez v3, :cond_4

    .line 225
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to initialize with null channel response list."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_3
    invoke-static {p0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 232
    :cond_4
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 233
    const-string v0, "PublisherChannelTable"

    const-string v1, "safeUpdate - beginTransaction"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 237
    :try_start_0
    const-string v0, "PublisherChannelTable"

    const-string v1, "Delete the tables for channels"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    const-string v0, "PublisherChannel"

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 243
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a()Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 244
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a()Lcom/snapchat/android/discover/model/database/table/EditionTable;

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/database/sqlite/SQLiteDatabase;)I

    move v1, v2

    .line 246
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 247
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbju;

    .line 248
    invoke-static {v0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Lbju;)Landroid/content/ContentValues;

    move-result-object v5

    if-eqz v5, :cond_6

    sget-object v6, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->POSITION:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {v6}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "PublisherChannel"

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v4, v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Insertion in DB failed for PublisherChannel"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    :try_start_1
    const-string v1, "PublisherChannelTable"

    const-string v3, "Error while writing to database: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1, v3, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 258
    const-string v0, "PublisherChannelTable"

    const-string v1, "safeUpdate - endTransaction"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    :goto_2
    invoke-static {p0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 248
    :cond_5
    if-eqz v0, :cond_6

    :try_start_2
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a()Lcom/snapchat/android/discover/model/database/table/EditionTable;

    invoke-virtual {v0}, Lbju;->l()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lbju;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lbju;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v6, v0}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 251
    :cond_7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 253
    invoke-virtual {p1}, Lbjt;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lajx;->h(J)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 258
    const-string v0, "PublisherChannelTable"

    const-string v1, "safeUpdate - endTransaction"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 257
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 258
    const-string v1, "PublisherChannelTable"

    const-string v3, "safeUpdate - endTransaction"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lbju;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Lbju;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lajv;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajv;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lbju;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lajv;)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->values()[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "PublisherChannel"

    return-object v0
.end method

.method public final c(Lajv;)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->values()[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    move-result-object v2

    .line 137
    array-length v3, v2

    .line 138
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 139
    aget-object v4, v2, v0

    .line 140
    if-lez v0, :cond_0

    .line 141
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->a(Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->b(Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 146
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method
