.class public final Lbnx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbnx$c;,
        Lbnx$a;,
        Lbnx$b;
    }
.end annotation


# static fields
.field static final synthetic i:Z


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Lbnw;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbnl;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lbnx$b;

.field final g:Lbnx$a;

.field public final h:Lbnx$c;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbnl;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lbnx$c;

.field private l:Lbni;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lbnx;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbnx;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILbnw;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbnw;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lbnl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbnx;->a:J

    .line 65
    new-instance v0, Lbnx$c;

    invoke-direct {v0, p0}, Lbnx$c;-><init>(Lbnx;)V

    iput-object v0, p0, Lbnx;->h:Lbnx$c;

    .line 66
    new-instance v0, Lbnx$c;

    invoke-direct {v0, p0}, Lbnx$c;-><init>(Lbnx;)V

    iput-object v0, p0, Lbnx;->k:Lbnx$c;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lbnx;->l:Lbni;

    .line 77
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iput p1, p0, Lbnx;->c:I

    .line 80
    iput-object p2, p0, Lbnx;->d:Lbnw;

    .line 81
    iget-object v0, p2, Lbnw;->f:Lbnu;

    .line 82
    invoke-virtual {v0}, Lbnu;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lbnx;->b:J

    .line 83
    new-instance v0, Lbnx$b;

    iget-object v1, p2, Lbnw;->e:Lbnu;

    .line 84
    invoke-virtual {v1}, Lbnu;->b()I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lbnx$b;-><init>(Lbnx;JB)V

    iput-object v0, p0, Lbnx;->f:Lbnx$b;

    .line 85
    new-instance v0, Lbnx$a;

    invoke-direct {v0, p0}, Lbnx$a;-><init>(Lbnx;)V

    iput-object v0, p0, Lbnx;->g:Lbnx$a;

    .line 86
    iget-object v0, p0, Lbnx;->f:Lbnx$b;

    invoke-static {v0, p4}, Lbnx$b;->a(Lbnx$b;Z)Z

    .line 87
    iget-object v0, p0, Lbnx;->g:Lbnx$a;

    invoke-static {v0, p3}, Lbnx$a;->a(Lbnx$a;Z)Z

    .line 88
    iput-object p5, p0, Lbnx;->j:Ljava/util/List;

    .line 89
    return-void
.end method

.method static synthetic a(Lbnx;)Lbnw;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lbnx;->d:Lbnw;

    return-object v0
.end method

.method static synthetic b(Lbnx;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lbnx;->c:I

    return v0
.end method

.method static synthetic c(Lbnx;)Lbnx$c;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lbnx;->h:Lbnx$c;

    return-object v0
.end method

.method static synthetic d(Lbnx;)Lbni;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lbnx;->l:Lbni;

    return-object v0
.end method

.method private d(Lbni;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 237
    sget-boolean v1, Lbnx;->i:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 238
    :cond_0
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v1, p0, Lbnx;->l:Lbni;

    if-eqz v1, :cond_1

    .line 240
    monitor-exit p0

    .line 249
    :goto_0
    return v0

    .line 242
    :cond_1
    iget-object v1, p0, Lbnx;->f:Lbnx$b;

    invoke-static {v1}, Lbnx$b;->a(Lbnx$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbnx;->g:Lbnx$a;

    invoke-static {v1}, Lbnx$a;->a(Lbnx$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    monitor-exit p0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 245
    :cond_2
    :try_start_1
    iput-object p1, p0, Lbnx;->l:Lbni;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 247
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    iget-object v0, p0, Lbnx;->d:Lbnw;

    iget v1, p0, Lbnx;->c:I

    invoke-virtual {v0, v1}, Lbnw;->b(I)Lbnx;

    .line 249
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lbnx;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lbnx;->f()V

    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 582
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    return-void

    .line 584
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method static synthetic f(Lbnx;)V
    .locals 2

    .prologue
    .line 34
    sget-boolean v0, Lbnx;->i:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbnx;->f:Lbnx$b;

    invoke-static {v0}, Lbnx$b;->a(Lbnx$b;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lbnx;->f:Lbnx$b;

    invoke-static {v0}, Lbnx$b;->b(Lbnx$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbnx;->g:Lbnx$a;

    invoke-static {v0}, Lbnx$a;->a(Lbnx$a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbnx;->g:Lbnx$a;

    invoke-static {v0}, Lbnx$a;->b(Lbnx$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lbnx;->a()Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    sget-object v0, Lbni;->l:Lbni;

    invoke-virtual {p0, v0}, Lbnx;->a(Lbni;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    if-nez v1, :cond_2

    iget-object v0, p0, Lbnx;->d:Lbnw;

    iget v1, p0, Lbnx;->c:I

    invoke-virtual {v0, v1}, Lbnw;->b(I)Lbnx;

    goto :goto_1
.end method

.method static synthetic g(Lbnx;)Lbnx$c;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lbnx;->k:Lbnx$c;

    return-object v0
.end method

.method static synthetic h(Lbnx;)V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lbnx;->g:Lbnx$a;

    invoke-static {v0}, Lbnx$a;->b(Lbnx$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lbnx;->g:Lbnx$a;

    invoke-static {v0}, Lbnx$a;->a(Lbnx$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lbnx;->l:Lbni;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stream was reset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbnx;->l:Lbni;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method final a(J)V
    .locals 3

    .prologue
    .line 562
    iget-wide v0, p0, Lbnx;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lbnx;->b:J

    .line 563
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 564
    :cond_0
    return-void
.end method

.method public final a(Lbni;)V
    .locals 2

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lbnx;->d(Lbni;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lbnx;->d:Lbnw;

    iget v1, p0, Lbnx;->c:I

    invoke-virtual {v0, v1, p1}, Lbnw;->b(ILbni;)V

    goto :goto_0
.end method

.method public final declared-synchronized a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lbnx;->l:Lbni;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 109
    :cond_1
    :try_start_1
    iget-object v1, p0, Lbnx;->f:Lbnx$b;

    invoke-static {v1}, Lbnx$b;->a(Lbnx$b;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lbnx;->f:Lbnx$b;

    invoke-static {v1}, Lbnx$b;->b(Lbnx$b;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lbnx;->g:Lbnx$a;

    .line 110
    invoke-static {v1}, Lbnx$a;->a(Lbnx$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lbnx;->g:Lbnx$a;

    invoke-static {v1}, Lbnx$a;->b(Lbnx$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lbnx;->e:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 114
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lbni;)V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lbnx;->d(Lbni;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lbnx;->d:Lbnw;

    iget v1, p0, Lbnx;->c:I

    invoke-virtual {v0, v1, p1}, Lbnw;->a(ILbni;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    iget v0, p0, Lbnx;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 120
    :goto_0
    iget-object v3, p0, Lbnx;->d:Lbnw;

    iget-boolean v3, v3, Lbnw;->b:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    :cond_1
    move v1, v2

    .line 120
    goto :goto_1
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbnl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbnx;->h:Lbnx$c;

    invoke-virtual {v0}, Lbnx$c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :goto_0
    :try_start_1
    iget-object v0, p0, Lbnx;->e:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbnx;->l:Lbni;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lbnx;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lbnx;->h:Lbnx$c;

    invoke-virtual {v1}, Lbnx$c;->b()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_0
    :try_start_3
    iget-object v0, p0, Lbnx;->h:Lbnx$c;

    invoke-virtual {v0}, Lbnx$c;->b()V

    .line 144
    iget-object v0, p0, Lbnx;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbnx;->e:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    .line 145
    :cond_1
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stream was reset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbnx;->l:Lbni;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method final declared-synchronized c(Lbni;)V
    .locals 1

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbnx;->l:Lbni;

    if-nez v0, :cond_0

    .line 303
    iput-object p1, p0, Lbnx;->l:Lbni;

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lcai;
    .locals 2

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lbnx;->e:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbnx;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    iget-object v0, p0, Lbnx;->g:Lbnx$a;

    return-object v0
.end method

.method final e()V
    .locals 2

    .prologue
    .line 289
    sget-boolean v0, Lbnx;->i:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 291
    :cond_0
    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lbnx;->f:Lbnx$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbnx$b;->a(Lbnx$b;Z)Z

    .line 293
    invoke-virtual {p0}, Lbnx;->a()Z

    move-result v0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lbnx;->d:Lbnw;

    iget v1, p0, Lbnx;->c:I

    invoke-virtual {v0, v1}, Lbnw;->b(I)Lbnx;

    .line 299
    :cond_1
    return-void

    .line 295
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
