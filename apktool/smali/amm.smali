.class public final Lamm;
.super Lamd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamm$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lamd;-><init>(Landroid/content/Intent;)V

    .line 39
    const-string v0, "ImageId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamm;->a:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lamm;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-super {p0, p1}, Lamd;->a(Landroid/content/Context;)V

    .line 72
    :cond_0
    return-void
.end method

.method public final a(Luc;)V
    .locals 5
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-super {p0, p1}, Lamd;->a(Luc;)V

    .line 83
    invoke-virtual {p1}, Luc;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const-string v0, "SnapTagDownloadOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "profile images - failed to download snaptag. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Luc;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :cond_0
    iget-object v0, p1, Luc;->mBuffer:Lbfk;

    .line 87
    if-eqz v0, :cond_1

    .line 89
    :try_start_0
    invoke-interface {v0}, Lbfk;->b()[B

    move-result-object v1

    invoke-interface {v0}, Lbfk;->a()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 91
    sget-object v1, Lawq;->PROFILE_IMAGE_CACHE:Lawp;

    const-string v2, "snaptag"

    array-length v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lawp;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 92
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbds;

    const-string v2, "snaptag"

    invoke-direct {v1, v2}, Lbds;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Laws; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "SnapTagDownloadOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to store the downloaded snaptag "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lamm$a;

    invoke-direct {v0}, Lamm$a;-><init>()V

    iget-object v1, p0, Lamm;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lamm$a;->a(Ljava/lang/String;)Lbjc;

    move-result-object v0

    const-string v1, "SVG"

    invoke-virtual {v0, v1}, Lbjc;->b(Ljava/lang/String;)Lbjc;

    move-result-object v0

    invoke-static {v0}, Lamm;->a(Lbgy;)Lbgy;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->POST:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "/bq/snaptag_download"

    return-object v0
.end method
