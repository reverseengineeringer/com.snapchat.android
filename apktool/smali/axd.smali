.class public final Laxd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapDecoder"


# instance fields
.field private mBitmapOptionsProvider:Laxl;
    .annotation build Lchc;
    .end annotation
.end field

.field private final mBitmapPool:Lawo;
    .annotation build Lchc;
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;
    .annotation build Lchc;
    .end annotation
.end field

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;
    .annotation build Lchc;
    .end annotation
.end field

.field private mMemoryAnalytics:Lny;
    .annotation build Lchc;
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;
    .annotation build Lchc;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lawo;)V
    .locals 7
    .param p1    # Landroid/util/DisplayMetrics;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentResolver;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lawo;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 48
    new-instance v5, Laxl;

    invoke-direct {v5}, Laxl;-><init>()V

    new-instance v6, Lny;

    invoke-direct {v6}, Lny;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Laxd;-><init>(Landroid/util/DisplayMetrics;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lawo;Laxl;Lny;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/util/DisplayMetrics;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lawo;Laxl;Lny;)V
    .locals 0
    .param p1    # Landroid/util/DisplayMetrics;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentResolver;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lawo;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Laxl;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Lny;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Laxd;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 60
    iput-object p2, p0, Laxd;->mContentResolver:Landroid/content/ContentResolver;

    .line 61
    iput-object p3, p0, Laxd;->mResources:Landroid/content/res/Resources;

    .line 62
    iput-object p4, p0, Laxd;->mBitmapPool:Lawo;

    .line 63
    iput-object p5, p0, Laxd;->mBitmapOptionsProvider:Laxl;

    .line 64
    iput-object p6, p0, Laxd;->mMemoryAnalytics:Lny;

    .line 65
    return-void
.end method


# virtual methods
.method public final a(Laxf;IIZ)Lawm;
    .locals 8
    .param p1    # Laxf;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation build Lchc;
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    iget-object v0, p0, Laxd;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Laxd;->mResources:Landroid/content/res/Resources;

    invoke-interface {p1, v0, v1}, Laxf;->a(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V

    .line 85
    if-lez p2, :cond_0

    if-gtz p3, :cond_3

    .line 87
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 88
    invoke-interface {p1, v0}, Laxf;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 89
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v1, :cond_1

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gtz v1, :cond_2

    .line 90
    :cond_1
    new-array v1, v6, [Ljava/lang/Object;

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 91
    new-instance v0, Lawm;

    invoke-direct {v0}, Lawm;-><init>()V

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
    invoke-interface {p1, v0}, Laxf;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 102
    if-eqz v5, :cond_8

    .line 103
    new-instance v4, Lawm;

    invoke-direct {v4, v5, v1}, Lawm;-><init>(Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v4

    goto :goto_0

    .line 97
    :cond_6
    iget-object v0, p0, Laxd;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, p2, p3}, Laxl;->a(Landroid/util/DisplayMetrics;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget-object v1, p0, Laxd;->mBitmapPool:Lawo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Laxd;->mBitmapPool:Lawo;

    invoke-virtual {v1, v0, p4}, Lawo;->a(Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

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

    invoke-static {v0}, Lny;->a(Ljava/lang/Throwable;)V

    .line 116
    :cond_8
    new-instance v0, Lawm;

    invoke-direct {v0}, Lawm;-><init>()V

    goto :goto_0

    .line 108
    :catch_1
    move-exception v1

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-nez v5, :cond_a

    const-string v0, "null"

    :goto_3
    aput-object v0, v4, v6

    if-eqz v1, :cond_9

    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v2, 0x4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "null"

    :goto_4
    aput-object v0, v4, v2

    .line 109
    :cond_9
    iget-object v0, p0, Laxd;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, p2, p3}, Laxl;->a(Landroid/util/DisplayMetrics;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 110
    invoke-interface {p1, v0}, Laxf;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_8

    .line 112
    new-instance v0, Lawm;

    invoke-direct {v0, v1, v3}, Lawm;-><init>(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_0

    .line 108
    :cond_a
    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_b
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
