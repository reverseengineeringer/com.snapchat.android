.class public final Lcom/snapchat/android/discover/model/database/table/DSnapTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lblz;",
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

.field private static c:Lcom/snapchat/android/discover/model/database/table/DSnapTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 52
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->values()[Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    move-result-object v1

    .line 53
    array-length v2, v1

    .line 54
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->a:[Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->b:Ljava/util/HashMap;

    .line 56
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 57
    aget-object v3, v1, v0

    .line 58
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->a:[Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 59
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method private static a(Lblz;)Landroid/content/ContentValues;
    .locals 4
    .param p0    # Lblz;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 151
    if-nez p0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0}, Lblz;->b()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lblz;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "shareable"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 160
    :cond_1
    new-instance v1, Labc;

    invoke-direct {v1}, Labc;-><init>()V

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->TYPE:Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    invoke-virtual {p0}, Lblz;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->SHAREABLE:Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    invoke-virtual {v1, v2, v0}, Labc;->a(Laav;Z)Labc;

    move-result-object v0

    iget-object v0, v0, Labc;->a:Landroid/content/ContentValues;

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/discover/model/database/table/DSnapTable;
    .locals 2

    .prologue
    .line 98
    const-class v1, Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->c:Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/DSnapTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->c:Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    .line 101
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->c:Lcom/snapchat/android/discover/model/database/table/DSnapTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lblz;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lblz;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 213
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lblz;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    return-void

    .line 217
    :cond_1
    invoke-static {p2}, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->a(Lblz;)Landroid/content/ContentValues;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    .line 222
    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "DSnap"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 226
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 227
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Insertion in DB failed for DSnap"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_2
    invoke-virtual {p2}, Lblz;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblv;

    .line 231
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->a()Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;

    invoke-static {p0, p1, v0}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lblv;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 38
    check-cast p1, Lblz;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->a(Lblz;)Landroid/content/ContentValues;

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
            "Lblz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->values()[Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "DSnap"

    return-object v0
.end method

.method public final c(Lakp;)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->values()[Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    move-result-object v2

    .line 118
    array-length v3, v2

    .line 119
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 120
    aget-object v4, v2, v0

    .line 121
    if-lez v0, :cond_0

    .line 122
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->a(Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->b(Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-static {v4}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 127
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method
