.class public final Lant;
.super Lana;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lant$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lakr;

.field private final d:Laxn;

.field private final e:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 39
    sget-object v0, Laxo;->PROFILE_IMAGE_CACHE:Laxn;

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a()Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lant;-><init>(Landroid/content/Intent;Laxn;Lakr;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Laxn;Lakr;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    .line 46
    const-string v0, "size"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lant;->a:Ljava/lang/String;

    .line 47
    const-string v0, "username_image"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lant;->b:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lant;->c:Lakr;

    .line 49
    iput-object p2, p0, Lant;->d:Laxn;

    .line 50
    iput-object p4, p0, Lant;->e:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lant;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lant;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-super {p0, p1}, Lana;->a(Landroid/content/Context;)V

    .line 77
    :cond_0
    return-void
.end method

.method public final getMethod()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->POST:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lant$a;

    invoke-direct {v0}, Lant$a;-><init>()V

    iget-object v1, p0, Lant;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lant$a;->a(Ljava/lang/String;)Lbld;

    move-result-object v0

    iget-object v1, p0, Lant;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbld;->b(Ljava/lang/String;)Lbld;

    move-result-object v0

    invoke-static {v0}, Lant;->buildAuthPayload(Lbhy;)Lbhy;

    move-result-object v0

    return-object v0
.end method

.method protected final l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "/bq/download_profile_data"

    return-object v0
.end method

.method public final onResult(Lus;)V
    .locals 4
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-super {p0, p1}, Lana;->onResult(Lus;)V

    .line 88
    iget v0, p1, Lus;->mResponseCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    .line 89
    invoke-static {v2}, Lakr;->e(Z)V

    .line 123
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {v3}, Lakr;->e(Z)V

    .line 100
    invoke-virtual {p1}, Lus;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p1, Lus;->mBuffer:Lbgk;

    .line 106
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lbgk;->a()I

    move-result v1

    if-nez v1, :cond_3

    .line 107
    :cond_2
    invoke-static {v2}, Lakr;->e(Z)V

    goto :goto_0

    .line 114
    :cond_3
    :try_start_0
    invoke-interface {v0}, Lbgk;->b()[B

    move-result-object v1

    invoke-interface {v0}, Lbgk;->a()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 117
    iget-object v1, p0, Lant;->d:Laxn;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->b([BLaxn;)V

    .line 118
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdq;

    invoke-direct {v1}, Lbdq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "profile images - deserializing data failed with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
