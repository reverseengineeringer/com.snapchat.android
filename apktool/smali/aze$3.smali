.class final Laze$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laze;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laze;


# direct methods
.method constructor <init>(Laze;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Laze$3;->this$0:Laze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Laze$3;->this$0:Laze;

    iget-object v1, v0, Laze;->mMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 448
    :try_start_0
    iget-object v0, p0, Laze$3;->this$0:Laze;

    iget-object v0, v0, Laze;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 449
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    if-lez v0, :cond_1

    .line 453
    iget-object v0, p0, Laze$3;->this$0:Laze;

    invoke-virtual {v0}, Laze;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Laze$3;->this$0:Laze;

    iget-object v1, v0, Laze;->mMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 455
    :try_start_1
    iget-object v0, p0, Laze$3;->this$0:Laze;

    iget-object v0, v0, Laze;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 456
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 457
    iget-object v0, p0, Laze$3;->this$0:Laze;

    invoke-virtual {v0}, Laze;->e()V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 449
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 456
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 460
    :cond_1
    iget-object v0, p0, Laze$3;->this$0:Laze;

    invoke-virtual {v0}, Laze;->e()V

    goto :goto_0
.end method
