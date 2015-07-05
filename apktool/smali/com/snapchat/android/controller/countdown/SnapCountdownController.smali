.class public final Lcom/snapchat/android/controller/countdown/SnapCountdownController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;,
        Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;
    }
.end annotation


# static fields
.field private static final e:Lcom/snapchat/android/controller/countdown/SnapCountdownController;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lyx;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;

.field final d:Lcom/squareup/otto/Bus;

.field private final f:Lbgk;

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    invoke-direct {v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;-><init>()V

    sput-object v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->e:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbgk;

    invoke-direct {v1}, Lbgk;-><init>()V

    new-instance v2, Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;

    invoke-direct {v2}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;-><init>()V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;-><init>(Landroid/os/Handler;Lbgk;Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;Lcom/squareup/otto/Bus;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lbgk;Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;Lcom/squareup/otto/Bus;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/util/Map;

    .line 291
    new-instance v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$1;-><init>(Lcom/snapchat/android/controller/countdown/SnapCountdownController;)V

    iput-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->h:Ljava/lang/Runnable;

    .line 62
    iput-object p1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->g:Landroid/os/Handler;

    .line 63
    iput-object p2, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->f:Lbgk;

    .line 64
    iput-object p3, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->c:Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;

    .line 65
    iput-object p4, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->d:Lcom/squareup/otto/Bus;

    .line 66
    return-void
.end method

.method public static a()Lcom/snapchat/android/controller/countdown/SnapCountdownController;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->e:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    return-object v0
.end method


# virtual methods
.method final a(J)V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    return-void
.end method

.method public final a(Laje;Z)V
    .locals 6
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 180
    const-string v0, "SnapCountdownController"

    const-string v1, "pause %s (%b)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b(Laje;)Lyx;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyx;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-virtual {v0}, Lyx;->b()Z

    move-result v2

    if-eq v2, p2, :cond_0

    if-eqz p2, :cond_1

    iget-wide v2, v0, Lyx;->f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lyx;->e:J

    .line 188
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 186
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lyx;->e:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lyx;->f:J

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lyx;->e:J

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lyx;Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;)V
    .locals 5

    .prologue
    .line 262
    const-string v0, "SnapCountdownController"

    const-string v1, "onSnapFinished %s, action: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/util/Map;

    iget-object v1, p1, Lyx;->c:Laje;

    invoke-virtual {v1}, Laje;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {p1}, Lyx;->d()Ljava/util/Set;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyy;

    .line 267
    sget-object v2, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->SKIP:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    if-ne p2, v2, :cond_0

    .line 268
    iget-object v2, p1, Lyx;->c:Laje;

    invoke-interface {v0, v2}, Lyy;->b(Laje;)V

    goto :goto_0

    .line 269
    :cond_0
    sget-object v2, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->EXPIRE:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    if-ne p2, v2, :cond_1

    .line 270
    iget-object v2, p1, Lyx;->c:Laje;

    invoke-interface {v0, v2}, Lyy;->a(Laje;)V

    goto :goto_0

    .line 271
    :cond_1
    sget-object v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->CANCEL:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p1, Lyx;->c:Laje;

    invoke-virtual {v0}, Laje;->C()V

    .line 276
    iget-object v1, p1, Lyx;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lyx;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Laje;)Z
    .locals 5
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    const-string v2, "SnapCountdownController"

    const-string v3, "cancel %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v2, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 165
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b(Laje;)Lyx;

    move-result-object v3

    .line 168
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lyx;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lyx;->d:Z

    if-nez v4, :cond_1

    .line 169
    :cond_0
    monitor-exit v2

    move v0, v1

    .line 172
    :goto_0
    return v0

    .line 171
    :cond_1
    sget-object v1, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->CANCEL:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    invoke-virtual {p0, v3, v1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(Lyx;Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;)V

    .line 172
    monitor-exit v2

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Laje;I)Z
    .locals 9
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    const-string v2, "SnapCountdownController"

    const-string v3, "startCountdown %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v2, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 109
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b(Laje;)Lyx;

    move-result-object v3

    .line 110
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lyx;->c()Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    int-to-double v4, p2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 112
    const-string v4, "SnapCountdownController"

    const-string v5, "Starting countdown %s, duration seconds: %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p1, v1}, Laje;->b(I)V

    .line 115
    invoke-virtual {p1, v1}, Laje;->c(I)V

    .line 116
    int-to-long v4, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lyx;->f:J

    .line 117
    iget-object v1, v3, Lyx;->c:Laje;

    invoke-virtual {v1}, Laje;->B()V

    .line 118
    invoke-virtual {v3}, Lyx;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(J)V

    .line 119
    monitor-exit v2

    .line 122
    :goto_0
    return v0

    .line 121
    :cond_0
    monitor-exit v2

    move v0, v1

    .line 122
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Laje;)Lyx;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/util/Map;

    invoke-virtual {p1}, Laje;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyx;

    return-object v0
.end method
