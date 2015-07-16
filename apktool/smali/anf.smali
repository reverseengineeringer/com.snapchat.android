.class public final Lanf;
.super Lamz;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 28
    sget-object v2, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lpm;->a()Lpm;

    move-result-object v3

    sget-object v4, Laxo;->PROFILE_IMAGE_CACHE:Laxn;

    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a()Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    move-result-object v5

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v6

    invoke-static {}, Laph;->a()Laph;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lanf;-><init>(Landroid/content/Intent;Ljavax/inject/Provider;Lpm;Laxn;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;Lakr;Laph;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Ljavax/inject/Provider;Lpm;Laxn;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;Lakr;Laph;)V
    .locals 0
    .param p2    # Ljavax/inject/Provider;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lpm;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Laxn;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lcom/snapchat/android/util/profileimages/ProfileImageUtils;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Lakr;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p7    # Laph;
        .annotation build Lchc;
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
            "Lakp;",
            ">;",
            "Lpm;",
            "Laxn;",
            "Lcom/snapchat/android/util/profileimages/ProfileImageUtils;",
            "Lakr;",
            "Laph;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct/range {p0 .. p7}, Lamz;-><init>(Landroid/content/Intent;Ljavax/inject/Provider;Lpm;Laxn;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;Lakr;Laph;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final D_()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lanf;->a:Lbjx;

    if-eqz v0, :cond_0

    sget-object v0, Lbjx$a;->NOT_EQUAL:Lbjx$a;

    iget-object v1, p0, Lanf;->a:Lbjx;

    invoke-virtual {v1}, Lbjx;->e()Lbjx$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lanf;->c:Ljava/lang/String;

    invoke-static {}, Lakr;->aC()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lanf;->a:Lbjx;

    invoke-virtual {v0}, Lbjx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lakr;->m(Ljava/lang/String;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lanf;->d:Laph;

    invoke-virtual {v0}, Laph;->f()I

    goto :goto_0
.end method

.method protected final b(Lbhx;)Lakp$a;
    .locals 6

    .prologue
    .line 61
    iget-object v0, p0, Lanf;->h:Lakp;

    invoke-virtual {p1}, Lbhx;->d()Lbkq;

    move-result-object v1

    iget-boolean v2, p0, Lanf;->f:Z

    invoke-virtual {v0, v1, v2}, Lakp;->a(Lbkq;Z)Z

    move-result v0

    .line 63
    iget-object v1, p0, Lanf;->h:Lakp;

    invoke-virtual {p1}, Lbhx;->f()Lbix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lakp;->a(Lbix;)Z

    move-result v1

    .line 64
    iget-object v2, p0, Lanf;->h:Lakp;

    invoke-virtual {p1}, Lbhx;->h()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lbhx;->i()Lbio;

    move-result-object v4

    iget-boolean v5, p0, Lanf;->f:Z

    invoke-virtual {v2, v3, v4, v5}, Lakp;->a(Ljava/util/List;Lbio;Z)Z

    move-result v2

    .line 67
    new-instance v3, Lakp$a;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4, v2}, Lakp$a;-><init>(ZZZZ)V

    return-object v3
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lakr;->aC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lamz$a;

    invoke-direct {v0, p0}, Lamz$a;-><init>(Lamz;)V

    iget-object v1, p0, Lanf;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lamz$a;->a(Ljava/lang/String;)Lbhw;

    move-result-object v0

    invoke-static {}, Lpq;->a()Lpq;

    move-result-object v1

    const-string v2, "/loq/conversations"

    invoke-virtual {v1, v2}, Lpq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhw;->b(Ljava/lang/String;)Lbhw;

    move-result-object v0

    invoke-static {v0}, Lanf;->buildAuthPayload(Lbhy;)Lbhy;

    move-result-object v0

    return-object v0
.end method

.method protected final l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "/loq/conversations"

    return-object v0
.end method
