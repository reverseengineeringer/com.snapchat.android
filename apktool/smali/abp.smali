.class public final Labp;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


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

.field private static c:Labp;

.field private static final d:Laph;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-static {}, Laph;->a()Laph;

    move-result-object v1

    sput-object v1, Labp;->d:Laph;

    .line 39
    invoke-static {}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->values()[Lcom/snapchat/android/database/schema/HttpMetricSchema;

    move-result-object v2

    .line 40
    array-length v3, v2

    .line 41
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Labp;->a:[Ljava/lang/String;

    move v1, v0

    .line 42
    :goto_0
    if-ge v1, v3, :cond_0

    .line 43
    sget-object v4, Labp;->a:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Labp;->b:Ljava/util/HashMap;

    .line 48
    invoke-static {}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->values()[Lcom/snapchat/android/database/schema/HttpMetricSchema;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 49
    sget-object v4, Labp;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/ContentValues;)J
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 157
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "HttpMetrics"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v10

    .line 162
    const-string v1, "SELECT COUNT() FROM HttpMetrics"

    invoke-static {v0, v1, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0xc8

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 163
    const-string v1, "HttpMetrics"

    new-array v2, v9, [Ljava/lang/String;

    sget-object v4, Lcom/snapchat/android/database/schema/HttpMetricSchema;->TIMESTAMP:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    sget-object v4, Lcom/snapchat/android/database/schema/HttpMetricSchema;->TIMESTAMP:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "20"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v2, "HttpMetrics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/snapchat/android/database/schema/HttpMetricSchema;->TIMESTAMP:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v7}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " <=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {v0, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 167
    return-wide v10

    .line 163
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static declared-synchronized a()Labp;
    .locals 2

    .prologue
    .line 54
    const-class v1, Labp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Labp;->c:Labp;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Labp;

    invoke-direct {v0}, Labp;-><init>()V

    sput-object v0, Labp;->c:Labp;

    .line 57
    :cond_0
    sget-object v0, Labp;->c:Labp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 198
    sget-object v0, Labp;->d:Laph;

    invoke-virtual {v0, p0}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "op_code"

    const/16 v3, 0x3ed

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "clear"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, p0, v1}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    .line 199
    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;I)V
    .locals 7

    .prologue
    .line 141
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    new-instance v2, Labc;

    invoke-direct {v2}, Labc;-><init>()V

    sget-object v3, Lcom/snapchat/android/database/schema/HttpMetricSchema;->TIMESTAMP:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v2, v3, p1, p2}, Labc;->a(Laav;J)Labc;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/schema/HttpMetricSchema;->METHOD:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v2, v3, p3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/schema/HttpMetricSchema;->PATH:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v2, v3, p4}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/schema/HttpMetricSchema;->SENT_BYTES:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v2, v3, p5, p6}, Labc;->a(Laav;J)Labc;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/schema/HttpMetricSchema;->RECEIVED_BYTES:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v2, v3, p7, p8}, Labc;->a(Laav;J)Labc;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/schema/HttpMetricSchema;->DURATION:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    move-wide/from16 v0, p9

    invoke-virtual {v2, v3, v0, v1}, Labc;->a(Laav;J)Labc;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/schema/HttpMetricSchema;->STATUS_LINE:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    move-object/from16 v0, p11

    invoke-virtual {v2, v3, v0}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/schema/HttpMetricSchema;->STATUS_CODE:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    move/from16 v0, p12

    invoke-virtual {v2, v3, v0}, Labc;->a(Laav;I)Labc;

    move-result-object v2

    iget-object v2, v2, Labc;->a:Landroid/content/ContentValues;

    .line 152
    sget-object v3, Labp;->d:Laph;

    invoke-virtual {v3, p0}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "op_code"

    const/16 v6, 0x3ed

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "content_values"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v3, p0, v4}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    .line 154
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 15

    .prologue
    .line 134
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    invoke-static/range {v1 .. v13}, Labp;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;I)V

    .line 138
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 203
    const-string v1, "HttpMetrics"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 205
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

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
            "Lcom/snapchat/android/model/Snap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->values()[Lcom/snapchat/android/database/schema/HttpMetricSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "HttpMetrics"

    return-object v0
.end method

.method public final c(Lakp;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-static {}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->values()[Lcom/snapchat/android/database/schema/HttpMetricSchema;

    move-result-object v2

    .line 64
    array-length v3, v2

    .line 65
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 66
    aget-object v4, v2, v0

    .line 67
    if-lez v0, :cond_0

    .line 68
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getDataType()Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 73
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
