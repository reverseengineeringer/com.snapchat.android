.class public abstract Laan;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laan$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lzp$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lzp;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lzp;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 21
    iput-object p1, p0, Laan;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Laan;->b:Lzp;

    .line 23
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 15
    check-cast p1, Lzp$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lzp$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Laad;

    invoke-direct {v0}, Laad;-><init>()V

    sget-object v1, Laan$a;->a:Laan$a;

    iget-object v2, p1, Lzp$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v1, Laan$a;->b:Laan$a;

    iget-wide v2, p1, Lzp$a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Laad;->a(Lzw;J)Laad;

    iget-object v0, v0, Laad;->a:Landroid/content/ContentValues;

    goto :goto_0
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 15
    new-instance v0, Lzp$a;

    sget-object v1, Laan$a;->a:Laan$a;

    invoke-virtual {v1}, Laan$a;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laan$a;->b:Laan$a;

    invoke-virtual {v2}, Laan$a;->getColumnNumber()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lzp$a;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method protected final a(Lajv;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajv;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lzp$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Laan;->b:Lzp;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lzp;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lzp$a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v1, v6, v7}, Lzp$a;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final b(Lajv;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Laan;->b:Lzp;

    invoke-virtual {p0, v0, v0}, Laan;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lzp;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzp$a;

    invoke-virtual {v0}, Lzp$a;->a()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lzp;->a:Ljava/util/Map;

    iget-object v4, v0, Lzp$a;->b:Ljava/lang/String;

    iget-wide v6, v0, Lzp$a;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Laan$a;->values()[Laan$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Laan;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 32
    const-string v1, "_id INTEGER PRIMARY KEY"

    .line 33
    invoke-static {}, Laan$a;->values()[Laan$a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Laan$a;->a(Laan$a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Laan$a;->b(Laan$a;)Lcom/snapchat/android/database/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-object v1
.end method
