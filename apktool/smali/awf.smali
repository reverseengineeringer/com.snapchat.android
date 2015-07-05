.class public final Lawf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapDecoder"


# instance fields
.field private mBitmapOptionsProvider:Lawn;
    .annotation build Lcgb;
    .end annotation
.end field

.field private final mBitmapPool:Lavq;
    .annotation build Lcgb;
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;
    .annotation build Lcgb;
    .end annotation
.end field

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;
    .annotation build Lcgb;
    .end annotation
.end field

.field private mMemoryAnalytics:Lnh;
    .annotation build Lcgb;
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;
    .annotation build Lcgb;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lavq;)V
    .locals 7
    .param p1    # Landroid/util/DisplayMetrics;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentResolver;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lavq;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 48
    new-instance v5, Lawn;

    invoke-direct {v5}, Lawn;-><init>()V

    new-instance v6, Lnh;

    invoke-direct {v6}, Lnh;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lawf;-><init>(Landroid/util/DisplayMetrics;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lavq;Lawn;Lnh;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/util/DisplayMetrics;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lavq;Lawn;Lnh;)V
    .locals 0
    .param p1    # Landroid/util/DisplayMetrics;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentResolver;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lavq;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lawn;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Lnh;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lawf;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 60
    iput-object p2, p0, Lawf;->mContentResolver:Landroid/content/ContentResolver;

    .line 61
    iput-object p3, p0, Lawf;->mResources:Landroid/content/res/Resources;

    .line 62
    iput-object p4, p0, Lawf;->mBitmapPool:Lavq;

    .line 63
    iput-object p5, p0, Lawf;->mBitmapOptionsProvider:Lawn;

    .line 64
    iput-object p6, p0, Lawf;->mMemoryAnalytics:Lnh;

    .line 65
    return-void
.end method


# virtual methods
.method public final a(Lawh;IIZ)Lavo;
    .locals 10
    .param p1    # Lawh;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .annotation build Lcgb;
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    iget-object v0, p0, Lawf;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lawf;->mResources:Landroid/content/res/Resources;

    invoke-interface {p1, v0, v1}, Lawh;->a(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V

    .line 85
    if-lez p2, :cond_0

    if-gtz p3, :cond_3

    .line 87
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 88
    invoke-interface {p1, v0}, Lawh;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 89
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v1, :cond_1

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gtz v1, :cond_2

    .line 90
    :cond_1
    const-string v1, "BitmapDecoder"

    const-string v4, "Measured invalid Bitmap size %d x %d"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v1, v4, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-instance v0, Lavo;

    invoke-direct {v0}, Lavo;-><init>()V

    .line 116
    :goto_0
    return-object v0

    .line 93
    :cond_2
    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 94
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 97
    :cond_3
    if-lez p2, :cond_4

    if-gtz p3, :cond_6

    :cond_4
    const-string v0, "BitmapDecoder"

    const-string v1, "Invalid measurements! Can\'t use a Bitmap from the pool. :("

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 98
    :cond_5
    :goto_1
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    move v1, v2

    .line 101
    :goto_2
    :try_start_0
    invoke-interface {p1, v0}, Lawh;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 102
    if-eqz v5, :cond_8

    .line 103
    new-instance v4, Lavo;

    invoke-direct {v4, v5, v1}, Lavo;-><init>(Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v4

    goto :goto_0

    .line 97
    :cond_6
    iget-object v0, p0, Lawf;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, p2, p3}, Lawn;->a(Landroid/util/DisplayMetrics;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget-object v1, p0, Lawf;->mBitmapPool:Lavq;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lawf;->mBitmapPool:Lavq;

    invoke-virtual {v1, v0, p4}, Lavq;->a(Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_7
    move v1, v3

    .line 98
    goto :goto_2

    .line 105
    :catch_0
    move-exception v0

    invoke-static {v0}, Lnh;->a(Ljava/lang/Throwable;)V

    .line 116
    :cond_8
    new-instance v0, Lavo;

    invoke-direct {v0}, Lavo;-><init>()V

    goto :goto_0

    .line 107
    :catch_1
    move-exception v1

    iget-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const-string v5, "BitmapDecoder"

    invoke-static {v5, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "BitmapDecoder"

    const-string v5, "input width: %d height: %d exactDimensions: %b"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1, v5, v6}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "BitmapDecoder"

    const-string v5, "options width: %d height: %d config: %s"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-nez v7, :cond_a

    const-string v0, "null"

    :goto_3
    aput-object v0, v6, v8

    invoke-static {v1, v5, v6}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_9

    const-string v1, "BitmapDecoder"

    const-string v5, "reused bitmap width: %d height: %d mutable: %b, recycled: %b config: %s"

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v9

    const/4 v2, 0x4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "null"

    :goto_4
    aput-object v0, v6, v2

    invoke-static {v1, v5, v6}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_9
    iget-object v0, p0, Lawf;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, p2, p3}, Lawn;->a(Landroid/util/DisplayMetrics;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 110
    invoke-interface {p1, v0}, Lawh;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_8

    .line 112
    new-instance v0, Lavo;

    invoke-direct {v0, v1, v3}, Lavo;-><init>(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_0

    .line 107
    :cond_a
    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_b
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
