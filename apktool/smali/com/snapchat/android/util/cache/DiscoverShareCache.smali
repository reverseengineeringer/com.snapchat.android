.class public final Lcom/snapchat/android/util/cache/DiscoverShareCache;
.super Laxn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/cache/DiscoverShareCache$1;,
        Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DiscoverShareCache"


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/cache/CacheType;)V
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, 0x5a0

    invoke-direct {p0, p1, v0, v1}, Laxn;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    .line 34
    return-void
.end method

.method private static c(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$1;->$SwitchMap$com$snapchat$android$util$cache$DiscoverShareCache$DiscoverShareFileType:[I

    invoke-virtual {p1}, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid DiscoverShareFileType."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, ".json"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, ".jpg.nomedia"

    goto :goto_0

    :pswitch_2
    const-string v0, ".png.nomedia"

    goto :goto_0

    :pswitch_3
    const-string v0, ".mp4.nomedia"

    goto :goto_0

    :pswitch_4
    const-string v0, ".zip.nomedia"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Laza;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Landroid/content/Context;Ljava/lang/String;Laza;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Laza;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation build Lcbr;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    sget-object v5, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->IMAGE:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Landroid/content/Context;Ljava/lang/String;Laza;Landroid/graphics/Bitmap$Config;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Laza;Landroid/graphics/Bitmap$Config;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    invoke-static {p2, p5}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p3, p4}, Laxn;->a(Landroid/content/Context;Ljava/lang/String;Laza;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;[BLcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 109
    if-nez p1, :cond_2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "put: Trying to put null key in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/util/cache/DiscoverShareCache;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v1}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 128
    :cond_1
    :goto_0
    return-object v0

    .line 115
    :cond_2
    invoke-static {}, Lbhp;->b()V

    .line 117
    if-eqz p2, :cond_3

    array-length v0, p2

    .line 119
    :goto_1
    invoke-static {p1, p3}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {p0, v2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    if-nez v1, :cond_4

    .line 122
    invoke-virtual {p0, p2, v0, v2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a([BILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_2
    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/snapchat/android/util/cache/DiscoverShareCache;->mKeyToItemMap:Ljava/util/Map;

    invoke-static {v0}, Laxn$a;->a(Ljava/lang/String;)Laxn$a;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;Laza;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 63
    const/16 v1, 0x5a

    invoke-virtual {p2, p3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 65
    if-eqz p5, :cond_0

    .line 66
    invoke-interface {p5, v0}, Laza;->a([B)[B

    move-result-object v0

    .line 68
    :cond_0
    invoke-virtual {p0, p1, v0, p4}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;[BLcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    .line 69
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)[B
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 99
    invoke-static {p1, p2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 103
    invoke-static {p1, p2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Laxn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 133
    invoke-static {}, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->values()[Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 134
    invoke-static {p1, v3}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3}, Laxn;->c(Ljava/lang/String;)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method
