.class final Lbqy$2;
.super Lbss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:J

.field final synthetic c:Lbqy;


# direct methods
.method constructor <init>(Lbqy;Ljava/lang/Throwable;J)V
    .locals 1

    .prologue
    .line 402
    iput-object p1, p0, Lbqy$2;->c:Lbqy;

    iput-object p2, p0, Lbqy$2;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lbqy$2;->b:J

    invoke-direct {p0}, Lbss;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 405
    iget-object v0, p0, Lbqy$2;->c:Lbqy;

    iget-object v0, v0, Lbqy;->g:Lbtc;

    invoke-virtual {v0}, Lbtc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lbqy$2;->c:Lbqy;

    iget-object v1, v0, Lbqy;->n:Lbsh;

    monitor-enter v1

    .line 410
    :try_start_0
    iget-object v0, p0, Lbqy$2;->c:Lbqy;

    iget v0, v0, Lbqy;->A:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 411
    new-instance v0, Lbre;

    iget-object v2, p0, Lbqy$2;->a:Ljava/lang/Throwable;

    iget-wide v4, p0, Lbqy$2;->b:J

    invoke-direct {v0, v2, v4, v5}, Lbre;-><init>(Ljava/lang/Throwable;J)V

    .line 412
    const-string v2, "current_session"

    iget-object v3, p0, Lbqy$2;->c:Lbqy;

    iget-object v3, v3, Lbqy;->l:Lbrk;

    invoke-virtual {v0, v2, v3}, Lbre;->a(Ljava/lang/String;Lbrk;)V

    .line 418
    iget-object v2, p0, Lbqy$2;->c:Lbqy;

    iget-object v2, v2, Lbqy;->m:Lbrk;

    invoke-virtual {v0, v2}, Lbre;->a(Lbrk;)V

    .line 419
    const-string v2, "he"

    iput-object v2, v0, Lbre;->c:Ljava/lang/String;

    .line 421
    iget-object v2, p0, Lbqy$2;->c:Lbqy;

    iget-object v2, v2, Lbqy;->n:Lbsh;

    invoke-virtual {v2}, Lbsh;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lbre;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 424
    new-instance v2, Lbsg;

    sget-object v3, Lbqy;->a:Lbqy;

    invoke-direct {v2, v3}, Lbsg;-><init>(Lbqu;)V

    sget-object v3, Lbrj;->b:Lbrj;

    iget-object v3, v3, Lbrj;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lbsg;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lbsg;

    move-result-object v0

    .line 428
    new-instance v2, Lbsu;

    new-instance v3, Lbsm;

    new-instance v4, Lbsl;

    iget-object v5, p0, Lbqy$2;->c:Lbqy;

    iget-object v5, v5, Lbqy;->w:Lbrb;

    iget-object v5, v5, Lbrb;->i:Ljava/lang/String;

    const-string v6, "/android_v2/handle_exceptions"

    invoke-direct {v4, v5, v6}, Lbsl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lbsl;->a()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v3, v4}, Lbsm;-><init>(Ljava/net/URL;)V

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lbsu;-><init>(Lbsg;Lbsm;Lbsi;)V

    invoke-virtual {v2}, Lbsu;->run()V

    .line 432
    iget-object v0, p0, Lbqy$2;->c:Lbqy;

    iget v2, v0, Lbqy;->A:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lbqy;->A:I

    .line 433
    iget-object v0, p0, Lbqy$2;->c:Lbqy;

    iget-object v0, v0, Lbqy;->n:Lbsh;

    invoke-virtual {v0}, Lbsh;->b()V

    .line 436
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
