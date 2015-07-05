.class public final Ladj$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ladj;


# direct methods
.method public constructor <init>(Ladj;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Ladj$6;->b:Ladj;

    iput-object p2, p0, Ladj$6;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 357
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Ladj$6;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 358
    iget-object v0, p0, Ladj$6;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 359
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Ladj$6;->b:Ladj;

    invoke-static {v0}, Ladj;->c(Ladj;)Ladd;

    move-result-object v0

    invoke-virtual {v0, v1}, Ladd;->a(Ljava/util/Set;)V

    .line 362
    iget-object v0, p0, Ladj$6;->b:Ladj;

    invoke-static {v0}, Ladj;->e(Ladj;)Lcom/snapchat/android/discover/model/database/table/EditionTable;

    iget-object v0, p0, Ladj$6;->b:Ladj;

    invoke-static {v0}, Ladj;->d(Ladj;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v0, "EditionTable"

    const-string v3, "Removing archived Editions"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "Edition"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lzw;Ljava/lang/String;)V

    const-string v0, "EditionChunk"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lzw;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v2}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "EditionTable"

    const-string v2, "Finished removing archived Editions"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-static {v1}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/content/Context;)V

    .line 363
    return-void

    .line 362
    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "Edition"

    const-string v4, "Error while writing to database: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "EditionTable"

    const-string v2, "Finished removing archived Editions"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "EditionTable"

    const-string v2, "Finished removing archived Editions"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
