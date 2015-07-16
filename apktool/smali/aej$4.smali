.class final Laej$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laej;


# direct methods
.method constructor <init>(Laej;)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Laej$4;->a:Laej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 771
    iget-object v0, p0, Laej$4;->a:Laej;

    iget-object v1, v0, Laej;->a:Lcom/snapchat/android/discover/model/database/table/EditionTable;

    iget-object v1, v0, Laej;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {v2}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    invoke-static {v1}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/content/Context;)V

    .line 772
    return-void

    .line 771
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

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
