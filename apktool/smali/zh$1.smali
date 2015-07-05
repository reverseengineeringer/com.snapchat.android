.class final Lzh$1;
.super Lzi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzh;


# direct methods
.method constructor <init>(Lzh;Lajr;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lzh$1;->a:Lzh;

    invoke-direct {p0, p2}, Lzi;-><init>(Lajr;)V

    return-void
.end method


# virtual methods
.method protected final a(Lajr;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    iget-object v0, p0, Lzh$1;->a:Lzh;

    invoke-static {}, Lbgp;->a()V

    iget-object v1, v0, Lzh;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lzh;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lzh;->f:J

    sub-long/2addr v2, v4

    const-string v1, "StorySnapLoadBatch"

    const-string v4, "Batch load complete for %s, took %dms"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lzh;->g:Lzh$b;

    iget v4, v0, Lzh;->h:I

    invoke-interface {v1, v0, v4, v2, v3}, Lzh$b;->a(Lzh;IJ)V

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v1, "StorySnapLoadBatch"

    const-string v2, "Batch load not complete for %s, waiting for %d more StorySnaps"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    iget-object v0, v0, Lzh;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
