.class public final Lbmj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmj$b;,
        Lbmj$c;,
        Lbmj$a;
    }
.end annotation


# instance fields
.field final a:Lbnk;

.field b:I

.field c:I

.field private final d:Lbnh;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lbmj$1;

    invoke-direct {v0, p0}, Lbmj$1;-><init>(Lbmj;)V

    iput-object v0, p0, Lbmj;->a:Lbnk;

    .line 168
    sget-object v0, Lboi;->a:Lboi;

    invoke-static {v0, p1, p2, p3}, Lbnh;->a(Lboi;Ljava/io/File;J)Lbnh;

    move-result-object v0

    iput-object v0, p0, Lbmj;->d:Lbnh;

    .line 169
    return-void
.end method

.method static a(Lcax;)I
    .locals 6

    .prologue
    .line 660
    :try_start_0
    invoke-interface {p0}, Lcax;->k()J

    move-result-wide v0

    .line 661
    invoke-interface {p0}, Lcax;->n()Ljava/lang/String;

    move-result-object v2

    .line 662
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 663
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "expected an int but was \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 665
    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method static a(Lbnh$a;)V
    .locals 1

    .prologue
    .line 265
    if-eqz p0, :cond_0

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lbnh$a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method final a(Lbnb;)Lbnd;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 176
    iget-object v1, p1, Lbnb;->a:Ljava/lang/String;

    invoke-static {v1}, Lbnq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    :try_start_0
    iget-object v3, p0, Lbmj;->d:Lbnh;

    invoke-virtual {v3, v1}, Lbnh;->a(Ljava/lang/String;)Lbnh$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 181
    if-nez v1, :cond_0

    .line 203
    :goto_0
    return-object v0

    .line 190
    :cond_0
    :try_start_1
    new-instance v3, Lbmj$c;

    iget-object v4, v1, Lbnh$c;->c:[Lcbk;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Lbmj$c;-><init>(Lcbk;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    iget-object v4, v3, Lbmj$c;->g:Lbmv;

    const-string v5, "Content-Type"

    invoke-virtual {v4, v5}, Lbmv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lbmj$c;->g:Lbmv;

    const-string v6, "Content-Length"

    invoke-virtual {v5, v6}, Lbmv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lbnb$a;

    invoke-direct {v6}, Lbnb$a;-><init>()V

    iget-object v7, v3, Lbmj$c;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lbnb$a;->a(Ljava/lang/String;)Lbnb$a;

    move-result-object v6

    iget-object v7, v3, Lbmj$c;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lbnb$a;->a(Ljava/lang/String;Lbnc;)Lbnb$a;

    move-result-object v6

    iget-object v7, v3, Lbmj$c;->b:Lbmv;

    invoke-virtual {v6, v7}, Lbnb$a;->a(Lbmv;)Lbnb$a;

    move-result-object v6

    invoke-virtual {v6}, Lbnb$a;->a()Lbnb;

    move-result-object v6

    new-instance v7, Lbnd$a;

    invoke-direct {v7}, Lbnd$a;-><init>()V

    iput-object v6, v7, Lbnd$a;->a:Lbnb;

    iget-object v6, v3, Lbmj$c;->d:Lbna;

    iput-object v6, v7, Lbnd$a;->b:Lbna;

    iget v6, v3, Lbmj$c;->e:I

    iput v6, v7, Lbnd$a;->c:I

    iget-object v6, v3, Lbmj$c;->f:Ljava/lang/String;

    iput-object v6, v7, Lbnd$a;->d:Ljava/lang/String;

    iget-object v6, v3, Lbmj$c;->g:Lbmv;

    invoke-virtual {v7, v6}, Lbnd$a;->a(Lbmv;)Lbnd$a;

    move-result-object v6

    new-instance v7, Lbmj$b;

    invoke-direct {v7, v1, v4, v5}, Lbmj$b;-><init>(Lbnh$c;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v6, Lbnd$a;->g:Lbne;

    iget-object v1, v3, Lbmj$c;->h:Lbmu;

    iput-object v1, v6, Lbnd$a;->e:Lbmu;

    invoke-virtual {v6}, Lbnd$a;->a()Lbnd;

    move-result-object v1

    .line 198
    iget-object v4, v3, Lbmj$c;->a:Ljava/lang/String;

    iget-object v5, p1, Lbnb;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lbmj$c;->c:Ljava/lang/String;

    iget-object v5, p1, Lbnb;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Lbmj$c;->b:Lbmv;

    invoke-static {v1, v3, p1}, Lboa;->a(Lbnd;Lbmv;Lbnb;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    .line 199
    iget-object v1, v1, Lbnd;->g:Lbne;

    invoke-static {v1}, Lbnq;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 192
    :catch_0
    move-exception v2

    invoke-static {v1}, Lbnq;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 203
    goto/16 :goto_0

    .line 186
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method final a(Lbnd;)Lbns;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p1, Lbnd;->a:Lbnb;

    iget-object v1, v1, Lbnb;->b:Ljava/lang/String;

    .line 209
    iget-object v2, p1, Lbnd;->a:Lbnb;

    iget-object v2, v2, Lbnb;->b:Ljava/lang/String;

    invoke-static {v2}, Lbny;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    :try_start_0
    iget-object v1, p1, Lbnd;->a:Lbnb;

    invoke-virtual {p0, v1}, Lbmj;->b(Lbnb;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 217
    :cond_1
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-static {p1}, Lboa;->b(Lbnd;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Lbmj$c;

    invoke-direct {v1, p1}, Lbmj$c;-><init>(Lbnd;)V

    .line 231
    :try_start_1
    iget-object v2, p0, Lbmj;->d:Lbnh;

    iget-object v3, p1, Lbnd;->a:Lbnb;

    iget-object v3, v3, Lbnb;->a:Ljava/lang/String;

    invoke-static {v3}, Lbnq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lbnh;->a(Ljava/lang/String;J)Lbnh$a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 232
    if-eqz v2, :cond_0

    .line 235
    :try_start_2
    invoke-virtual {v1, v2}, Lbmj$c;->a(Lbnh$a;)V

    .line 236
    new-instance v1, Lbmj$a;

    invoke-direct {v1, p0, v2}, Lbmj$a;-><init>(Lbmj;Lbnh$a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lbmj;->a(Lbnh$a;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lbmj;->d:Lbnh;

    invoke-virtual {v0}, Lbnh;->close()V

    .line 363
    return-void
.end method

.method final declared-synchronized a(Lbnt;)V
    .locals 1

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lbmj;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbmj;->g:I

    .line 376
    iget-object v0, p1, Lbnt;->a:Lbnb;

    if-eqz v0, :cond_1

    .line 378
    iget v0, p0, Lbmj;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbmj;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 380
    :cond_1
    :try_start_1
    iget-object v0, p1, Lbnt;->b:Lbnd;

    if-eqz v0, :cond_0

    .line 382
    iget v0, p0, Lbmj;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbmj;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 1

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lbmj;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbmj;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(Lbnb;)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lbmj;->d:Lbnh;

    iget-object v1, p1, Lbnb;->a:Ljava/lang/String;

    invoke-static {v1}, Lbnq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbnh;->b(Ljava/lang/String;)Z

    .line 245
    return-void
.end method
