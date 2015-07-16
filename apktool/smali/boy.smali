.class public final Lboy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lboy$c;,
        Lboy$a;,
        Lboy$b;
    }
.end annotation


# static fields
.field static final synthetic i:Z


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Lbox;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbom;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lboy$b;

.field final g:Lboy$a;

.field public final h:Lboy$c;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbom;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lboy$c;

.field private l:Lboj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lboy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lboy;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILbox;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbox;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lbom;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lboy;->a:J

    .line 65
    new-instance v0, Lboy$c;

    invoke-direct {v0, p0}, Lboy$c;-><init>(Lboy;)V

    iput-object v0, p0, Lboy;->h:Lboy$c;

    .line 66
    new-instance v0, Lboy$c;

    invoke-direct {v0, p0}, Lboy$c;-><init>(Lboy;)V

    iput-object v0, p0, Lboy;->k:Lboy$c;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lboy;->l:Lboj;

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
    iput p1, p0, Lboy;->c:I

    .line 80
    iput-object p2, p0, Lboy;->d:Lbox;

    .line 81
    iget-object v0, p2, Lbox;->f:Lbov;

    .line 82
    invoke-virtual {v0}, Lbov;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lboy;->b:J

    .line 83
    new-instance v0, Lboy$b;

    iget-object v1, p2, Lbox;->e:Lbov;

    .line 84
    invoke-virtual {v1}, Lbov;->b()I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lboy$b;-><init>(Lboy;JB)V

    iput-object v0, p0, Lboy;->f:Lboy$b;

    .line 85
    new-instance v0, Lboy$a;

    invoke-direct {v0, p0}, Lboy$a;-><init>(Lboy;)V

    iput-object v0, p0, Lboy;->g:Lboy$a;

    .line 86
    iget-object v0, p0, Lboy;->f:Lboy$b;

    invoke-static {v0, p4}, Lboy$b;->a(Lboy$b;Z)Z

    .line 87
    iget-object v0, p0, Lboy;->g:Lboy$a;

    invoke-static {v0, p3}, Lboy$a;->a(Lboy$a;Z)Z

    .line 88
    iput-object p5, p0, Lboy;->j:Ljava/util/List;

    .line 89
    return-void
.end method

.method static synthetic a(Lboy;)Lbox;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lboy;->d:Lbox;

    return-object v0
.end method

.method static synthetic b(Lboy;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lboy;->c:I

    return v0
.end method

.method static synthetic c(Lboy;)Lboy$c;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lboy;->h:Lboy$c;

    return-object v0
.end method

.method static synthetic d(Lboy;)Lboj;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lboy;->l:Lboj;

    return-object v0
.end method

.method private d(Lboj;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 237
    sget-boolean v1, Lboy;->i:Z

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
    iget-object v1, p0, Lboy;->l:Lboj;

    if-eqz v1, :cond_1

    .line 240
    monitor-exit p0

    .line 249
    :goto_0
    return v0

    .line 242
    :cond_1
    iget-object v1, p0, Lboy;->f:Lboy$b;

    invoke-static {v1}, Lboy$b;->a(Lboy$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lboy;->g:Lboy$a;

    invoke-static {v1}, Lboy$a;->a(Lboy$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    monitor-exit p0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 245
    :cond_2
    :try_start_1
    iput-object p1, p0, Lboy;->l:Lboj;

    .line 246
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    iget-object v0, p0, Lboy;->d:Lbox;

    iget v1, p0, Lboy;->c:I

    invoke-virtual {v0, v1}, Lbox;->b(I)Lboy;

    .line 249
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lboy;)V
    .locals 2

    .prologue
    .line 34
    sget-boolean v0, Lboy;->i:Z

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
    iget-object v0, p0, Lboy;->f:Lboy$b;

    invoke-static {v0}, Lboy$b;->a(Lboy$b;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lboy;->f:Lboy$b;

    invoke-static {v0}, Lboy$b;->b(Lboy$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lboy;->g:Lboy$a;

    invoke-static {v0}, Lboy$a;->a(Lboy$a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lboy;->g:Lboy$a;

    invoke-static {v0}, Lboy$a;->b(Lboy$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lboy;->a()Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    sget-object v0, Lboj;->l:Lboj;

    invoke-virtual {p0, v0}, Lboy;->a(Lboj;)V

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

    iget-object v0, p0, Lboy;->d:Lbox;

    iget v1, p0, Lboy;->c:I

    invoke-virtual {v0, v1}, Lbox;->b(I)Lboy;

    goto :goto_1
.end method

.method static synthetic f(Lboy;)Lboy$c;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lboy;->k:Lboy$c;

    return-object v0
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method static synthetic g(Lboy;)V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lboy;->g:Lboy$a;

    invoke-static {v0}, Lboy$a;->b(Lboy$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lboy;->g:Lboy$a;

    invoke-static {v0}, Lboy$a;->a(Lboy$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lboy;->l:Lboj;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stream was reset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lboy;->l:Lboj;

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
    iget-wide v0, p0, Lboy;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lboy;->b:J

    .line 563
    return-void
.end method

.method public final a(Lboj;)V
    .locals 2

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lboy;->d(Lboj;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lboy;->d:Lbox;

    iget v1, p0, Lboy;->c:I

    invoke-virtual {v0, v1, p1}, Lbox;->b(ILboj;)V

    goto :goto_0
.end method

.method public final declared-synchronized a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lboy;->l:Lboj;
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
    iget-object v1, p0, Lboy;->f:Lboy$b;

    invoke-static {v1}, Lboy$b;->a(Lboy$b;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lboy;->f:Lboy$b;

    invoke-static {v1}, Lboy$b;->b(Lboy$b;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lboy;->g:Lboy$a;

    .line 110
    invoke-static {v1}, Lboy$a;->a(Lboy$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lboy;->g:Lboy$a;

    invoke-static {v1}, Lboy$a;->b(Lboy$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lboy;->e:Ljava/util/List;
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

.method public final b(Lboj;)V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lboy;->d(Lboj;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lboy;->d:Lbox;

    iget v1, p0, Lboy;->c:I

    invoke-virtual {v0, v1, p1}, Lbox;->a(ILboj;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    iget v0, p0, Lboy;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 120
    :goto_0
    iget-object v3, p0, Lboy;->d:Lbox;

    iget-boolean v3, v3, Lbox;->b:Z

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
            "Lbom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lboy;->h:Lboy$c;

    invoke-virtual {v0}, Lboy$c;->c()V

    .line 138
    iget-object v0, p0, Lboy;->h:Lboy$c;

    invoke-virtual {v0}, Lboy$c;->b()V

    .line 143
    iget-object v0, p0, Lboy;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lboy;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 145
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stream was reset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lboy;->l:Lboj;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c(Lboj;)V
    .locals 1

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lboy;->l:Lboj;

    if-nez v0, :cond_0

    .line 303
    iput-object p1, p0, Lboy;->l:Lboj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_0
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lcbj;
    .locals 2

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lboy;->e:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lboy;->b()Z

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
    iget-object v0, p0, Lboy;->g:Lboy$a;

    return-object v0
.end method

.method final e()V
    .locals 2

    .prologue
    .line 289
    sget-boolean v0, Lboy;->i:Z

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
    iget-object v0, p0, Lboy;->f:Lboy$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lboy$b;->a(Lboy$b;Z)Z

    .line 293
    invoke-virtual {p0}, Lboy;->a()Z

    move-result v0

    .line 294
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lboy;->d:Lbox;

    iget v1, p0, Lboy;->c:I

    invoke-virtual {v0, v1}, Lbox;->b(I)Lboy;

    .line 299
    :cond_1
    return-void

    .line 294
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
