.class public final Lbli;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbli$b;,
        Lbli$c;,
        Lbli$a;
    }
.end annotation


# instance fields
.field final a:Lbmj;

.field b:I

.field c:I

.field private final d:Lbmg;

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
    new-instance v0, Lbli$1;

    invoke-direct {v0, p0}, Lbli$1;-><init>(Lbli;)V

    iput-object v0, p0, Lbli;->a:Lbmj;

    .line 168
    sget-object v0, Lbnh;->a:Lbnh;

    invoke-static {v0, p1, p2, p3}, Lbmg;->a(Lbnh;Ljava/io/File;J)Lbmg;

    move-result-object v0

    iput-object v0, p0, Lbli;->d:Lbmg;

    .line 169
    return-void
.end method

.method static a(Lbzw;)I
    .locals 6

    .prologue
    .line 660
    :try_start_0
    invoke-interface {p0}, Lbzw;->k()J

    move-result-wide v0

    .line 661
    invoke-interface {p0}, Lbzw;->n()Ljava/lang/String;

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

.method static a(Lbmg$a;)V
    .locals 1

    .prologue
    .line 265
    if-eqz p0, :cond_0

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lbmg$a;->b()V
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
.method final a(Lbma;)Lbmc;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 176
    iget-object v1, p1, Lbma;->a:Ljava/lang/String;

    invoke-static {v1}, Lbmp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    :try_start_0
    iget-object v3, p0, Lbli;->d:Lbmg;

    invoke-virtual {v3, v1}, Lbmg;->a(Ljava/lang/String;)Lbmg$c;
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
    new-instance v3, Lbli$c;

    iget-object v4, v1, Lbmg$c;->c:[Lcaj;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Lbli$c;-><init>(Lcaj;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    iget-object v4, v3, Lbli$c;->g:Lblu;

    const-string v5, "Content-Type"

    invoke-virtual {v4, v5}, Lblu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lbli$c;->g:Lblu;

    const-string v6, "Content-Length"

    invoke-virtual {v5, v6}, Lblu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lbma$a;

    invoke-direct {v6}, Lbma$a;-><init>()V

    iget-object v7, v3, Lbli$c;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lbma$a;->a(Ljava/lang/String;)Lbma$a;

    move-result-object v6

    iget-object v7, v3, Lbli$c;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lbma$a;->a(Ljava/lang/String;Lbmb;)Lbma$a;

    move-result-object v6

    iget-object v7, v3, Lbli$c;->b:Lblu;

    invoke-virtual {v6, v7}, Lbma$a;->a(Lblu;)Lbma$a;

    move-result-object v6

    invoke-virtual {v6}, Lbma$a;->a()Lbma;

    move-result-object v6

    new-instance v7, Lbmc$a;

    invoke-direct {v7}, Lbmc$a;-><init>()V

    iput-object v6, v7, Lbmc$a;->a:Lbma;

    iget-object v6, v3, Lbli$c;->d:Lblz;

    iput-object v6, v7, Lbmc$a;->b:Lblz;

    iget v6, v3, Lbli$c;->e:I

    iput v6, v7, Lbmc$a;->c:I

    iget-object v6, v3, Lbli$c;->f:Ljava/lang/String;

    iput-object v6, v7, Lbmc$a;->d:Ljava/lang/String;

    iget-object v6, v3, Lbli$c;->g:Lblu;

    invoke-virtual {v7, v6}, Lbmc$a;->a(Lblu;)Lbmc$a;

    move-result-object v6

    new-instance v7, Lbli$b;

    invoke-direct {v7, v1, v4, v5}, Lbli$b;-><init>(Lbmg$c;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v6, Lbmc$a;->g:Lbmd;

    iget-object v1, v3, Lbli$c;->h:Lblt;

    iput-object v1, v6, Lbmc$a;->e:Lblt;

    invoke-virtual {v6}, Lbmc$a;->a()Lbmc;

    move-result-object v1

    .line 198
    iget-object v4, v3, Lbli$c;->a:Ljava/lang/String;

    iget-object v5, p1, Lbma;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lbli$c;->c:Ljava/lang/String;

    iget-object v5, p1, Lbma;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Lbli$c;->b:Lblu;

    invoke-static {v1, v3, p1}, Lbmz;->a(Lbmc;Lblu;Lbma;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    .line 199
    iget-object v1, v1, Lbmc;->g:Lbmd;

    invoke-static {v1}, Lbmp;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 192
    :catch_0
    move-exception v2

    invoke-static {v1}, Lbmp;->a(Ljava/io/Closeable;)V

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

.method final a(Lbmc;)Lbmr;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p1, Lbmc;->a:Lbma;

    iget-object v1, v1, Lbma;->b:Ljava/lang/String;

    .line 209
    iget-object v2, p1, Lbmc;->a:Lbma;

    iget-object v2, v2, Lbma;->b:Ljava/lang/String;

    invoke-static {v2}, Lbmx;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    :try_start_0
    iget-object v1, p1, Lbmc;->a:Lbma;

    invoke-virtual {p0, v1}, Lbli;->b(Lbma;)V
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
    invoke-static {p1}, Lbmz;->b(Lbmc;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Lbli$c;

    invoke-direct {v1, p1}, Lbli$c;-><init>(Lbmc;)V

    .line 231
    :try_start_1
    iget-object v2, p0, Lbli;->d:Lbmg;

    iget-object v3, p1, Lbmc;->a:Lbma;

    iget-object v3, v3, Lbma;->a:Ljava/lang/String;

    invoke-static {v3}, Lbmp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lbmg;->a(Ljava/lang/String;J)Lbmg$a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 232
    if-eqz v2, :cond_0

    .line 235
    :try_start_2
    invoke-virtual {v1, v2}, Lbli$c;->a(Lbmg$a;)V

    .line 236
    new-instance v1, Lbli$a;

    invoke-direct {v1, p0, v2}, Lbli$a;-><init>(Lbli;Lbmg$a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lbli;->a(Lbmg$a;)V

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
    iget-object v0, p0, Lbli;->d:Lbmg;

    invoke-virtual {v0}, Lbmg;->close()V

    .line 363
    return-void
.end method

.method final declared-synchronized a(Lbms;)V
    .locals 1

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lbli;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbli;->g:I

    .line 376
    iget-object v0, p1, Lbms;->a:Lbma;

    if-eqz v0, :cond_1

    .line 378
    iget v0, p0, Lbli;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbli;->e:I
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
    iget-object v0, p1, Lbms;->b:Lbmc;

    if-eqz v0, :cond_0

    .line 382
    iget v0, p0, Lbli;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbli;->f:I
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
    iget v0, p0, Lbli;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbli;->f:I
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

.method final b(Lbma;)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lbli;->d:Lbmg;

    iget-object v1, p1, Lbma;->a:Ljava/lang/String;

    invoke-static {v1}, Lbmp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbmg;->b(Ljava/lang/String;)Z

    .line 245
    return-void
.end method
