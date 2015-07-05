.class public final Labk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labk$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static a:Labk;


# instance fields
.field public final b:Laev;

.field protected c:Lato;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Laev;

    invoke-direct {v0}, Laev;-><init>()V

    invoke-direct {p0, v0}, Labk;-><init>(Laev;)V

    .line 58
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Labk;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Laev;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Labk;->b:Laev;

    .line 64
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~zip-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    .line 209
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Labo;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B
    .locals 4
    .param p1    # Labo;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 229
    :try_start_0
    new-instance v1, Lavi;

    invoke-direct {v1}, Lavi;-><init>()V

    .line 230
    const-string v2, "video"

    iput-object v2, p1, Labo;->h:Ljava/lang/String;

    .line 232
    iget-object v2, p1, Labo;->h:Ljava/lang/String;

    invoke-static {v2}, Labk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lavi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    if-eqz p3, :cond_0

    .line 236
    const-string v2, "thumbnail"

    iput-object v2, p1, Labo;->j:Ljava/lang/String;

    .line 237
    iget-object v2, p1, Labo;->j:Ljava/lang/String;

    invoke-static {v2}, Labk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Laur;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lavi;->a(Ljava/lang/String;[B)V

    .line 241
    :cond_0
    if-eqz p4, :cond_1

    .line 243
    const-string v2, "overlay"

    iput-object v2, p1, Labo;->i:Ljava/lang/String;

    .line 244
    iget-object v2, p1, Labo;->i:Ljava/lang/String;

    invoke-static {v2}, Labk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4}, Laur;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lavi;->a(Ljava/lang/String;[B)V

    .line 247
    :cond_1
    const-string v2, "metadata"

    invoke-static {v2}, Labk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Labk;->c:Lato;

    invoke-virtual {v3, p1}, Lato;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lavi;->a(Ljava/lang/String;[B)V

    .line 248
    iget-object v2, v1, Lavi;->out:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 249
    iget-object v1, v1, Lavi;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    .line 250
    :catch_0
    move-exception v1

    .line 252
    const-string v2, "DSnapMediaExtractor"

    invoke-static {v2, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Labo;Landroid/graphics/Bitmap;)[B
    .locals 4
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 139
    :try_start_0
    new-instance v1, Lavi;

    invoke-direct {v1}, Lavi;-><init>()V

    .line 140
    const-string v2, "image"

    iput-object v2, p1, Labo;->h:Ljava/lang/String;

    .line 141
    iget-object v2, p1, Labo;->h:Ljava/lang/String;

    invoke-static {v2}, Labk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Laur;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lavi;->a(Ljava/lang/String;[B)V

    .line 143
    const-string v2, "metadata"

    invoke-static {v2}, Labk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Labk;->c:Lato;

    invoke-virtual {v3, p1}, Lato;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lavi;->a(Ljava/lang/String;[B)V

    .line 144
    iget-object v2, v1, Lavi;->out:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 145
    iget-object v1, v1, Lavi;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 146
    :catch_0
    move-exception v1

    .line 148
    const-string v2, "DSnapMediaExtractor"

    invoke-static {v2, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Labo;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B
    .locals 6
    .param p1    # Labo;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const v3, 0x426667

    const/4 v2, 0x1

    const v4, 0x3f4ccccd    # 0.8f

    .line 164
    invoke-direct {p0, p1, p2, p3, p4}, Labk;->b(Labo;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 167
    if-nez v0, :cond_0

    .line 168
    new-instance v0, Labk$a;

    const-string v1, "Zipped video data is null."

    invoke-direct {v0, v1}, Labk$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    array-length v1, v0

    if-lt v1, v3, :cond_2

    invoke-direct {p0, p1, p2, v5, v5}, Labk;->b(Labo;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B

    move-result-object v1

    array-length v1, v1

    if-lt v1, v3, :cond_1

    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 176
    new-instance v0, Labk$a;

    const-string v1, "Discover media size is larger than maximum size allowed to be shared."

    invoke-direct {v0, v1}, Labk$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 181
    :cond_2
    :goto_1
    if-eqz p3, :cond_5

    if-eqz v0, :cond_5

    array-length v1, v0

    const/high16 v3, 0x280000

    if-lt v1, v3, :cond_5

    .line 182
    if-eqz p4, :cond_3

    invoke-static {p4}, Labk;->a(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {p4, v1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 191
    if-eqz p4, :cond_4

    invoke-static {p4}, Labk;->a(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {p4, v1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 200
    if-eqz p3, :cond_2

    .line 201
    invoke-direct {p0, p1, p2, p3, p4}, Labk;->b(Labo;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    goto :goto_1

    .line 188
    :cond_3
    new-instance v0, Labk$a;

    const-string v1, "Overlay is too large to be compressed."

    invoke-direct {v0, v1}, Labk$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_4
    new-instance v0, Labk$a;

    const-string v1, "Overlay is too large to be compressed."

    invoke-direct {v0, v1}, Labk$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_5
    return-object v0
.end method
