.class public final Laej$13;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Laej$b;

.field final synthetic c:Laej;


# direct methods
.method public constructor <init>(Laej;Ljava/lang/String;[Laej$b;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Laej$13;->c:Laej;

    iput-object p2, p0, Laej$13;->a:Ljava/lang/String;

    iput-object p3, p0, Laej$13;->b:[Laej$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v7, 0x0

    .line 643
    iget-object v8, p0, Laej$13;->c:Laej;

    iget-object v5, p0, Laej$13;->a:Ljava/lang/String;

    iget-object v9, p0, Laej$13;->b:[Laej$b;

    array-length v0, v9

    if-eqz v0, :cond_0

    invoke-static {}, Lakr;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, v8, Laej;->k:Z

    if-nez v0, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v10

    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, v8, Laej;->j:Landroid/content/ContentResolver;

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->a:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnName()Ljava/lang/String;

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

    const/4 v13, 0x0

    aput-object v5, v4, v13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->POSITION:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v13}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " ASC"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {v8, v0}, Laej;->a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_2

    :cond_4
    invoke-static {v0}, Lbgo;->a(Landroid/database/Cursor;)V

    :goto_1
    array-length v1, v9

    move v0, v7

    :goto_2
    if-ge v0, v1, :cond_5

    aget-object v2, v9, v0

    invoke-interface {v2, v12}, Laej$b;->a(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_3
    invoke-static {v0}, Lbgo;->a(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v6}, Lbgo;->a(Landroid/database/Cursor;)V

    throw v0

    :cond_5
    new-array v0, v14, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v7

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v0, v6

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3
.end method
