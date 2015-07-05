.class public final Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lakb;",
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

.field private static c:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->values()[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    move-result-object v2

    .line 47
    array-length v3, v2

    .line 48
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a:[Ljava/lang/String;

    move v1, v0

    .line 49
    :goto_0
    if-ge v1, v3, :cond_0

    .line 50
    sget-object v4, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->b:Ljava/util/HashMap;

    .line 55
    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->values()[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 56
    sget-object v4, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;
    .locals 2

    .prologue
    .line 61
    const-class v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->c:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->c:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    .line 64
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->c:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 112
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    sub-long/2addr v2, v4

    .line 114
    if-eqz v0, :cond_0

    .line 115
    const-string v1, "ChatsReceivedInLastHour"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v0, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    .prologue
    .line 84
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    sget-object v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->ID:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    sget-object v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->SENDER_USERNAME:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "ChatsReceivedInLastHourTable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    const-string v2, "ChatsReceivedInLastHour"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 94
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT COUNT() from ChatsReceivedInLastHour WHERE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->ID:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 121
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    const-string v1, "ChatsReceivedInLastHour"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->ID:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Lajv;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajv;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lakb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lajv;)V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->values()[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "ChatsReceivedInLastHour"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->values()[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;

    move-result-object v2

    .line 175
    array-length v3, v2

    .line 176
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 177
    aget-object v4, v2, v0

    .line 178
    if-lez v0, :cond_0

    .line 179
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->a(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->b(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaSCCPSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 184
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
