.class public final Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Laef$c;",
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

.field private static final d:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;


# instance fields
.field public final c:Laef;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 38
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->d:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;

    .line 53
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    move-result-object v1

    .line 54
    array-length v2, v1

    .line 55
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->a:[Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->b:Ljava/util/HashMap;

    .line 57
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 58
    aget-object v3, v1, v0

    .line 59
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->a:[Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 60
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Laef;->a()Laef;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;-><init>(Laef;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Laef;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->c:Laef;

    .line 49
    return-void
.end method

.method public static a(Laef$c;)Landroid/content/ContentValues;
    .locals 3
    .param p0    # Laef$c;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 204
    new-instance v0, Labc;

    invoke-direct {v0}, Labc;-><init>()V

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    iget-object v2, p0, Laef$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->LAST_INDEX_VIEWED:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    iget v2, p0, Laef$c;->b:I

    invoke-virtual {v0, v1, v2}, Labc;->a(Laav;I)Labc;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->VIEWED_ALL_DSNAPS:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    iget-boolean v2, p0, Laef$c;->c:Z

    invoke-virtual {v0, v1, v2}, Labc;->a(Laav;Z)Labc;

    move-result-object v0

    iget-object v0, v0, Labc;->a:Landroid/content/ContentValues;

    return-object v0
.end method

.method public static a()Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->d:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;

    return-object v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 9
    .param p0    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Laef$c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 213
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 215
    const-string v1, "EditionViewState"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->a:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->LAST_INDEX_VIEWED:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->VIEWED_ALL_DSNAPS:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    new-instance v4, Laef$c$a;

    invoke-direct {v4}, Laef$c$a;-><init>()V

    iput-object v2, v4, Laef$c$a;->a:Ljava/lang/String;

    iput v3, v4, Laef$c$a;->b:I

    iput-boolean v0, v4, Laef$c$a;->c:Z

    invoke-virtual {v4}, Laef$c$a;->a()Laef$c;

    move-result-object v0

    .line 222
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 226
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_2
    return-object v8

    .line 221
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Laef$c;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->a(Laef$c;)Landroid/content/ContentValues;

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
            "Laef$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 6

    .prologue
    .line 139
    invoke-static {}, Lakp;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 145
    :try_start_0
    invoke-static {v1}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    .line 147
    iget-object v2, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->c:Laef;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laef$c;

    iget-object v4, v0, Laef$c;->a:Ljava/lang/String;

    iget v5, v0, Laef$c;->b:I

    invoke-virtual {v2, v4, v5}, Laef;->a(Ljava/lang/String;I)V

    iget-object v4, v0, Laef$c;->a:Ljava/lang/String;

    iget-boolean v0, v0, Laef$c;->c:Z

    invoke-virtual {v2, v4, v0}, Laef;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 150
    throw v0

    .line 147
    :cond_0
    :try_start_1
    iget-object v0, v2, Laef;->a:Laej;

    invoke-virtual {v0}, Laej;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 150
    return-void
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "EditionViewState"

    return-object v0
.end method

.method public final c(Lakp;)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    move-result-object v2

    .line 111
    array-length v3, v2

    .line 112
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 113
    aget-object v4, v2, v0

    .line 114
    if-lez v0, :cond_0

    .line 115
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->a(Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->b(Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-static {v4}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 120
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
