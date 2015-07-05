.class public final Lami;
.super Lamc;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 27
    sget-object v2, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lov;->a()Lov;

    move-result-object v3

    sget-object v4, Lawq;->PROFILE_IMAGE_CACHE:Lawp;

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v5

    invoke-static {}, Laol;->a()Laol;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lami;-><init>(Landroid/content/Intent;Ljavax/inject/Provider;Lov;Lawp;Lajx;Laol;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Ljavax/inject/Provider;Lov;Lawp;Lajx;Laol;)V
    .locals 0
    .param p2    # Ljavax/inject/Provider;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lov;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lawp;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lajx;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Laol;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Lov;",
            "Lawp;",
            "Lajx;",
            "Laol;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct/range {p0 .. p6}, Lamc;-><init>(Landroid/content/Intent;Ljavax/inject/Provider;Lov;Lawp;Lajx;Laol;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final D_()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lami;->a:Lbiw;

    if-eqz v0, :cond_0

    sget-object v0, Lbiw$a;->NOT_EQUAL:Lbiw$a;

    iget-object v1, p0, Lami;->a:Lbiw;

    invoke-virtual {v1}, Lbiw;->e()Lbiw$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lami;->c:Ljava/lang/String;

    invoke-static {}, Lajx;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lami;->a:Lbiw;

    invoke-virtual {v0}, Lbiw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lajx;->m(Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lami;->d:Laol;

    invoke-virtual {v0}, Laol;->f()I

    goto :goto_0
.end method

.method protected final b(Lbgx;)Lajv$a;
    .locals 6

    .prologue
    .line 59
    iget-object v0, p0, Lami;->h:Lajv;

    invoke-virtual {p1}, Lbgx;->d()Lbjp;

    move-result-object v1

    iget-boolean v2, p0, Lami;->f:Z

    invoke-virtual {v0, v1, v2}, Lajv;->a(Lbjp;Z)Z

    move-result v0

    .line 61
    iget-object v1, p0, Lami;->h:Lajv;

    invoke-virtual {p1}, Lbgx;->f()Lbhx;

    move-result-object v2

    invoke-virtual {v1, v2}, Lajv;->a(Lbhx;)Z

    move-result v1

    .line 62
    iget-object v2, p0, Lami;->h:Lajv;

    invoke-virtual {p1}, Lbgx;->h()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lbgx;->i()Lbho;

    move-result-object v4

    iget-boolean v5, p0, Lami;->f:Z

    invoke-virtual {v2, v3, v4, v5}, Lajv;->a(Ljava/util/List;Lbho;Z)Z

    move-result v2

    .line 65
    new-instance v3, Lajv$a;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4, v2}, Lajv$a;-><init>(ZZZZ)V

    return-object v3
.end method

.method public final b()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lamc$a;

    invoke-direct {v0, p0}, Lamc$a;-><init>(Lamc;)V

    iget-object v1, p0, Lami;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lamc$a;->a(Ljava/lang/String;)Lbgw;

    move-result-object v0

    invoke-static {}, Loz;->a()Loz;

    move-result-object v1

    const-string v2, "/loq/conversations"

    invoke-virtual {v1, v2}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbgw;->b(Ljava/lang/String;)Lbgw;

    move-result-object v0

    invoke-static {v0}, Lami;->a(Lbgy;)Lbgy;

    move-result-object v0

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "/loq/conversations"

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lajx;->aD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
