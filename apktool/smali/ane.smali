.class public final Lane;
.super Lamd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lane$a;
    }
.end annotation


# instance fields
.field private final a:Lajx;

.field private final b:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

.field private final c:Lawp;

.field private d:[B


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v0

    sget-object v1, Lawq;->PROFILE_IMAGE_CACHE:Lawp;

    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a()Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lane;-><init>(Landroid/content/Intent;Lajx;Lawp;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;)V

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Lajx;Lawp;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lamd;-><init>(Landroid/content/Intent;)V

    .line 41
    iput-object p2, p0, Lane;->a:Lajx;

    .line 42
    iput-object p4, p0, Lane;->b:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    .line 43
    iput-object p3, p0, Lane;->c:Lawp;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 84
    :try_start_0
    iget-object v0, p0, Lane;->c:Lawp;

    invoke-static {v0}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->c(Lawp;)Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-static {}, Lajx;->z()J

    move-result-wide v2

    .line 87
    invoke-static {v0, v2, v3}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a(Ljava/util/List;J)[B

    move-result-object v0

    iput-object v0, p0, Lane;->d:[B

    .line 88
    iget-object v0, p0, Lane;->d:[B

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "UploadProfileImagesOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "profile images - attempting uploading with images timestamp: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-super {p0, p1}, Lamd;->a(Landroid/content/Context;)V
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
    const-string v1, "UploadProfileImagesOperation"

    const-string v2, "profile images - exception on serializing profile images into byte array : %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Luc;)V
    .locals 6
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 104
    invoke-super {p0, p1}, Lamd;->a(Luc;)V

    .line 106
    invoke-virtual {p1}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "UploadProfileImagesOperation"

    const-string v1, "profile images - upload succeed"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-static {v3}, Lajx;->d(Z)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    const-string v0, "UploadProfileImagesOperation"

    const-string v1, "profile images - upload failed : %s"

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Luc;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " + code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Luc;->mResponseCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lane$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lane;->d:[B

    invoke-direct {v0, p0, v1, v2}, Lane$a;-><init>(Lane;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public final c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->POST:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "/bq/upload_profile_data"

    return-object v0
.end method
