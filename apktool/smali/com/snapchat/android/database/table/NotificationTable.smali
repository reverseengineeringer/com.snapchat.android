.class public final Lcom/snapchat/android/database/table/NotificationTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lakw;",
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

.field private static c:Lcom/snapchat/android/database/table/NotificationTable;

.field private static final d:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 39
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    sput-object v1, Lcom/snapchat/android/database/table/NotificationTable;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 45
    invoke-static {}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->values()[Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    move-result-object v2

    .line 46
    array-length v3, v2

    .line 47
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/snapchat/android/database/table/NotificationTable;->a:[Ljava/lang/String;

    move v1, v0

    .line 48
    :goto_0
    if-ge v1, v3, :cond_0

    .line 49
    sget-object v4, Lcom/snapchat/android/database/table/NotificationTable;->a:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/NotificationTable;->b:Ljava/util/HashMap;

    .line 54
    invoke-static {}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->values()[Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 55
    sget-object v4, Lcom/snapchat/android/database/table/NotificationTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    .prologue
    .line 73
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 76
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 77
    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->TYPING:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SELECT MAX("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") from Notification WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER_USERNAME:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=? AND ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TYPE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " =\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TYPE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " =\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v3}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\') AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->NINJA_MODE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v1, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 92
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-wide v0

    .line 86
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SELECT MAX("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") from Notification WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER_USERNAME:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=? AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TYPE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " =\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->NINJA_MODE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v1, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 92
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 132
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 136
    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    sget-object v4, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TYPE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_1
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    .line 144
    :try_start_0
    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 145
    const-string v1, "Notification"

    sget-object v2, Lcom/snapchat/android/database/table/NotificationTable;->a:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v7}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ASC"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 150
    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/database/table/NotificationTable;
    .locals 2

    .prologue
    .line 60
    const-class v1, Lcom/snapchat/android/database/table/NotificationTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/NotificationTable;->c:Lcom/snapchat/android/database/table/NotificationTable;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/snapchat/android/database/table/NotificationTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/NotificationTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/NotificationTable;->c:Lcom/snapchat/android/database/table/NotificationTable;

    .line 63
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/NotificationTable;->c:Lcom/snapchat/android/database/table/NotificationTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 195
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 196
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v11

    .line 199
    :try_start_0
    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 200
    const/4 v1, 0x1

    const-string v2, "Notification"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TYPE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 204
    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 208
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 217
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_3
    return-object v10

    .line 204
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 217
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 155
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 156
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 158
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 159
    const-string v2, "Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TYPE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

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

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .param p12    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 105
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 107
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 108
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 109
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->ID:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER_USERNAME:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TEXT:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->CHAT_MESSAGE_ID:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TYPE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p10

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->NINJA_MODE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    if-eqz p11, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->CASH_AMOUNT:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p12

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->CHAT_SEQ_NUM:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "insert "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 122
    const-string v4, "Notification"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 125
    return-void

    .line 116
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v1

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 167
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TYPE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER_USERNAME:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    sget-object v2, Lcom/snapchat/android/database/table/NotificationTable;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 172
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 173
    const-string v3, "Notification"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snapchat/android/database/table/NotificationTable$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/snapchat/android/database/table/NotificationTable$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 190
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
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
            "Lakw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 295
    invoke-static {}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->values()[Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    const-string v0, "Notification"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    invoke-static {}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->values()[Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    move-result-object v2

    .line 277
    array-length v3, v2

    .line 278
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 279
    aget-object v4, v2, v0

    .line 280
    if-lez v0, :cond_0

    .line 281
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->a(Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->b(Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 286
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
