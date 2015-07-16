.class public Lcom/snapchat/android/analytics/framework/EasyMetric;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;,
        Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;
    }
.end annotation


# static fields
.field private static f:I


# instance fields
.field protected a:Ljava/lang/String;
    .annotation build Lchd;
    .end annotation
.end field

.field public b:J

.field protected c:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected d:Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected e:Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation build Lchd;
    .end annotation

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

.field private h:Ljava/util/Map;
    .annotation build Lchd;
    .end annotation

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

.field private i:Ljava/util/Map;
    .annotation build Lchd;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation build Lchd;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private k:J

.field private final l:Lbhk;

.field private final m:Laud;

.field private n:Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

.field private final o:Ljava/util/List;
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/snapchat/android/analytics/framework/EasyMetric;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x0

    new-instance v1, Lbhl;

    invoke-direct {v1}, Lbhl;-><init>()V

    iget-object v1, v1, Lbhl;->mClock:Lbhk;

    invoke-static {}, Laud;->a()Laud;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;Lbhk;Laud;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 106
    new-instance v0, Lbhl;

    invoke-direct {v0}, Lbhl;-><init>()V

    iget-object v0, v0, Lbhl;->mClock:Lbhk;

    invoke-static {}, Laud;->a()Laud;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;Lbhk;Laud;)V

    .line 107
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lbhk;Laud;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const-wide/16 v0, -0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->b:J

    .line 50
    iput-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->k:J

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->n:Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->o:Ljava/util/List;

    .line 111
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 112
    iput-object p2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->l:Lbhk;

    .line 113
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->a:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->m:Laud;

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->c:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->d:Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->e:Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 120
    return-void
.end method

.method private a(Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 1
    .param p1    # Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 282
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    return-object p0
.end method

.method private a(Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 258
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->j:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->j:Ljava/util/Map;

    .line 261
    :cond_0
    iget-boolean v0, p1, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "_change"

    .line 262
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->j:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mem_free"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->a(Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->j:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mem_used"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->b(Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->j:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mem_total"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->c(Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->j:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mem_max"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->d(Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-void

    .line 261
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/analytics/framework/EasyMetric;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 7

    .prologue
    .line 351
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;

    .line 354
    instance-of v1, v0, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->g:Ljava/util/Map;

    iget-object v3, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->h:Ljava/util/Map;

    iget-object v4, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->i:Ljava/util/Map;

    iget-object v5, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->j:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 360
    :cond_2
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 338
    sget v0, Lcom/snapchat/android/analytics/framework/EasyMetric;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/snapchat/android/analytics/framework/EasyMetric;->f:I

    .line 340
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()J

    .line 341
    const-string v0, "year_class"

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->m:Laud;

    invoke-virtual {v1}, Laud;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 343
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No event name has been set."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TRACE - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/snapchat/android/analytics/framework/EasyMetric;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->g:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->i:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->j:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TRACE - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/snapchat/android/analytics/framework/EasyMetric;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->g:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->i:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->j:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 348
    return-void
.end method


# virtual methods
.method public final a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 3

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->k:J

    .line 201
    const-string v0, "timeBucket"

    invoke-static {p1, p2}, Lauy;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->i:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->i:Ljava/util/Map;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->i:Ljava/util/Map;

    const-string v1, "time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 123
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->a:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 134
    if-nez p1, :cond_0

    const-string p1, "NULL - ANALYTICS ERROR"

    .line 136
    :cond_0
    if-nez p2, :cond_1

    const-string p2, "null"

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->g:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->g:Ljava/util/Map;

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 156
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->h:Ljava/util/Map;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/snapchat/android/analytics/framework/EasyMetric;"
        }
    .end annotation

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_0

    .line 148
    :cond_0
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 249
    invoke-direct {p0, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;)V

    .line 252
    if-eqz p1, :cond_0

    .line 253
    iget-wide v0, p2, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->a:J

    iget-wide v2, p1, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->a:J

    iget-wide v0, p2, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->c:J

    iget-wide v2, p1, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->c:J

    iget-wide v0, p2, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->b:J

    iget-wide v2, p1, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->b:J

    iget-wide v0, p2, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->d:J

    iget-wide v2, p1, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->d:J

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->e:Z

    invoke-direct {p0, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;)V

    .line 255
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 376
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 313
    invoke-static {}, Lakr;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->f()V

    .line 318
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c(Z)V

    goto :goto_0
.end method

.method public final b()Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->b:J

    .line 181
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->n:Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

    .line 182
    return-object p0
.end method

.method public final b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/snapchat/android/analytics/framework/EasyMetric;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->h:Ljava/util/Map;

    .line 163
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_0

    .line 166
    :cond_1
    return-object p0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lakr;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->f()V

    .line 331
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric$1;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric;Z)V

    invoke-static {v0}, Lbhp;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->l:Lbhk;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()J
    .locals 6

    .prologue
    .line 213
    const-wide/16 v0, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->l:Lbhk;

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->k:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_0

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->b:J

    sub-long/2addr v0, v2

    .line 216
    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 217
    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->n:Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

    new-instance v3, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

    invoke-direct {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;-><init>()V

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;)V

    .line 219
    :cond_0
    return-wide v0

    .line 214
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 306
    return-void
.end method
