.class final Lbmj$a$1;
.super Lcba;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmj$a;-><init>(Lbmj;Lbnh$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmj;

.field final synthetic b:Lbnh$a;

.field final synthetic c:Lbmj$a;


# direct methods
.method constructor <init>(Lbmj$a;Lcbj;Lbmj;Lbnh$a;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lbmj$a$1;->c:Lbmj$a;

    iput-object p3, p0, Lbmj$a$1;->a:Lbmj;

    iput-object p4, p0, Lbmj$a$1;->b:Lbnh$a;

    invoke-direct {p0, p2}, Lcba;-><init>(Lcbj;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lbmj$a$1;->c:Lbmj$a;

    iget-object v1, v0, Lbmj$a;->b:Lbmj;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lbmj$a$1;->c:Lbmj$a;

    iget-boolean v0, v0, Lbmj$a;->a:Z

    if-eqz v0, :cond_0

    .line 415
    monitor-exit v1

    .line 422
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lbmj$a$1;->c:Lbmj$a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lbmj$a;->a:Z

    .line 418
    iget-object v0, p0, Lbmj$a$1;->c:Lbmj$a;

    iget-object v0, v0, Lbmj$a;->b:Lbmj;

    iget v2, v0, Lbmj;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lbmj;->b:I

    .line 419
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-super {p0}, Lcba;->close()V

    .line 421
    iget-object v0, p0, Lbmj$a$1;->b:Lbnh$a;

    invoke-virtual {v0}, Lbnh$a;->a()V

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
