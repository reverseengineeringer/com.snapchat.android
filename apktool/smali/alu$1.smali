.class final Lalu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lalu;


# direct methods
.method constructor <init>(Lalu;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lalu$1;->a:Lalu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lalc;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lalu$1;->a:Lalu;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lalu;->c:Z

    .line 100
    iget-object v0, p0, Lalu$1;->a:Lalu;

    iget-object v0, v0, Lalu;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 101
    return-void
.end method

.method public final a(Lalc;Lbfl;Luc;)V
    .locals 2

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lalu$1;->a:Lalu;

    iget-object v1, p0, Lalu$1;->a:Lalu;

    invoke-virtual {v1, p2}, Lalu;->a(Lbfl;)Z

    move-result v1

    iput-boolean v1, v0, Lalu;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object v0, p0, Lalu$1;->a:Lalu;

    iget-object v0, v0, Lalu;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lalu$1;->a:Lalu;

    iget-object v1, v1, Lalu;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
