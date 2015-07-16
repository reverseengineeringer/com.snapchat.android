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
            "Lzt;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;

.field final d:Lcom/squareup/otto/Bus;

.field private final f:Lbhk;

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    invoke-direct {v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;-><init>()V

    sput-object v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->e:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbhk;

    invoke-direct {v1}, Lbhk;-><init>()V

    new-instance v2, Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;

    invoke-direct {v2}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;-><init>()V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;-><init>(Landroid/os/Handler;Lbhk;Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;Lcom/squareup/otto/Bus;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lbhk;Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;Lcom/squareup/otto/Bus;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/util/Map;

    .line 307
    new-instance v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$1;-><init>(Lcom/snapchat/android/controller/countdown/SnapCountdownController;)V

    iput-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->h:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->g:Landroid/os/Handler;

    .line 64
    iput-object p2, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->f:Lbhk;

    .line 65
    iput-object p3, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->c:Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;

    .line 66
    iput-object p4, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->d:Lcom/squareup/otto/Bus;

    .line 67
    return-void
.end method

.method public static a()Lcom/snapchat/android/controller/countdown/SnapCountdownController;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->e:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    return-object v0
.end method


# virtual methods
.method final a(J)V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    return-void
.end method

.method public final a(Laka;Z)V
    .locals 6
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 181
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 182
    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b(Laka;)Lzt;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzt;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v0}, Lzt;->b()Z

    move-result v2

    if-eq v2, p2, :cond_0

    if-eqz p2, :cond_1

    iget-wide v2, v0, Lzt;->f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lzt;->e:J

    .line 189
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 187
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lzt;->e:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lzt;->f:J

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lzt;->e:J

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lzt;Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;)V
    .locals 3

    .prologue
    .line 278
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 279
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/util/Map;

    iget-object v1, p1, Lzt;->c:Laka;

    invoke-virtual {v1}, Laka;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {p1}, Lzt;->d()Ljava/util/Set;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzu;

    .line 283
    sget-object v2, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->SKIP:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    if-ne p2, v2, :cond_1

    .line 284
    iget-object v2, p1, Lzt;->c:Laka;

    invoke-interface {v0, v2}, Lzu;->b(Laka;)V

    goto :goto_0

    .line 285
    :cond_1
    sget-object v2, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->EXPIRE:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    if-ne p2, v2, :cond_2

    .line 286
    iget-object v2, p1, Lzt;->c:Laka;

    invoke-interface {v0, v2}, Lzu;->a(Laka;)V

    goto :goto_0

    .line 287
    :cond_2
    sget-object v2, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->CANCEL:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    if-ne p2, v2, :cond_0

    .line 288
    iget-object v2, p1, Lzt;->c:Laka;

    invoke-interface {v0, v2}, Lzu;->c(Laka;)V

    goto :goto_0

    .line 291
    :cond_3
    iget-object v0, p1, Lzt;->c:Laka;

    invoke-virtual {v0}, Laka;->D()V

    .line 292
    iget-object v1, p1, Lzt;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lzt;->b:Ljava/util/Set;

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

.method public final a(Laka;)Z
    .locals 5
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 165
    iget-object v2, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b(Laka;)Lzt;

    move-result-object v3

    .line 169
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lzt;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lzt;->d:Z

    if-nez v4, :cond_1

    .line 170
    :cond_0
    monitor-exit v2

    move v0, v1

    .line 173
    :goto_0
    return v0

    .line 172
    :cond_1
    sget-object v1, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->CANCEL:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    invoke-virtual {p0, v3, v1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(Lzt;Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;)V

    .line 173
    monitor-exit v2

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Laka;I)Z
    .locals 8
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 108
    iget-object v2, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 110
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b(Laka;)Lzt;

    move-result-object v3

    .line 111
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lzt;->c()Z

    move-result v4

    if-nez v4, :cond_0

    .line 112
    int-to-double v4, p2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 113
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 115
    invoke-virtual {p1, v1}, Laka;->b(I)V

    .line 116
    invoke-virtual {p1, v1}, Laka;->c(I)V

    .line 117
    int-to-long v4, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lzt;->f:J

    .line 118
    iget-object v1, v3, Lzt;->c:Laka;

    invoke-virtual {v1}, Laka;->C()V

    .line 119
    invoke-virtual {v3}, Lzt;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(J)V

    .line 120
    monitor-exit v2

    .line 123
    :goto_0
    return v0

    .line 122
    :cond_0
    monitor-exit v2

    move v0, v1

    .line 123
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Laka;)Lzt;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/util/Map;

    invoke-virtual {p1}, Laka;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzt;

    return-object v0
.end method
