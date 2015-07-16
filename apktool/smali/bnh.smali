.class public final Lbnh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbnh$b;,
        Lbnh$a;,
        Lbnh$c;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final synthetic b:Z

.field private static final u:Lcbj;


# instance fields
.field private final c:Lboi;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:Ljava/io/File;

.field private final h:I

.field private i:J

.field private final j:I

.field private k:J

.field private l:Lcaw;

.field private final m:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lbnh$b;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:J

.field private final s:Ljava/util/concurrent/Executor;

.field private final t:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lbnh;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbnh;->b:Z

    .line 95
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbnh;->a:Ljava/util/regex/Pattern;

    .line 810
    new-instance v0, Lbnh$3;

    invoke-direct {v0}, Lbnh$3;-><init>()V

    sput-object v0, Lbnh;->u:Lcbj;

    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lboi;Ljava/io/File;JLjava/util/concurrent/Executor;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-wide v4, p0, Lbnh;->k:J

    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    .line 164
    iput-wide v4, p0, Lbnh;->r:J

    .line 168
    new-instance v0, Lbnh$1;

    invoke-direct {v0, p0}, Lbnh$1;-><init>(Lbnh;)V

    iput-object v0, p0, Lbnh;->t:Ljava/lang/Runnable;

    .line 189
    iput-object p1, p0, Lbnh;->c:Lboi;

    .line 190
    iput-object p2, p0, Lbnh;->d:Ljava/io/File;

    .line 191
    const v0, 0x31191

    iput v0, p0, Lbnh;->h:I

    .line 192
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lbnh;->e:Ljava/io/File;

    .line 193
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lbnh;->f:Ljava/io/File;

    .line 194
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lbnh;->g:Ljava/io/File;

    .line 195
    const/4 v0, 0x2

    iput v0, p0, Lbnh;->j:I

    .line 196
    iput-wide p3, p0, Lbnh;->i:J

    .line 197
    iput-object p5, p0, Lbnh;->s:Ljava/util/concurrent/Executor;

    .line 198
    return-void
.end method

.method public static synthetic a(Lbnh;Ljava/lang/String;J)Lbnh$a;
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lbnh;->a(Ljava/lang/String;J)Lbnh$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lboi;Ljava/io/File;J)Lbnh;
    .locals 10

    .prologue
    .line 248
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp DiskLruCache"

    .line 257
    invoke-static {v0}, Lbnq;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 259
    new-instance v3, Lbnh;

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lbnh;-><init>(Lboi;Ljava/io/File;JLjava/util/concurrent/Executor;)V

    return-object v3
.end method

.method static synthetic a()Lcbj;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lbnh;->u:Lcbj;

    return-object v0
.end method

.method private declared-synchronized a(Lbnh$a;Z)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 516
    monitor-enter p0

    :try_start_0
    iget-object v2, p1, Lbnh$a;->a:Lbnh$b;

    .line 517
    iget-object v1, v2, Lbnh$b;->f:Lbnh$a;

    if-eq v1, p1, :cond_0

    .line 518
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 522
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    iget-boolean v1, v2, Lbnh$b;->e:Z

    if-nez v1, :cond_4

    move v1, v0

    .line 523
    :goto_0
    iget v3, p0, Lbnh;->j:I

    if-ge v1, v3, :cond_4

    .line 524
    iget-object v3, p1, Lbnh$a;->b:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    .line 525
    invoke-virtual {p1}, Lbnh$a;->b()V

    .line 526
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_1
    iget-object v3, p0, Lbnh;->c:Lboi;

    iget-object v4, v2, Lbnh$b;->d:[Ljava/io/File;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Lboi;->e(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 529
    invoke-virtual {p1}, Lbnh$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 523
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lbnh;->j:I

    if-ge v0, v1, :cond_7

    .line 536
    iget-object v1, v2, Lbnh$b;->d:[Ljava/io/File;

    aget-object v1, v1, v0

    .line 537
    if-eqz p2, :cond_6

    .line 538
    iget-object v3, p0, Lbnh;->c:Lboi;

    invoke-interface {v3, v1}, Lboi;->e(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 539
    iget-object v3, v2, Lbnh$b;->c:[Ljava/io/File;

    aget-object v3, v3, v0

    .line 540
    iget-object v4, p0, Lbnh;->c:Lboi;

    invoke-interface {v4, v1, v3}, Lboi;->a(Ljava/io/File;Ljava/io/File;)V

    .line 541
    iget-object v1, v2, Lbnh$b;->b:[J

    aget-wide v4, v1, v0

    .line 542
    iget-object v1, p0, Lbnh;->c:Lboi;

    invoke-interface {v1, v3}, Lboi;->f(Ljava/io/File;)J

    move-result-wide v6

    .line 543
    iget-object v1, v2, Lbnh$b;->b:[J

    aput-wide v6, v1, v0

    .line 544
    iget-wide v8, p0, Lbnh;->k:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lbnh;->k:J

    .line 535
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 547
    :cond_6
    iget-object v3, p0, Lbnh;->c:Lboi;

    invoke-interface {v3, v1}, Lboi;->d(Ljava/io/File;)V

    goto :goto_3

    .line 551
    :cond_7
    iget v0, p0, Lbnh;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbnh;->n:I

    .line 552
    const/4 v0, 0x0

    iput-object v0, v2, Lbnh$b;->f:Lbnh$a;

    .line 553
    iget-boolean v0, v2, Lbnh$b;->e:Z

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, v2, Lbnh$b;->e:Z

    .line 555
    iget-object v0, p0, Lbnh;->l:Lcaw;

    const-string v1, "CLEAN"

    invoke-interface {v0, v1}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lcaw;->g(I)Lcaw;

    .line 556
    iget-object v0, p0, Lbnh;->l:Lcaw;

    iget-object v1, v2, Lbnh$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 557
    iget-object v0, p0, Lbnh;->l:Lcaw;

    invoke-virtual {v2, v0}, Lbnh$b;->a(Lcaw;)V

    .line 558
    iget-object v0, p0, Lbnh;->l:Lcaw;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcaw;->g(I)Lcaw;

    .line 559
    if-eqz p2, :cond_8

    .line 560
    iget-wide v0, p0, Lbnh;->r:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lbnh;->r:J

    iput-wide v0, v2, Lbnh$b;->g:J

    .line 568
    :cond_8
    :goto_4
    iget-object v0, p0, Lbnh;->l:Lcaw;

    invoke-interface {v0}, Lcaw;->flush()V

    .line 570
    iget-wide v0, p0, Lbnh;->k:J

    iget-wide v2, p0, Lbnh;->i:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lbnh;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    :cond_9
    iget-object v0, p0, Lbnh;->s:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lbnh;->t:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 563
    :cond_a
    iget-object v0, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    iget-object v1, v2, Lbnh$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v0, p0, Lbnh;->l:Lcaw;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lcaw;->g(I)Lcaw;

    .line 565
    iget-object v0, p0, Lbnh;->l:Lcaw;

    iget-object v1, v2, Lbnh$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 566
    iget-object v0, p0, Lbnh;->l:Lcaw;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcaw;->g(I)Lcaw;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(Lbnh;Lbnh$a;Z)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lbnh;->a(Lbnh$a;Z)V

    return-void
.end method

.method private a(Lbnh$b;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 603
    iget-object v0, p1, Lbnh$b;->f:Lbnh$a;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p1, Lbnh$b;->f:Lbnh$a;

    iput-boolean v6, v0, Lbnh$a;->c:Z

    .line 607
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lbnh;->j:I

    if-ge v0, v1, :cond_1

    .line 608
    iget-object v1, p0, Lbnh;->c:Lboi;

    iget-object v2, p1, Lbnh$b;->c:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lboi;->d(Ljava/io/File;)V

    .line 609
    iget-wide v2, p0, Lbnh;->k:J

    iget-object v1, p1, Lbnh$b;->b:[J

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lbnh;->k:J

    .line 610
    iget-object v1, p1, Lbnh$b;->b:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    :cond_1
    iget v0, p0, Lbnh;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbnh;->n:I

    .line 614
    iget-object v0, p0, Lbnh;->l:Lcaw;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lcaw;->g(I)Lcaw;

    move-result-object v0

    iget-object v1, p1, Lbnh$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcaw;->g(I)Lcaw;

    .line 615
    iget-object v0, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lbnh$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-direct {p0}, Lbnh;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    iget-object v0, p0, Lbnh;->s:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lbnh;->t:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 621
    :cond_2
    return v6
.end method

.method static synthetic a(Lbnh;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lbnh;->p:Z

    return v0
.end method

.method static synthetic a(Lbnh;Lbnh$b;)Z
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lbnh;->a(Lbnh$b;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 202
    sget-boolean v0, Lbnh;->b:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 204
    :cond_0
    iget-boolean v0, p0, Lbnh;->p:Z

    if-eqz v0, :cond_1

    .line 236
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lbnh;->c:Lboi;

    iget-object v1, p0, Lbnh;->g:Ljava/io/File;

    invoke-interface {v0, v1}, Lboi;->e(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lbnh;->c:Lboi;

    iget-object v1, p0, Lbnh;->e:Ljava/io/File;

    invoke-interface {v0, v1}, Lboi;->e(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    iget-object v0, p0, Lbnh;->c:Lboi;

    iget-object v1, p0, Lbnh;->g:Ljava/io/File;

    invoke-interface {v0, v1}, Lboi;->d(Ljava/io/File;)V

    .line 219
    :cond_2
    :goto_1
    iget-object v0, p0, Lbnh;->c:Lboi;

    iget-object v1, p0, Lbnh;->e:Ljava/io/File;

    invoke-interface {v0, v1}, Lboi;->e(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    :try_start_0
    invoke-direct {p0}, Lbnh;->c()V

    .line 222
    invoke-direct {p0}, Lbnh;->e()V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbnh;->p:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-static {}, Lbno;->a()Lbno;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DiskLruCache "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbnh;->d:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is corrupt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lbno;->a(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lbnh;->close()V

    iget-object v0, p0, Lbnh;->c:Lboi;

    iget-object v1, p0, Lbnh;->d:Ljava/io/File;

    invoke-interface {v0, v1}, Lboi;->g(Ljava/io/File;)V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbnh;->q:Z

    .line 233
    :cond_3
    invoke-direct {p0}, Lbnh;->f()V

    .line 235
    iput-boolean v3, p0, Lbnh;->p:Z

    goto :goto_0

    .line 214
    :cond_4
    iget-object v0, p0, Lbnh;->c:Lboi;

    iget-object v1, p0, Lbnh;->g:Ljava/io/File;

    iget-object v2, p0, Lbnh;->e:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lboi;->a(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1
.end method

.method static synthetic b(Lbnh;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lbnh;->q:Z

    return v0
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v0, 0x0

    const/4 v8, -0x1

    .line 263
    iget-object v1, p0, Lbnh;->c:Lboi;

    iget-object v2, p0, Lbnh;->e:Ljava/io/File;

    invoke-interface {v1, v2}, Lboi;->a(Ljava/io/File;)Lcbk;

    move-result-object v1

    invoke-static {v1}, Lcbe;->a(Lcbk;)Lcax;

    move-result-object v3

    .line 265
    :try_start_0
    invoke-interface {v3}, Lcax;->n()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-interface {v3}, Lcax;->n()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-interface {v3}, Lcax;->n()Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-interface {v3}, Lcax;->n()Ljava/lang/String;

    move-result-object v5

    .line 269
    invoke-interface {v3}, Lcax;->n()Ljava/lang/String;

    move-result-object v6

    .line 270
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    .line 271
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lbnh;->h:I

    .line 272
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lbnh;->j:I

    .line 273
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    .line 274
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 275
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "unexpected journal header: ["

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lbnq;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    move v1, v0

    .line 282
    :goto_0
    :try_start_1
    invoke-interface {v3}, Lcax;->n()Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v8, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lbnh;->n:I

    .line 291
    invoke-interface {v3}, Lcax;->d()Z

    move-result v0

    if-nez v0, :cond_9

    .line 292
    invoke-direct {p0}, Lbnh;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    :goto_1
    invoke-static {v3}, Lbnq;->a(Ljava/io/Closeable;)V

    .line 298
    return-void

    .line 282
    :cond_2
    add-int/lit8 v0, v5, 0x1

    const/16 v2, 0x20

    :try_start_3
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    if-ne v5, v2, :cond_a

    const-string v2, "REMOVE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 286
    goto :goto_0

    .line 282
    :cond_4
    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_3
    iget-object v0, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnh$b;

    if-nez v0, :cond_5

    new-instance v0, Lbnh$b;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v2, v7}, Lbnh$b;-><init>(Lbnh;Ljava/lang/String;B)V

    iget-object v7, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eq v6, v8, :cond_6

    if-ne v5, v9, :cond_6

    const-string v2, "CLEAN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, v0, Lbnh$b;->e:Z

    const/4 v4, 0x0

    iput-object v4, v0, Lbnh$b;->f:Lbnh$a;

    invoke-virtual {v0, v2}, Lbnh$b;->a([Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-ne v6, v8, :cond_7

    if-ne v5, v9, :cond_7

    const-string v2, "DIRTY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lbnh$a;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Lbnh$a;-><init>(Lbnh;Lbnh$b;B)V

    iput-object v2, v0, Lbnh$b;->f:Lbnh$a;

    goto :goto_2

    :cond_7
    if-ne v6, v8, :cond_8

    const/4 v0, 0x4

    if-ne v5, v0, :cond_8

    const-string v0, "READ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    :cond_9
    :try_start_4
    invoke-direct {p0}, Lbnh;->d()Lcaw;

    move-result-object v0

    iput-object v0, p0, Lbnh;->l:Lcaw;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :cond_a
    move-object v2, v0

    goto :goto_3
.end method

.method static synthetic c(Lbnh;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lbnh;->j()V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 692
    sget-object v0, Lbnh;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_0
    return-void
.end method

.method private d()Lcaw;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lbnh;->c:Lboi;

    iget-object v1, p0, Lbnh;->e:Ljava/io/File;

    invoke-interface {v0, v1}, Lboi;->c(Ljava/io/File;)Lcbj;

    move-result-object v0

    .line 303
    new-instance v1, Lbnh$2;

    invoke-direct {v1, p0, v0}, Lbnh$2;-><init>(Lbnh;Lcbj;)V

    .line 309
    invoke-static {v1}, Lcbe;->a(Lcbj;)Lcaw;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lbnh;)Z
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lbnh;->g()Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 356
    iget-object v0, p0, Lbnh;->c:Lboi;

    iget-object v1, p0, Lbnh;->f:Ljava/io/File;

    invoke-interface {v0, v1}, Lboi;->d(Ljava/io/File;)V

    .line 357
    iget-object v0, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnh$b;

    .line 359
    iget-object v1, v0, Lbnh$b;->f:Lbnh$a;

    if-nez v1, :cond_1

    move v1, v2

    .line 360
    :goto_1
    iget v4, p0, Lbnh;->j:I

    if-ge v1, v4, :cond_0

    .line 361
    iget-wide v4, p0, Lbnh;->k:J

    iget-object v6, v0, Lbnh$b;->b:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lbnh;->k:J

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 364
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lbnh$b;->f:Lbnh$a;

    move v1, v2

    .line 365
    :goto_2
    iget v4, p0, Lbnh;->j:I

    if-ge v1, v4, :cond_2

    .line 366
    iget-object v4, p0, Lbnh;->c:Lboi;

    iget-object v5, v0, Lbnh$b;->c:[Ljava/io/File;

    aget-object v5, v5, v1

    invoke-interface {v4, v5}, Lboi;->d(Ljava/io/File;)V

    .line 367
    iget-object v4, p0, Lbnh;->c:Lboi;

    iget-object v5, v0, Lbnh$b;->d:[Ljava/io/File;

    aget-object v5, v5, v1

    invoke-interface {v4, v5}, Lboi;->d(Ljava/io/File;)V

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 369
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 372
    :cond_3
    return-void
.end method

.method static synthetic e(Lbnh;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lbnh;->f()V

    return-void
.end method

.method static synthetic f(Lbnh;)I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lbnh;->n:I

    return v0
.end method

.method private declared-synchronized f()V
    .locals 5

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbnh;->l:Lcaw;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lbnh;->l:Lcaw;

    invoke-interface {v0}, Lcaw;->close()V

    .line 383
    :cond_0
    iget-object v0, p0, Lbnh;->c:Lboi;

    iget-object v1, p0, Lbnh;->f:Ljava/io/File;

    invoke-interface {v0, v1}, Lboi;->b(Ljava/io/File;)Lcbj;

    move-result-object v0

    invoke-static {v0}, Lcbe;->a(Lcbj;)Lcaw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 385
    :try_start_1
    const-string v0, "libcore.io.DiskLruCache"

    invoke-interface {v1, v0}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcaw;->g(I)Lcaw;

    .line 386
    const-string v0, "1"

    invoke-interface {v1, v0}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcaw;->g(I)Lcaw;

    .line 387
    iget v0, p0, Lbnh;->h:I

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcaw;->j(J)Lcaw;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcaw;->g(I)Lcaw;

    .line 388
    iget v0, p0, Lbnh;->j:I

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcaw;->j(J)Lcaw;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcaw;->g(I)Lcaw;

    .line 389
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Lcaw;->g(I)Lcaw;

    .line 391
    iget-object v0, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnh$b;

    .line 392
    iget-object v3, v0, Lbnh$b;->f:Lbnh$a;

    if-eqz v3, :cond_1

    .line 393
    const-string v3, "DIRTY"

    invoke-interface {v1, v3}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lcaw;->g(I)Lcaw;

    .line 394
    iget-object v0, v0, Lbnh$b;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 395
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Lcaw;->g(I)Lcaw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Lcaw;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 379
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 397
    :cond_1
    :try_start_3
    const-string v3, "CLEAN"

    invoke-interface {v1, v3}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lcaw;->g(I)Lcaw;

    .line 398
    iget-object v3, v0, Lbnh$b;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 399
    invoke-virtual {v0, v1}, Lbnh$b;->a(Lcaw;)V

    .line 400
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Lcaw;->g(I)Lcaw;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 404
    :cond_2
    :try_start_4
    invoke-interface {v1}, Lcaw;->close()V

    .line 407
    iget-object v0, p0, Lbnh;->c:Lboi;

    iget-object v1, p0, Lbnh;->e:Ljava/io/File;

    invoke-interface {v0, v1}, Lboi;->e(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    iget-object v0, p0, Lbnh;->c:Lboi;

    iget-object v1, p0, Lbnh;->e:Ljava/io/File;

    iget-object v2, p0, Lbnh;->g:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lboi;->a(Ljava/io/File;Ljava/io/File;)V

    .line 410
    :cond_3
    iget-object v0, p0, Lbnh;->c:Lboi;

    iget-object v1, p0, Lbnh;->f:Ljava/io/File;

    iget-object v2, p0, Lbnh;->e:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lboi;->a(Ljava/io/File;Ljava/io/File;)V

    .line 411
    iget-object v0, p0, Lbnh;->c:Lboi;

    iget-object v1, p0, Lbnh;->g:Ljava/io/File;

    invoke-interface {v0, v1}, Lboi;->d(Ljava/io/File;)V

    .line 413
    invoke-direct {p0}, Lbnh;->d()Lcaw;

    move-result-object v0

    iput-object v0, p0, Lbnh;->l:Lcaw;

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbnh;->o:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 415
    monitor-exit p0

    return-void
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 580
    iget v0, p0, Lbnh;->n:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lbnh;->n:I

    iget-object v1, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    .line 582
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lbnh;)Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbnh;->o:Z

    return v0
.end method

.method static synthetic h(Lbnh;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lbnh;->j:I

    return v0
.end method

.method private declared-synchronized h()Z
    .locals 1

    .prologue
    .line 626
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbnh;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lbnh;)Lboi;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lbnh;->c:Lboi;

    return-object v0
.end method

.method private declared-synchronized i()V
    .locals 2

    .prologue
    .line 630
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbnh;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 633
    :cond_0
    monitor-exit p0

    return-void
.end method

.method static synthetic j(Lbnh;)Ljava/io/File;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lbnh;->d:Ljava/io/File;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 663
    :goto_0
    iget-wide v0, p0, Lbnh;->k:J

    iget-wide v2, p0, Lbnh;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 664
    iget-object v0, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnh$b;

    .line 665
    invoke-direct {p0, v0}, Lbnh;->a(Lbnh$b;)Z

    goto :goto_0

    .line 667
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;J)Lbnh$a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 451
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbnh;->b()V

    .line 453
    invoke-direct {p0}, Lbnh;->i()V

    .line 454
    invoke-static {p1}, Lbnh;->c(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnh$b;

    .line 456
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 457
    iget-wide v2, v0, Lbnh$b;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 478
    :goto_0
    monitor-exit p0

    return-object v0

    .line 460
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object v2, v0, Lbnh$b;->f:Lbnh$a;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 461
    goto :goto_0

    .line 465
    :cond_2
    iget-object v2, p0, Lbnh;->l:Lcaw;

    const-string v3, "DIRTY"

    invoke-interface {v2, v3}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lcaw;->g(I)Lcaw;

    move-result-object v2

    invoke-interface {v2, p1}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lcaw;->g(I)Lcaw;

    .line 466
    iget-object v2, p0, Lbnh;->l:Lcaw;

    invoke-interface {v2}, Lcaw;->flush()V

    .line 468
    iget-boolean v2, p0, Lbnh;->o:Z

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 469
    goto :goto_0

    .line 472
    :cond_3
    if-nez v0, :cond_4

    .line 473
    new-instance v0, Lbnh$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbnh$b;-><init>(Lbnh;Ljava/lang/String;B)V

    .line 474
    iget-object v1, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 476
    :goto_1
    new-instance v0, Lbnh$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lbnh$a;-><init>(Lbnh;Lbnh$b;B)V

    .line 477
    iput-object v0, v1, Lbnh$b;->f:Lbnh$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Lbnh$c;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 423
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbnh;->b()V

    .line 425
    invoke-direct {p0}, Lbnh;->i()V

    .line 426
    invoke-static {p1}, Lbnh;->c(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnh$b;

    .line 428
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lbnh$b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 439
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 430
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lbnh$b;->a()Lbnh$c;

    move-result-object v0

    .line 431
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 433
    :cond_3
    iget v1, p0, Lbnh;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbnh;->n:I

    .line 434
    iget-object v1, p0, Lbnh;->l:Lcaw;

    const-string v2, "READ"

    invoke-interface {v1, v2}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lcaw;->g(I)Lcaw;

    move-result-object v1

    invoke-interface {v1, p1}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lcaw;->g(I)Lcaw;

    .line 435
    invoke-direct {p0}, Lbnh;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    iget-object v1, p0, Lbnh;->s:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lbnh;->t:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbnh;->b()V

    .line 595
    invoke-direct {p0}, Lbnh;->i()V

    .line 596
    invoke-static {p1}, Lbnh;->c(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnh$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 599
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lbnh;->a(Lbnh$b;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 5

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbnh;->p:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbnh;->q:Z

    if-eqz v0, :cond_1

    .line 647
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbnh;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :goto_0
    monitor-exit p0

    return-void

    .line 651
    :cond_1
    :try_start_1
    iget-object v0, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lbnh;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lbnh$b;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbnh$b;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 652
    iget-object v4, v3, Lbnh$b;->f:Lbnh$a;

    if-eqz v4, :cond_2

    .line 653
    iget-object v3, v3, Lbnh$b;->f:Lbnh$a;

    invoke-virtual {v3}, Lbnh$a;->b()V

    .line 651
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 656
    :cond_3
    invoke-direct {p0}, Lbnh;->j()V

    .line 657
    iget-object v0, p0, Lbnh;->l:Lcaw;

    invoke-interface {v0}, Lcaw;->close()V

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lbnh;->l:Lcaw;

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbnh;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
