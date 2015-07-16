.class public final Lcll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcln;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcll;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcll;->a:Ljava/util/HashMap;

    .line 40
    return-void
.end method

.method private static a()Ljava/util/HashMap;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method private declared-synchronized c(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 53
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v0, v1

    .line 95
    :goto_0
    monitor-exit p0

    return-object v0

    .line 57
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcll;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 58
    if-nez v0, :cond_8

    .line 59
    iget-object v3, p0, Lcll;->a:Ljava/util/HashMap;

    invoke-static {}, Lcll;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 62
    :goto_1
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 63
    if-nez v0, :cond_3

    .line 64
    invoke-static {}, Lcll;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3}, Lchk;->a(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v5

    .line 68
    array-length v6, v5

    move v4, v2

    :goto_2
    if-ge v4, v6, :cond_7

    aget-object v3, v5, v4

    .line 69
    if-eqz v3, :cond_4

    array-length v7, v3

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v4, v3

    .line 74
    :goto_3
    invoke-static {p1}, Lchk;->a(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v5

    .line 76
    array-length v6, v5

    move v3, v2

    :goto_4
    if-ge v3, v6, :cond_2

    aget-object v2, v5, v3

    .line 77
    if-eqz v2, :cond_5

    array-length v7, v2

    const/4 v8, 0x5

    if-ne v7, v8, :cond_5

    const/4 v7, 0x0

    aget-object v7, v2, v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v1, v2

    .line 83
    :cond_2
    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 84
    const/4 v2, 0x2

    aget-object v2, v4, v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x2

    aget-object v6, v1, v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v1, v6

    aput-object v6, v3, v5

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/4 v2, 0x2

    aget-object v2, v4, v2

    const/4 v3, 0x4

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x4

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-Summer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    aget-object v5, v1, v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    aget-object v1, v1, v5

    aput-object v1, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_3
    :goto_5
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto/16 :goto_0

    .line 68
    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_2

    .line 76
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 91
    :cond_6
    const/4 v2, 0x4

    aget-object v2, v4, v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    aget-object v5, v1, v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    aget-object v1, v1, v5

    aput-object v1, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    move-object v4, v1

    goto/16 :goto_3

    :cond_8
    move-object v3, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcll;->c(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcll;->c(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method
