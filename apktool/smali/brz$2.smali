.class final Lbrz$2;
.super Lbtt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:J

.field final synthetic c:Lbrz;


# direct methods
.method constructor <init>(Lbrz;Ljava/lang/Throwable;J)V
    .locals 1

    .prologue
    .line 402
    iput-object p1, p0, Lbrz$2;->c:Lbrz;

    iput-object p2, p0, Lbrz$2;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lbrz$2;->b:J

    invoke-direct {p0}, Lbtt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 405
    iget-object v0, p0, Lbrz$2;->c:Lbrz;

    iget-object v0, v0, Lbrz;->g:Lbud;

    invoke-virtual {v0}, Lbud;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lbrz$2;->c:Lbrz;

    iget-object v1, v0, Lbrz;->n:Lbti;

    monitor-enter v1

    .line 410
    :try_start_0
    iget-object v0, p0, Lbrz$2;->c:Lbrz;

    iget v0, v0, Lbrz;->A:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 411
    new-instance v0, Lbsf;

    iget-object v2, p0, Lbrz$2;->a:Ljava/lang/Throwable;

    iget-wide v4, p0, Lbrz$2;->b:J

    invoke-direct {v0, v2, v4, v5}, Lbsf;-><init>(Ljava/lang/Throwable;J)V

    .line 412
    const-string v2, "current_session"

    iget-object v3, p0, Lbrz$2;->c:Lbrz;

    iget-object v3, v3, Lbrz;->l:Lbsl;

    invoke-virtual {v0, v2, v3}, Lbsf;->a(Ljava/lang/String;Lbsl;)V

    .line 418
    iget-object v2, p0, Lbrz$2;->c:Lbrz;

    iget-object v2, v2, Lbrz;->m:Lbsl;

    invoke-virtual {v0, v2}, Lbsf;->a(Lbsl;)V

    .line 419
    const-string v2, "he"

    iput-object v2, v0, Lbsf;->c:Ljava/lang/String;

    .line 421
    iget-object v2, p0, Lbrz$2;->c:Lbrz;

    iget-object v2, v2, Lbrz;->n:Lbti;

    invoke-virtual {v2}, Lbti;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lbsf;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 424
    new-instance v2, Lbth;

    sget-object v3, Lbrz;->a:Lbrz;

    invoke-direct {v2, v3}, Lbth;-><init>(Lbrv;)V

    sget-object v3, Lbsk;->b:Lbsk;

    iget-object v3, v3, Lbsk;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lbth;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lbth;

    move-result-object v0

    .line 428
    new-instance v2, Lbtv;

    new-instance v3, Lbtn;

    new-instance v4, Lbtm;

    iget-object v5, p0, Lbrz$2;->c:Lbrz;

    iget-object v5, v5, Lbrz;->w:Lbsc;

    iget-object v5, v5, Lbsc;->i:Ljava/lang/String;

    const-string v6, "/android_v2/handle_exceptions"

    invoke-direct {v4, v5, v6}, Lbtm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lbtm;->a()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v3, v4}, Lbtn;-><init>(Ljava/net/URL;)V

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lbtv;-><init>(Lbth;Lbtn;Lbtj;)V

    invoke-virtual {v2}, Lbtv;->run()V

    .line 432
    iget-object v0, p0, Lbrz$2;->c:Lbrz;

    iget v2, v0, Lbrz;->A:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lbrz;->A:I

    .line 433
    iget-object v0, p0, Lbrz$2;->c:Lbrz;

    iget-object v0, v0, Lbrz;->n:Lbti;

    invoke-virtual {v0}, Lbti;->b()V

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
