.class public final Lacj;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/database/Cursor;

.field private final b:Lcom/snapchat/android/database/table/DbTable;

.field private final c:Lcom/snapchat/android/database/vtable/DbVirtualTable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/database/table/DbTable;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lacj;->b:Lcom/snapchat/android/database/table/DbTable;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lacj;->c:Lcom/snapchat/android/database/vtable/DbVirtualTable;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/database/vtable/DbVirtualTable;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lacj;->b:Lcom/snapchat/android/database/table/DbTable;

    .line 31
    iput-object p2, p0, Lacj;->c:Lcom/snapchat/android/database/vtable/DbVirtualTable;

    .line 32
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lacj;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lacj;->a:Landroid/database/Cursor;

    .line 56
    iput-object p1, p0, Lacj;->a:Landroid/database/Cursor;

    .line 58
    invoke-virtual {p0}, Lacj;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 62
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lacj;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0}, Lacj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lacj;->b:Lcom/snapchat/android/database/table/DbTable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lacj;->b:Lcom/snapchat/android/database/table/DbTable;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/DbTable;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lacj;->b:Lcom/snapchat/android/database/table/DbTable;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/DbTable;->b()[Laav;

    move-result-object v5

    array-length v6, v5

    new-array v2, v6, [Ljava/lang/String;

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v7, v5, v4

    invoke-interface {v7}, Laav;->getColumnName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lacj;->c:Lcom/snapchat/android/database/vtable/DbVirtualTable;

    invoke-virtual {v1}, Lcom/snapchat/android/database/vtable/DbVirtualTable;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lacj;->c:Lcom/snapchat/android/database/vtable/DbVirtualTable;

    invoke-virtual {v2}, Lcom/snapchat/android/database/vtable/DbVirtualTable;->c()[Laav;

    move-result-object v5

    array-length v6, v5

    new-array v2, v6, [Ljava/lang/String;

    :goto_2
    if-ge v4, v6, :cond_2

    aget-object v7, v5, v4

    invoke-interface {v7}, Laav;->getColumnName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1
.end method

.method public final synthetic onCanceled(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 17
    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method protected final onReset()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 93
    invoke-virtual {p0}, Lacj;->onStopLoading()V

    .line 95
    iget-object v0, p0, Lacj;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacj;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lacj;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lacj;->a:Landroid/database/Cursor;

    .line 99
    return-void
.end method

.method protected final onStartLoading()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lacj;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lacj;->a:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lacj;->a(Landroid/database/Cursor;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lacj;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lacj;->a:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 73
    :cond_1
    invoke-virtual {p0}, Lacj;->forceLoad()V

    .line 75
    :cond_2
    return-void
.end method

.method protected final onStopLoading()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lacj;->cancelLoad()Z

    .line 80
    return-void
.end method
