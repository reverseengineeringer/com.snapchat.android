.class final Lbmj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lbmj;

.field private final c:Lbnh$a;

.field private d:Lcbj;

.field private e:Lcbj;


# direct methods
.method public constructor <init>(Lbmj;Lbnh$a;)V
    .locals 2

    .prologue
    .line 408
    iput-object p1, p0, Lbmj$a;->b:Lbmj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p2, p0, Lbmj$a;->c:Lbnh$a;

    .line 410
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lbnh$a;->a(I)Lcbj;

    move-result-object v0

    iput-object v0, p0, Lbmj$a;->d:Lcbj;

    .line 411
    new-instance v0, Lbmj$a$1;

    iget-object v1, p0, Lbmj$a;->d:Lcbj;

    invoke-direct {v0, p0, v1, p1, p2}, Lbmj$a$1;-><init>(Lbmj$a;Lcbj;Lbmj;Lbnh$a;)V

    iput-object v0, p0, Lbmj$a;->e:Lcbj;

    .line 424
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 427
    iget-object v1, p0, Lbmj$a;->b:Lbmj;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-boolean v0, p0, Lbmj$a;->a:Z

    if-eqz v0, :cond_0

    .line 429
    monitor-exit v1

    .line 439
    :goto_0
    return-void

    .line 431
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbmj$a;->a:Z

    .line 432
    iget-object v0, p0, Lbmj$a;->b:Lbmj;

    iget v2, v0, Lbmj;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lbmj;->c:I

    .line 433
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    iget-object v0, p0, Lbmj$a;->d:Lcbj;

    invoke-static {v0}, Lbnq;->a(Ljava/io/Closeable;)V

    .line 436
    :try_start_1
    iget-object v0, p0, Lbmj$a;->c:Lbnh$a;

    invoke-virtual {v0}, Lbnh$a;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final b()Lcbj;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lbmj$a;->e:Lcbj;

    return-object v0
.end method
