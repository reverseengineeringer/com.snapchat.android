.class final Lbli$a$1;
.super Lbzz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbli$a;-><init>(Lbli;Lbmg$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbli;

.field final synthetic b:Lbmg$a;

.field final synthetic c:Lbli$a;


# direct methods
.method constructor <init>(Lbli$a;Lcai;Lbli;Lbmg$a;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lbli$a$1;->c:Lbli$a;

    iput-object p3, p0, Lbli$a$1;->a:Lbli;

    iput-object p4, p0, Lbli$a$1;->b:Lbmg$a;

    invoke-direct {p0, p2}, Lbzz;-><init>(Lcai;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lbli$a$1;->c:Lbli$a;

    iget-object v1, v0, Lbli$a;->b:Lbli;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lbli$a$1;->c:Lbli$a;

    iget-boolean v0, v0, Lbli$a;->a:Z

    if-eqz v0, :cond_0

    .line 415
    monitor-exit v1

    .line 422
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lbli$a$1;->c:Lbli$a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lbli$a;->a:Z

    .line 418
    iget-object v0, p0, Lbli$a$1;->c:Lbli$a;

    iget-object v0, v0, Lbli$a;->b:Lbli;

    iget v2, v0, Lbli;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lbli;->b:I

    .line 419
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-super {p0}, Lbzz;->close()V

    .line 421
    iget-object v0, p0, Lbli$a$1;->b:Lbmg$a;

    invoke-virtual {v0}, Lbmg$a;->a()V

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
