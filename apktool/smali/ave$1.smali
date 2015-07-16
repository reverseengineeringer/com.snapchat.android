.class final Lave$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lave;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$initMills:J

.field final synthetic val$maxMills:J


# direct methods
.method constructor <init>(Lave;Ljava/util/concurrent/Callable;)V
    .locals 2

    .prologue
    .line 25
    iput-object p1, p0, Lave$1;->this$0:Lave;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lave$1;->val$initMills:J

    iput-object p2, p0, Lave$1;->val$callable:Ljava/util/concurrent/Callable;

    const-wide/16 v0, 0x7d00

    iput-wide v0, p0, Lave$1;->val$maxMills:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 28
    iget-wide v0, p0, Lave$1;->val$initMills:J

    move-wide v2, v0

    .line 31
    :goto_0
    :try_start_0
    iget-object v0, p0, Lave$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 36
    :try_start_1
    invoke-static {}, Lbgp;->a()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    iget-wide v4, p0, Lave$1;->val$maxMills:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    :cond_0
    throw v0

    .line 42
    :catch_1
    move-exception v0

    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 37
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    const-wide/16 v0, 0x2

    mul-long/2addr v0, v2

    move-wide v2, v0

    .line 41
    goto :goto_0
.end method
