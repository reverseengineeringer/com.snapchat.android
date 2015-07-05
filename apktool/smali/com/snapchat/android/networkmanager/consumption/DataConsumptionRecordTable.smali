.class public final Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lalg;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;


# instance fields
.field private final b:Lalh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;

    invoke-direct {v0}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;->a:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v0

    iget-object v0, v0, Lalb;->a:Lalh;

    invoke-direct {p0, v0}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;-><init>(Lalh;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Lalh;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;->b:Lalh;

    .line 41
    return-void
.end method

.method public static a()Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;->a:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 20
    check-cast p1, Lalg;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Laad;

    invoke-direct {v0}, Laad;-><init>()V

    sget-object v1, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->ID:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    iget-object v2, p1, Lalg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v1, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->REQUEST_ID:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    iget-object v2, p1, Lalg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v1, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->TYPE:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    iget-object v2, p1, Lalg;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v1, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->SIZE_IN_BYTES:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    iget v2, p1, Lalg;->d:I

    invoke-virtual {v0, v1, v2}, Laad;->a(Lzw;I)Laad;

    sget-object v1, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->EXPIRATION:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    iget-wide v2, p1, Lalg;->c:J

    invoke-virtual {v0, v1, v2, v3}, Laad;->a(Lzw;J)Laad;

    iget-object v0, v0, Laad;->a:Landroid/content/ContentValues;

    goto :goto_0
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 20
    sget-object v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->ID:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->REQUEST_ID:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->TYPE:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->SIZE_IN_BYTES:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sget-object v0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->EXPIRATION:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    new-instance v1, Lalg;

    invoke-direct/range {v1 .. v7}, Lalg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v1
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
            "Lalg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;->b:Lalh;

    invoke-virtual {v0}, Lalh;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lajv;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 110
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;->b:Lalh;

    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lalh;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalg;

    iget-wide v4, v0, Lalg;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, v1, Lalh;->a:Ljava/util/Map;

    invoke-static {v0}, Lalh;->a(Lalg;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v4, "DataConsumptionRecorder"

    const-string v5, "Ignoring expired record %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->values()[Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "DataConsumptionRecord"

    return-object v0
.end method
