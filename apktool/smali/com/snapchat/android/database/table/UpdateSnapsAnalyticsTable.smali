.class public final Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lall;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;


# instance fields
.field public a:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 28
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;)V

    .line 29
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;->b:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;->b:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;

    .line 35
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;->b:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 19
    check-cast p1, Lall;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labc;

    invoke-direct {v0}, Labc;-><init>()V

    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_NAME:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    iget-object v2, p1, Lall;->mEventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_PARAMETERS:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {p1}, Lall;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_TIMESTAMP:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    iget-wide v2, p1, Lall;->mTimestamp:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_TIMERS:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {p1}, Lall;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_LEVELS:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {p1}, Lall;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    iget-object v0, v0, Labc;->a:Landroid/content/ContentValues;

    goto :goto_0
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 19
    sget-object v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_NAME:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_PARAMETERS:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_TIMESTAMP:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_TIMERS:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->getColumnNumber()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->EVENT_LEVELS:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lall$a;

    invoke-direct {v5, v0}, Lall$a;-><init>(Ljava/lang/String;)V

    new-instance v0, Lall$a$1;

    invoke-direct {v0, v5}, Lall$a$1;-><init>(Lall$a;)V

    invoke-virtual {v0}, Lall$a$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v6

    invoke-virtual {v6, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v5, v0}, Lall$a;->a(Ljava/util/Map;)Lall$a;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, v5, Lall$a;->mTimestamp:D

    if-eqz v3, :cond_0

    new-instance v0, Lall$a$2;

    invoke-direct {v0, v5}, Lall$a$2;-><init>(Lall$a;)V

    invoke-virtual {v0}, Lall$a$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lall$a;->a(Ljava/lang/String;Ljava/lang/String;)Lall$a;

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    new-instance v0, Lall$a$3;

    invoke-direct {v0, v5}, Lall$a$3;-><init>(Lall$a;)V

    invoke-virtual {v0}, Lall$a$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Lall$a;->b(Ljava/lang/String;Ljava/lang/String;)Lall$a;

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lall$a;->a()Lall;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lakp;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;->a:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;->a:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    invoke-virtual {p0, v1, v1}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->a(Ljava/util/List;)V

    .line 65
    return-void
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->values()[Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "AnalyticsEvents"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 45
    const-string v1, "_id INTEGER PRIMARY KEY"

    .line 46
    invoke-static {}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->values()[Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->a(Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->b(Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-object v1
.end method
