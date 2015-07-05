.class public final Lyx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lyy;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Laje;

.field public final d:Z

.field public e:J

.field public f:J

.field private final g:Lbgk;


# direct methods
.method public constructor <init>(Laje;Z)V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lyx;-><init>(Lbgk;Laje;Z)V

    .line 27
    return-void
.end method

.method private constructor <init>(Lbgk;Laje;Z)V
    .locals 4

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyx;->a:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lyx;->b:Ljava/util/Set;

    .line 22
    iput-wide v2, p0, Lyx;->e:J

    .line 23
    iput-wide v2, p0, Lyx;->f:J

    .line 31
    iput-object p1, p0, Lyx;->g:Lbgk;

    .line 32
    iput-object p2, p0, Lyx;->c:Laje;

    .line 33
    iput-boolean p3, p0, Lyx;->d:Z

    .line 34
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 6

    .prologue
    .line 63
    invoke-virtual {p0}, Lyx;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Countdown not yet started for this snap."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lyx;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-wide v0, p0, Lyx;->e:J

    .line 70
    :goto_0
    return-wide v0

    .line 69
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 70
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lyx;->f:J

    sub-long v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(Lyy;)V
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lyx;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lyx;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Z
    .locals 4

    .prologue
    .line 85
    iget-wide v0, p0, Lyx;->e:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 108
    iget-wide v0, p0, Lyx;->f:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lyy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 128
    iget-object v1, p0, Lyx;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v2, p0, Lyx;->b:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 130
    monitor-exit v1

    .line 131
    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 163
    const-string v0, "[Countdown snap:%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lyx;->c:Laje;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
