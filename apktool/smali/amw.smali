.class public final Lamw;
.super Lamd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamw$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lajx;

.field private final d:Lawp;

.field private final e:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lawq;->PROFILE_IMAGE_CACHE:Lawp;

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a()Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lamw;-><init>(Landroid/content/Intent;Lawp;Lajx;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Lawp;Lajx;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lamd;-><init>(Landroid/content/Intent;)V

    .line 46
    const-string v0, "size"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamw;->a:Ljava/lang/String;

    .line 47
    const-string v0, "username_image"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamw;->b:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lamw;->c:Lajx;

    .line 49
    iput-object p2, p0, Lamw;->d:Lawp;

    .line 50
    iput-object p4, p0, Lamw;->e:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lamw;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lamw;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-super {p0, p1}, Lamd;->a(Landroid/content/Context;)V

    .line 77
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
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-super {p0, p1}, Lamd;->a(Luc;)V

    .line 88
    iget v0, p1, Luc;->mResponseCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    .line 89
    const-string v0, "DownloadProfileImagesOperation"

    const-string v1, "profile images - download returned but user hasn\'t uplaoded pics before"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-static {v4}, Lajx;->e(Z)V

    .line 123
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {v2}, Lajx;->e(Z)V

    .line 100
    invoke-virtual {p1}, Luc;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    const-string v0, "DownloadProfileImagesOperation"

    const-string v1, "profile images - download returned but did not succeed : %s "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Luc;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p1, Luc;->mBuffer:Lbfk;

    .line 106
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lbfk;->a()I

    move-result v1

    if-nez v1, :cond_3

    .line 107
    :cond_2
    const-string v0, "DownloadProfileImagesOperation"

    const-string v1, "profile images - download returned but user hasn\'t uploaded pics before"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-static {v4}, Lajx;->e(Z)V

    goto :goto_0

    .line 114
    :cond_3
    const-string v1, "DownloadProfileImagesOperation"

    const-string v2, "profile images - download success"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :try_start_0
    invoke-interface {v0}, Lbfk;->b()[B

    move-result-object v1

    invoke-interface {v0}, Lbfk;->a()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 117
    iget-object v1, p0, Lamw;->d:Lawp;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->b([BLawp;)V

    .line 118
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcq;

    invoke-direct {v1}, Lbcq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "DownloadProfileImagesOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "profile images - deserializing data failed with error: "

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
    .line 65
    new-instance v0, Lamw$a;

    invoke-direct {v0}, Lamw$a;-><init>()V

    iget-object v1, p0, Lamw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lamw$a;->a(Ljava/lang/String;)Lbkc;

    move-result-object v0

    iget-object v1, p0, Lamw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbkc;->b(Ljava/lang/String;)Lbkc;

    move-result-object v0

    invoke-static {v0}, Lamw;->a(Lbgy;)Lbgy;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->POST:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "/bq/download_profile_data"

    return-object v0
.end method
