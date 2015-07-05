.class public Lcom/flurry/sdk/ex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:Lcom/flurry/sdk/ex;


# instance fields
.field private final c:Lcom/flurry/sdk/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/flurry/sdk/ex;->a:J

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/ex;->b:Lcom/flurry/sdk/ex;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/flurry/sdk/ey;

    invoke-direct {v0}, Lcom/flurry/sdk/ey;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    .line 21
    iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    sget-wide v2, Lcom/flurry/sdk/ex;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/ey;->a(J)V

    .line 22
    iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ey;->a(Z)V

    .line 23
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/ex;
    .locals 2

    .prologue
    .line 13
    const-class v1, Lcom/flurry/sdk/ex;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ex;->b:Lcom/flurry/sdk/ex;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/flurry/sdk/ex;

    invoke-direct {v0}, Lcom/flurry/sdk/ex;-><init>()V

    sput-object v0, Lcom/flurry/sdk/ex;->b:Lcom/flurry/sdk/ex;

    .line 17
    :cond_0
    sget-object v0, Lcom/flurry/sdk/ex;->b:Lcom/flurry/sdk/ex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/flurry/sdk/ey$a;)V
    .locals 1

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ey;->a(Lcom/flurry/sdk/ey$a;)V

    .line 27
    iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    invoke-virtual {v0}, Lcom/flurry/sdk/ey;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    invoke-virtual {v0}, Lcom/flurry/sdk/ey;->d()I

    move-result v0

    if-lez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    invoke-virtual {v0}, Lcom/flurry/sdk/ey;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/flurry/sdk/ey$a;)Z
    .locals 2

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ey;->b(Lcom/flurry/sdk/ey$a;)Z

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    invoke-virtual {v1}, Lcom/flurry/sdk/ey;->d()I

    move-result v1

    if-nez v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    invoke-virtual {v1}, Lcom/flurry/sdk/ey;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit p0

    return v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
