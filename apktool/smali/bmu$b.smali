.class final Lbmu$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcai;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lbmu;

.field private b:Z


# direct methods
.method private constructor <init>(Lbmu;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lbmu$b;->a:Lbmu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbmu;B)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lbmu$b;-><init>(Lbmu;)V

    return-void
.end method


# virtual methods
.method public final E_()Lcak;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lbmu$b;->a:Lbmu;

    iget-object v0, v0, Lbmu;->d:Lbzv;

    invoke-interface {v0}, Lbzv;->E_()Lcak;

    move-result-object v0

    return-object v0
.end method

.method public final a_(Lbzu;J)V
    .locals 2

    .prologue
    .line 310
    iget-boolean v0, p0, Lbmu$b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 317
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lbmu$b;->a:Lbmu;

    iget-object v0, v0, Lbmu;->d:Lbzv;

    invoke-interface {v0, p2, p3}, Lbzv;->i(J)Lbzv;

    .line 314
    iget-object v0, p0, Lbmu$b;->a:Lbmu;

    iget-object v0, v0, Lbmu;->d:Lbzv;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lbzv;->b(Ljava/lang/String;)Lbzv;

    .line 315
    iget-object v0, p0, Lbmu$b;->a:Lbmu;

    iget-object v0, v0, Lbmu;->d:Lbzv;

    invoke-interface {v0, p1, p2, p3}, Lbzv;->a_(Lbzu;J)V

    .line 316
    iget-object v0, p0, Lbmu$b;->a:Lbmu;

    iget-object v0, v0, Lbmu;->d:Lbzv;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lbzv;->b(Ljava/lang/String;)Lbzv;

    goto :goto_0
.end method

.method public final declared-synchronized close()V
    .locals 2

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbmu$b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 329
    :goto_0
    monitor-exit p0

    return-void

    .line 326
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lbmu$b;->b:Z

    .line 327
    iget-object v0, p0, Lbmu$b;->a:Lbmu;

    iget-object v0, v0, Lbmu;->d:Lbzv;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lbzv;->b(Ljava/lang/String;)Lbzv;

    .line 328
    iget-object v0, p0, Lbmu$b;->a:Lbmu;

    const/4 v1, 0x3

    iput v1, v0, Lbmu;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbmu$b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 322
    :goto_0
    monitor-exit p0

    return-void

    .line 321
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbmu$b;->a:Lbmu;

    iget-object v0, v0, Lbmu;->d:Lbzv;

    invoke-interface {v0}, Lbzv;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
