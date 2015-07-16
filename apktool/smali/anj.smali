.class public final Lanj;
.super Lana;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanj$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    .line 39
    const-string v0, "ImageId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanj;->a:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lanj;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-super {p0, p1}, Lana;->a(Landroid/content/Context;)V

    .line 72
    :cond_0
    return-void
.end method

.method public final getMethod()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->POST:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lanj$a;

    invoke-direct {v0}, Lanj$a;-><init>()V

    iget-object v1, p0, Lanj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanj$a;->a(Ljava/lang/String;)Lbkd;

    move-result-object v0

    const-string v1, "SVG"

    invoke-virtual {v0, v1}, Lbkd;->b(Ljava/lang/String;)Lbkd;

    move-result-object v0

    invoke-static {v0}, Lanj;->buildAuthPayload(Lbhy;)Lbhy;

    move-result-object v0

    return-object v0
.end method

.method protected final l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "/bq/snaptag_download"

    return-object v0
.end method

.method public final onResult(Lus;)V
    .locals 4
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-super {p0, p1}, Lana;->onResult(Lus;)V

    .line 83
    invoke-virtual {p1}, Lus;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "profile images - failed to download snaptag. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lus;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    iget-object v0, p1, Lus;->mBuffer:Lbgk;

    .line 87
    if-eqz v0, :cond_1

    .line 89
    :try_start_0
    invoke-interface {v0}, Lbgk;->b()[B

    move-result-object v1

    invoke-interface {v0}, Lbgk;->a()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 91
    sget-object v1, Laxo;->PROFILE_IMAGE_CACHE:Laxn;

    const-string v2, "snaptag"

    array-length v3, v0

    invoke-virtual {v1, v2, v0, v3}, Laxn;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 92
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbes;

    const-string v2, "snaptag"

    invoke-direct {v1, v2}, Lbes;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Laxq; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to store the downloaded snaptag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
