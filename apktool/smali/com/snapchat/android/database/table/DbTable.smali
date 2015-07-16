.class public abstract Lcom/snapchat/android/database/table/DbTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/DbTable$DatabaseTable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DbTable"

.field protected static sTableLock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field public mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    return-void
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public static i()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method public a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Lakp;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 275
    sget-object v0, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 276
    iget-object v0, p0, Lcom/snapchat/android/database/table/DbTable;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->c()Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->m()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 295
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v2

    .line 280
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 282
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 283
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 285
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 286
    invoke-virtual {p0, v1}, Lcom/snapchat/android/database/table/DbTable;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_5
    sget-object v0, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_6
    sget-object v1, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(Lakp;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public abstract b()[Laav;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public c(Lakp;)V
    .locals 6

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 241
    sget-object v1, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/database/table/DbTable;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 245
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->j()V

    .line 247
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/DbTable;->a(Lakp;)Ljava/util/Collection;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveAllTablesToDatabaseAsync "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " item(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 251
    invoke-virtual {p0, v2}, Lcom/snapchat/android/database/table/DbTable;->a(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 253
    iget-object v3, p0, Lcom/snapchat/android/database/table/DbTable;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 254
    const/4 v0, 0x1

    goto :goto_1

    .line 259
    :cond_3
    iget-object v1, p0, Lcom/snapchat/android/database/table/DbTable;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    iget-object v1, p0, Lcom/snapchat/android/database/table/DbTable;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 263
    sget-object v1, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lakr;->a()Lakr;

    .line 268
    invoke-static {}, Lakr;->aB()V

    goto/16 :goto_0

    .line 262
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/snapchat/android/database/table/DbTable;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 263
    sget-object v1, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 266
    invoke-static {}, Lakr;->a()Lakr;

    .line 268
    invoke-static {}, Lakr;->aB()V

    .line 269
    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->b()[Laav;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    if-lez v0, :cond_0

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Laav;->getColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Laav;->getDataType()Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Laav;->getConstraints()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lakp;)V
    .locals 3
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 177
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 178
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/DbTable;->b(Lakp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    sget-object v0, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/snapchat/android/database/table/DbTable;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public final k()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->c()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v4

    .line 219
    :goto_0
    return-void

    .line 209
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 211
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 212
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    sget-object v0, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 218
    :goto_1
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v4

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    sget-object v0, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/snapchat/android/database/table/DbTable;->sTableLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public final m()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v1

    .line 306
    if-nez v1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-object v0

    .line 310
    :cond_1
    invoke-virtual {v1}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/database/table/DbTable;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 311
    iget-object v1, p0, Lcom/snapchat/android/database/table/DbTable;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/snapchat/android/database/table/DbTable;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method
