.class public final Lcom/snapchat/android/database/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/DatabaseHelper$TableType;
    }
.end annotation


# static fields
.field private static a:Lcom/snapchat/android/database/DatabaseHelper;


# instance fields
.field private final b:Lakr;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lakr;)V
    .locals 3

    .prologue
    .line 65
    const-string v0, "tcspahn.db"

    const/4 v1, 0x0

    const/16 v2, 0xce

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 66
    iput-object p2, p0, Lcom/snapchat/android/database/DatabaseHelper;->b:Lakr;

    .line 67
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;
    .locals 3

    .prologue
    .line 57
    const-class v1, Lcom/snapchat/android/database/DatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/DatabaseHelper;->a:Lcom/snapchat/android/database/DatabaseHelper;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/snapchat/android/database/DatabaseHelper;

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/snapchat/android/database/DatabaseHelper;-><init>(Landroid/content/Context;Lakr;)V

    sput-object v0, Lcom/snapchat/android/database/DatabaseHelper;->a:Lcom/snapchat/android/database/DatabaseHelper;

    .line 60
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/DatabaseHelper;->a:Lcom/snapchat/android/database/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/snapchat/android/database/DatabaseHelper$TableType;->TABLE:Lcom/snapchat/android/database/DatabaseHelper$TableType;

    invoke-static {p1, v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/database/DatabaseHelper$TableType;)V

    sget-object v0, Lcom/snapchat/android/database/DatabaseHelper$TableType;->VIEW:Lcom/snapchat/android/database/DatabaseHelper$TableType;

    invoke-static {p1, v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/database/DatabaseHelper$TableType;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 125
    invoke-static {}, Lakr;->aB()V

    .line 126
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/database/DatabaseHelper$TableType;)V
    .locals 10
    .param p0    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/database/DatabaseHelper$TableType;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 134
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "sqlite_master"

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v9

    const-string v3, "type=? AND name NOT LIKE ? AND name NOT LIKE ?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/snapchat/android/database/DatabaseHelper$TableType;->getType()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const-string v0, "sqlite_%"

    aput-object v0, v4, v6

    const/4 v0, 0x2

    const-string v6, "android_metadata"

    aput-object v6, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    sget-object v2, Lcom/snapchat/android/database/DatabaseHelper$TableType;->TABLE:Lcom/snapchat/android/database/DatabaseHelper$TableType;

    if-ne p1, v2, :cond_4

    .line 137
    invoke-static {p0, v0}, Lcom/snapchat/android/database/table/DbTable;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_4
    sget-object v2, Lcom/snapchat/android/database/DatabaseHelper$TableType;->VIEW:Lcom/snapchat/android/database/DatabaseHelper$TableType;

    if-ne p1, v2, :cond_3

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP VIEW IF EXISTS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_5
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 81
    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    .line 88
    invoke-static {}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->values()[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 92
    invoke-virtual {v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->getTable()Lcom/snapchat/android/database/table/DbTable;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CREATE TABLE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/DbTable;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/DbTable;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {p1}, Lcom/snapchat/android/database/vtable/DbVirtualTable;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 114
    invoke-direct {p0, p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 115
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 108
    invoke-direct {p0, p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    return-void
.end method
