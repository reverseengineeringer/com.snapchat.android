.class public final Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lbkw;",
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

.field private static c:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 51
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    move-result-object v1

    .line 52
    array-length v2, v1

    .line 53
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a:[Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->b:Ljava/util/HashMap;

    .line 55
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 56
    aget-object v3, v1, v0

    .line 57
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a:[Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 58
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 6

    .prologue
    .line 202
    new-instance v0, Labc;

    invoke-direct {v0}, Labc;-><init>()V

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->INACTIVE:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v0

    iget-object v2, v0, Labc;->a:Landroid/content/ContentValues;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 208
    const-string v1, "EditionChunk"

    const/4 v5, 0x5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static a(Lbkw;)Landroid/content/ContentValues;
    .locals 4
    .param p0    # Lbkw;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 160
    if-nez p0, :cond_0

    .line 182
    :goto_0
    return-object v0

    .line 163
    :cond_0
    new-instance v1, Labc;

    invoke-direct {v1}, Labc;-><init>()V

    .line 164
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {p0}, Lbkw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 165
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->COLOR:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {p0}, Lbkw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 166
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_TYPE:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {p0}, Lbkw;->e()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Labc;->a(Laav;I)Labc;

    .line 167
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->URL:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {p0}, Lbkw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 168
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {p0}, Lbkw;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 170
    invoke-virtual {p0}, Lbkw;->f()Lbhv;

    move-result-object v2

    .line 172
    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {v2}, Lbhv;->b()Ljava/util/Map;

    move-result-object v0

    .line 174
    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_UNIT_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v2}, Lbhv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 175
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_TARGETING:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v1, v2, v0}, Labc;->a(Laav;Ljava/util/Map;)Labc;

    .line 182
    :goto_1
    iget-object v0, v1, Labc;->a:Landroid/content/ContentValues;

    goto :goto_0

    .line 178
    :cond_1
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_UNIT_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v1, v2, v0}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 179
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_TARGETING:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v1, v2, v0}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    goto :goto_1
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;
    .locals 2

    .prologue
    .line 107
    const-class v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->c:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->c:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    .line 110
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->c:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 273
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 279
    :try_start_0
    new-instance v1, Labc;

    invoke-direct {v1}, Labc;-><init>()V

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->URL:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v1, v2, p2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v1, v2, p3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_KEY:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v1, v2, p4}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v1

    iget-object v2, v1, Labc;->a:Landroid/content/ContentValues;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "EditionChunk"

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 280
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 289
    :goto_0
    if-lez v2, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 292
    :cond_0
    return-void

    .line 282
    :catch_0
    move-exception v1

    move v2, v6

    .line 283
    :goto_1
    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 286
    throw v1

    .line 282
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 4

    .prologue
    .line 241
    const-string v0, "EditionChunk"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 243
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Insertion in DB failed for EditionChunk"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    return-void
.end method

.method protected static a(Landroid/database/sqlite/SQLiteDatabase;Lbkw;IILjava/lang/String;Lcom/snapchat/android/discover/model/database/table/EditionStatus;)V
    .locals 6
    .param p1    # Lbkw;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lcom/snapchat/android/discover/model/database/table/EditionStatus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 217
    invoke-static {p1}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a(Lbkw;)Landroid/content/ContentValues;

    move-result-object v0

    .line 218
    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->POSITION:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->AD_POSITION:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lbkw;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    invoke-virtual {p1}, Lbkw;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Labc;

    invoke-direct {v2}, Labc;-><init>()V

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ACTIVE:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v2

    iget-object v2, v2, Labc;->a:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "EditionChunk"

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    invoke-static {p0, v0}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-static {p0, v0}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lbkw;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a(Lbkw;)Landroid/content/ContentValues;

    move-result-object v0

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
            "Lbkw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "EditionChunk"

    return-object v0
.end method

.method public final c(Lakp;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    move-result-object v2

    .line 127
    array-length v3, v2

    .line 128
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 129
    aget-object v4, v2, v0

    .line 130
    if-lez v0, :cond_0

    .line 131
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->a(Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->b(Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 136
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method
