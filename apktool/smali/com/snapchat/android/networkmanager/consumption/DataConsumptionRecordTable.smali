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
        "Lamc;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;


# instance fields
.field private final b:Lamd;


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
    invoke-static {}, Lalw;->a()Lalw;

    move-result-object v0

    iget-object v0, v0, Lalw;->a:Lamd;

    invoke-direct {p0, v0}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;-><init>(Lamd;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Lamd;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;->b:Lamd;

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
    check-cast p1, Lamc;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labc;

    invoke-direct {v0}, Labc;-><init>()V

    sget-object v1, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->ID:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    iget-object v2, p1, Lamc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v1, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->REQUEST_ID:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    iget-object v2, p1, Lamc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v1, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->TYPE:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    iget-object v2, p1, Lamc;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v1, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->SIZE_IN_BYTES:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    iget v2, p1, Lamc;->d:I

    invoke-virtual {v0, v1, v2}, Labc;->a(Laav;I)Labc;

    sget-object v1, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;->EXPIRATION:Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable$DataConsumptionRecordSchema;

    iget-wide v2, p1, Lamc;->c:J

    invoke-virtual {v0, v1, v2, v3}, Labc;->a(Laav;J)Labc;

    iget-object v0, v0, Labc;->a:Landroid/content/ContentValues;

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

    new-instance v1, Lamc;

    invoke-direct/range {v1 .. v7}, Lamc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v1
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
            "Lamc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;->b:Lamd;

    invoke-virtual {v0}, Lamd;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 110
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;->b:Lamd;

    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/networkmanager/consumption/DataConsumptionRecordTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lamd;->b:Ljava/lang/Object;

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

    check-cast v0, Lamc;

    iget-wide v4, v0, Lamc;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, v1, Lamd;->a:Ljava/util/Map;

    invoke-static {v0}, Lamd;->a(Lamc;)Ljava/lang/String;

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
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b()[Laav;
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
