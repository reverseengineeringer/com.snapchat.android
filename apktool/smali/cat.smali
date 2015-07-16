.class public Lcat;
.super Lcbl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcat$a;
    }
.end annotation


# static fields
.field private static a:Lcat;


# instance fields
.field private e:Z

.field private f:Lcat;

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcbl;-><init>()V

    .line 263
    return-void
.end method

.method private static declared-synchronized a(Lcat;JZ)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    .line 75
    const-class v1, Lcat;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcat;->a:Lcat;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcat;

    invoke-direct {v0}, Lcat;-><init>()V

    sput-object v0, Lcat;->a:Lcat;

    .line 77
    new-instance v0, Lcat$a;

    invoke-direct {v0}, Lcat$a;-><init>()V

    invoke-virtual {v0}, Lcat$a;->start()V

    .line 80
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 81
    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 84
    invoke-virtual {p0}, Lcat;->f()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcat;->g:J

    .line 94
    :goto_0
    iget-wide v4, p0, Lcat;->g:J

    sub-long/2addr v4, v2

    .line 95
    sget-object v0, Lcat;->a:Lcat;

    .line 96
    :goto_1
    iget-object v6, v0, Lcat;->f:Lcat;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcat;->f:Lcat;

    iget-wide v6, v6, Lcat;->g:J

    sub-long/2addr v6, v2

    cmp-long v6, v4, v6

    if-gez v6, :cond_6

    .line 97
    :cond_1
    iget-object v2, v0, Lcat;->f:Lcat;

    iput-object v2, p0, Lcat;->f:Lcat;

    .line 98
    iput-object p0, v0, Lcat;->f:Lcat;

    .line 99
    sget-object v2, Lcat;->a:Lcat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_2

    .line 105
    :cond_2
    monitor-exit v1

    return-void

    .line 85
    :cond_3
    cmp-long v0, p1, v4

    if-eqz v0, :cond_4

    .line 86
    add-long v4, v2, p1

    :try_start_1
    iput-wide v4, p0, Lcat;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 87
    :cond_4
    if-eqz p3, :cond_5

    .line 88
    :try_start_2
    invoke-virtual {p0}, Lcat;->f()J

    move-result-wide v4

    iput-wide v4, p0, Lcat;->g:J

    goto :goto_0

    .line 90
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :cond_6
    iget-object v0, v0, Lcat;->f:Lcat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static declared-synchronized a(Lcat;)Z
    .locals 3

    .prologue
    .line 117
    const-class v1, Lcat;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcat;->a:Lcat;

    :goto_0
    if-eqz v0, :cond_1

    .line 118
    iget-object v2, v0, Lcat;->f:Lcat;

    if-ne v2, p0, :cond_0

    .line 119
    iget-object v2, p0, Lcat;->f:Lcat;

    iput-object v2, v0, Lcat;->f:Lcat;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcat;->f:Lcat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    const/4 v0, 0x0

    .line 126
    :goto_1
    monitor-exit v1

    return v0

    .line 117
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcat;->f:Lcat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b()Lcat;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 293
    const-class v2, Lcat;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcat;->a:Lcat;

    iget-object v1, v1, Lcat;->f:Lcat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-nez v1, :cond_1

    .line 316
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 301
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, v1, Lcat;->g:J

    sub-long v4, v6, v4

    .line 304
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 314
    sget-object v0, Lcat;->a:Lcat;

    iget-object v3, v1, Lcat;->f:Lcat;

    iput-object v3, v0, Lcat;->f:Lcat;

    .line 315
    const/4 v0, 0x0

    iput-object v0, v1, Lcat;->f:Lcat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 316
    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic e()Lcat;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcat;->b()Lcat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcat;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-object p1

    .line 258
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object p1, v0

    .line 260
    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method final a(Z)V
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcat;->d()Z

    move-result v0

    .line 249
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 6

    .prologue
    .line 62
    iget-boolean v0, p0, Lcat;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-wide v0, p0, Lcbl;->d:J

    .line 64
    iget-boolean v2, p0, Lcbl;->c:Z

    .line 65
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcat;->e:Z

    .line 69
    invoke-static {p0, v0, v1, v2}, Lcat;->a(Lcat;JZ)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    iget-boolean v1, p0, Lcat;->e:Z

    if-nez v1, :cond_0

    .line 111
    :goto_0
    return v0

    .line 110
    :cond_0
    iput-boolean v0, p0, Lcat;->e:Z

    .line 111
    invoke-static {p0}, Lcat;->a(Lcat;)Z

    move-result v0

    goto :goto_0
.end method
