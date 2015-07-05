.class public final Lalj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lalj$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lalj$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lalj;-><init>(B)V

    .line 33
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lalj;->a:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lalj;->b:Ljava/util/Queue;

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lalj;->c:I

    .line 40
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 63
    iget-object v4, p0, Lalj;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 64
    :try_start_0
    iget-object v2, p0, Lalj;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 65
    monitor-exit v4

    .line 72
    :goto_0
    return-wide v0

    .line 69
    :cond_0
    iget-object v2, p0, Lalj;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalj$a;

    .line 70
    iget-wide v0, v0, Lalj$a;->a:J

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget-object v0, p0, Lalj;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    int-to-long v0, v0

    div-long v0, v2, v0

    monitor-exit v4

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
