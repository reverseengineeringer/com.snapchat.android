.class final Lcom/snapchat/android/database/table/CashFeedItemTable$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Lcom/snapchat/android/model/chat/CashFeedItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/snapchat/android/model/chat/CashFeedItem;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$1;->b:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 242
    iget-object v0, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 245
    :try_start_0
    const-string v1, "CashFeedItem"

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable;->a:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$1;->b:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v6}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/snapchat/android/model/Snap$TargetView;->CHAT:Lcom/snapchat/android/model/Snap$TargetView;

    invoke-virtual {v6}, Lcom/snapchat/android/model/Snap$TargetView;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 251
    if-eqz v1, :cond_0

    .line 252
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 253
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 254
    if-lez v2, :cond_1

    .line 255
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 256
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/model/Snap$TargetView;->CHAT_AND_FEED:Lcom/snapchat/android/model/Snap$TargetView;

    invoke-virtual {v3}, Lcom/snapchat/android/model/Snap$TargetView;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v2, "CashFeedItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

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

    iget-object v6, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$1;->b:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v6}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 264
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 269
    return-object v8

    .line 262
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$1;->b:Lcom/snapchat/android/model/chat/CashFeedItem;

    sget-object v2, Lcom/snapchat/android/model/Snap$TargetView;->FEED:Lcom/snapchat/android/model/Snap$TargetView;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/Snap$TargetView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/snapchat/android/database/table/CashFeedItemTable$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
