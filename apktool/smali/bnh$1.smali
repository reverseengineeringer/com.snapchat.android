.class final Lbnh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbnh;


# direct methods
.method constructor <init>(Lbnh;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lbnh$1;->a:Lbnh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lbnh$1;->a:Lbnh;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lbnh$1;->a:Lbnh;

    invoke-static {v0}, Lbnh;->a(Lbnh;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lbnh$1;->a:Lbnh;

    invoke-static {v2}, Lbnh;->b(Lbnh;)Z

    move-result v2

    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 172
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_1
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    :cond_1
    :try_start_1
    iget-object v0, p0, Lbnh$1;->a:Lbnh;

    invoke-static {v0}, Lbnh;->c(Lbnh;)V

    .line 176
    iget-object v0, p0, Lbnh$1;->a:Lbnh;

    invoke-static {v0}, Lbnh;->d(Lbnh;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lbnh$1;->a:Lbnh;

    invoke-static {v0}, Lbnh;->e(Lbnh;)V

    .line 178
    iget-object v0, p0, Lbnh$1;->a:Lbnh;

    invoke-static {v0}, Lbnh;->f(Lbnh;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_2
    :try_start_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
