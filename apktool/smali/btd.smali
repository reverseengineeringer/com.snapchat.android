.class public final Lbtd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtd$a;
    }
.end annotation


# static fields
.field public static a:I

.field private static b:Lbti;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget v0, Lbtd$a;->a:I

    sput v0, Lbtd;->a:I

    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public static a(Lbti;)V
    .locals 0

    .prologue
    .line 18
    sput-object p0, Lbtd;->b:Lbti;

    .line 19
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 72
    instance-of v0, p0, Lbsc;

    if-nez v0, :cond_0

    .line 74
    :try_start_0
    sget-object v0, Lbtd;->b:Lbti;

    if-eqz v0, :cond_0

    sget v0, Lbtd;->a:I

    sget v1, Lbtd$a;->b:I

    if-ne v0, v1, :cond_0

    sget-object v0, Lbtd;->b:Lbti;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    new-instance v1, Lbti$1;

    invoke-direct {v1, v0, p0, v2, v3}, Lbti$1;-><init>(Lbti;Ljava/lang/Throwable;J)V

    iget-object v2, v0, Lbti;->c:Lbsq;

    invoke-virtual {v2, v1}, Lbsq;->a(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lbti;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public static c()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public static d()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public static e()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public static f()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public static g()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public static h()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
