.class public final Laej$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Laej;


# direct methods
.method public constructor <init>(Laej;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Laej$7;->b:Laej;

    iput-object p2, p0, Laej$7;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 388
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Laej$7;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 389
    iget-object v0, p0, Laej$7;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 390
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Laej$7;->b:Laej;

    invoke-static {v0}, Laej;->c(Laej;)Laed;

    move-result-object v0

    invoke-virtual {v0, v1}, Laed;->a(Ljava/util/Set;)V

    .line 393
    iget-object v0, p0, Laej$7;->b:Laej;

    invoke-static {v0}, Laej;->e(Laej;)Lcom/snapchat/android/discover/model/database/table/EditionTable;

    iget-object v0, p0, Laej$7;->b:Laej;

    invoke-static {v0}, Laej;->d(Laej;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "Edition"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Laav;Ljava/lang/String;)V

    const-string v0, "EditionChunk"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->STATUS:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Laav;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v2}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    invoke-static {v1}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/content/Context;)V

    .line 394
    return-void

    .line 393
    :catch_0
    move-exception v0

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
