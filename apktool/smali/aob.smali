.class public final Laob;
.super Lana;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laob$a;
    }
.end annotation


# instance fields
.field private final a:Lakr;

.field private final b:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

.field private final c:Laxn;

.field private d:[B


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    sget-object v1, Laxo;->PROFILE_IMAGE_CACHE:Laxn;

    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a()Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Laob;-><init>(Landroid/content/Intent;Lakr;Laxn;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;)V

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Lakr;Laxn;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    .line 41
    iput-object p2, p0, Laob;->a:Lakr;

    .line 42
    iput-object p4, p0, Laob;->b:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    .line 43
    iput-object p3, p0, Laob;->c:Laxn;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Laob;->c:Laxn;

    invoke-static {v0}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->c(Laxn;)Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-static {}, Lakr;->z()J

    move-result-wide v2

    .line 87
    invoke-static {v0, v2, v3}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a(Ljava/util/List;J)[B

    move-result-object v0

    iput-object v0, p0, Laob;->d:[B

    .line 88
    iget-object v0, p0, Laob;->d:[B

    if-eqz v0, :cond_0

    .line 89
    invoke-super {p0, p1}, Lana;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method public final getMethod()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->POST:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Laob$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laob;->d:[B

    invoke-direct {v0, p0, v1, v2}, Laob$a;-><init>(Laob;Ljava/lang/String;[B)V

    return-object v0
.end method

.method protected final l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "/bq/upload_profile_data"

    return-object v0
.end method

.method public final onResult(Lus;)V
    .locals 4
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 104
    invoke-super {p0, p1}, Lana;->onResult(Lus;)V

    .line 106
    invoke-virtual {p1}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {v1}, Lakr;->d(Z)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lus;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lus;->mResponseCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method
