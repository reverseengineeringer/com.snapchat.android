.class public final Lakq$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final mEventName:Ljava/lang/String;

.field private mLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTimers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mTimestamp:D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lakq$a;->mEventName:Ljava/lang/String;

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lakq$a;->mTimestamp:D

    .line 113
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lakq$a;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 151
    iget-object v0, p0, Lakq$a;->mTimers:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lakq$a;->mTimers:Ljava/util/Map;

    .line 152
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lakq$a;->mTimers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lakq$a;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lakq$a;"
        }
    .end annotation

    .prologue
    .line 127
    if-eqz p1, :cond_1

    .line 128
    iget-object v0, p0, Lakq$a;->mParams:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lakq$a;->mParams:Ljava/util/Map;

    .line 129
    :cond_0
    iget-object v0, p0, Lakq$a;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 131
    :cond_1
    return-object p0
.end method

.method public final a()Lakq;
    .locals 5

    .prologue
    .line 181
    new-instance v0, Lakq;

    iget-object v1, p0, Lakq$a;->mEventName:Ljava/lang/String;

    iget-wide v2, p0, Lakq$a;->mTimestamp:D

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lakq;-><init>(Ljava/lang/String;DB)V

    .line 182
    iget-object v1, p0, Lakq$a;->mParams:Ljava/util/Map;

    iput-object v1, v0, Lakq;->mParams:Ljava/util/Map;

    .line 183
    iget-object v1, p0, Lakq$a;->mTimers:Ljava/util/Map;

    if-nez v1, :cond_0

    iget-object v1, p0, Lakq$a;->mLevels:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 184
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Lakq;->mMetrics:Ljava/util/Map;

    .line 185
    iget-object v1, p0, Lakq$a;->mTimers:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, v0, Lakq;->mMetrics:Ljava/util/Map;

    const-string v2, "timers"

    iget-object v3, p0, Lakq$a;->mTimers:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_1
    iget-object v1, p0, Lakq$a;->mLevels:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, v0, Lakq;->mMetrics:Ljava/util/Map;

    const-string v2, "levels"

    iget-object v3, p0, Lakq$a;->mLevels:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_2
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lakq$a;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 162
    iget-object v0, p0, Lakq$a;->mLevels:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lakq$a;->mLevels:Ljava/util/Map;

    .line 163
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lakq$a;->mLevels:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-object p0
.end method
