.class public final Lcom/snapchat/android/discover/model/database/table/EditionTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Ljava/lang/Object;",
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

.field private static c:Lcom/snapchat/android/discover/model/database/table/EditionTable;


# instance fields
.field private final d:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

.field private final e:Lbhk;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 61
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    move-result-object v1

    .line 62
    array-length v2, v1

    .line 63
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a:[Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->b:Ljava/util/HashMap;

    .line 65
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 66
    aget-object v3, v1, v0

    .line 67
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a:[Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 68
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lbhk;

    invoke-direct {v0}, Lbhk;-><init>()V

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a()Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/discover/model/database/table/EditionTable;-><init>(Lbhk;Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;)V

    .line 51
    return-void
.end method

.method private constructor <init>(Lbhk;Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->e:Lbhk;

    .line 56
    iput-object p2, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->d:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    .line 57
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 6

    .prologue
    .line 182
    new-instance v0, Labc;

    invoke-direct {v0}, Labc;-><init>()V

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->INACTIVE:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v0

    iget-object v2, v0, Labc;->a:Landroid/content/ContentValues;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 188
    const-string v1, "Edition"

    const/4 v5, 0x5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/discover/model/database/table/EditionTable;
    .locals 2

    .prologue
    .line 109
    const-class v1, Lcom/snapchat/android/discover/model/database/table/EditionTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->c:Lcom/snapchat/android/discover/model/database/table/EditionTable;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/EditionTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->c:Lcom/snapchat/android/discover/model/database/table/EditionTable;

    .line 112
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->c:Lcom/snapchat/android/discover/model/database/table/EditionTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 391
    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 392
    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 393
    return-void
.end method

.method public static a(Landroid/content/Context;Lbkw;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 198
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 203
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -archived"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 205
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 213
    :goto_1
    invoke-static {p0}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/content/Context;)V

    .line 214
    return-void

    .line 203
    :cond_1
    :try_start_1
    new-instance v2, Labc;

    invoke-direct {v2}, Labc;-><init>()V

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v2, v4, p3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v2

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v2, v4, v1}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->TIME_ADDED:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Labc;->a(Laav;J)Labc;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v1

    iget-object v1, v1, Labc;->a:Landroid/content/ContentValues;

    const-string v2, "Edition"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    new-instance v1, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Insertion in DB failed for Edition"

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :catch_0
    move-exception v1

    .line 207
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 203
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lbkw;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    const/4 v2, 0x0

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    move-object v1, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a(Landroid/database/sqlite/SQLiteDatabase;Lbkw;IILjava/lang/String;Lcom/snapchat/android/discover/model/database/table/EditionStatus;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 210
    throw v1

    .line 203
    :cond_3
    const/4 v3, -0x1

    goto :goto_2
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Laav;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Laav;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 383
    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method protected static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lbkw;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 250
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 285
    :cond_0
    return-void

    .line 254
    :cond_1
    new-instance v1, Labc;

    invoke-direct {v1}, Labc;-><init>()V

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v1, v2, p3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v1, v2, p2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->TIME_ADDED:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Labc;->a(Laav;J)Labc;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ACTIVE:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v1

    iget-object v1, v1, Labc;->a:Landroid/content/ContentValues;

    .line 261
    const-string v2, "Edition"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 263
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 264
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Insertion in DB failed for Edition"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_2
    const/4 v1, 0x1

    .line 271
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move v6, v0

    move v2, v0

    move v0, v1

    .line 272
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 273
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbkw;

    .line 274
    if-eqz v1, :cond_4

    .line 275
    invoke-virtual {v1}, Lbkw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 277
    invoke-virtual {v1}, Lbkw;->e()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    move v7, v3

    move v3, v0

    .line 278
    :goto_1
    sget-object v5, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ACTIVE:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    move-object v0, p0

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a(Landroid/database/sqlite/SQLiteDatabase;Lbkw;IILjava/lang/String;Lcom/snapchat/android/discover/model/database/table/EditionStatus;)V

    .line 280
    invoke-virtual {v1}, Lbkw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v2, v2, 0x1

    move v1, v7

    .line 272
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v0, v1

    goto :goto_0

    .line 277
    :cond_3
    const/4 v3, -0x1

    move v7, v0

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_2
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .prologue
    .line 346
    const-string v0, "Edition"

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    const-string v2, "PublisherChannel"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v4, "Edition"

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    sget-object v6, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-virtual {v6}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " DELETE FROM "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v1}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IN  (  SELECT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v1}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FROM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LEFT JOIN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ON "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v1}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v5, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 357
    const-string v0, "Edition"

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->INACTIVE:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Laav;Ljava/lang/String;)V

    .line 360
    const-string v0, "EditionChunk"

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v2, "Edition"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v0, v1, v2, v3}, Laau;->a(Ljava/lang/String;Laav;Ljava/lang/String;Laav;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 366
    const-string v0, "EditionChunk"

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->INACTIVE:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Laav;Ljava/lang/String;)V

    .line 370
    const-string v0, "DSnap"

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    const-string v2, "EditionChunk"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-static {v0, v1, v2, v3}, Laau;->a(Ljava/lang/String;Laav;Ljava/lang/String;Laav;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 375
    const-string v0, "DSnapItem"

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    const-string v2, "DSnap"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    invoke-static {v0, v1, v2, v3}, Laau;->a(Ljava/lang/String;Laav;Ljava/lang/String;Laav;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 378
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Lakp;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "Edition"

    return-object v0
.end method

.method public final c(Lakp;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    move-result-object v2

    .line 129
    array-length v3, v2

    .line 130
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 131
    aget-object v4, v2, v0

    .line 132
    if-lez v0, :cond_0

    .line 133
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->a(Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->b(Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 138
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method
