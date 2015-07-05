.class public final Lavp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapLoader"


# instance fields
.field private final mAsyncDrawableFactory:Lawe$a;

.field private final mBitmapDecoder:Lawf;

.field private final mBitmapRecycling:Lavs;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mResources:Landroid/content/res/Resources;

.field private final mTaskFactory:Lawd$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lavs;

    invoke-direct {v2}, Lavs;-><init>()V

    new-instance v3, Lawd$a;

    invoke-direct {v3}, Lawd$a;-><init>()V

    new-instance v4, Lawe$a;

    invoke-direct {v4}, Lawe$a;-><init>()V

    new-instance v5, Lawf;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lavq;->a()Lavq;

    move-result-object v8

    invoke-direct {v5, v0, v6, v7, v8}, Lawf;-><init>(Landroid/util/DisplayMetrics;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lavq;)V

    sget-object v6, Lauh;->HIGH_PRIORITY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lavp;-><init>(Landroid/content/res/Resources;Lavs;Lawd$a;Lawe$a;Lawf;Ljava/util/concurrent/ExecutorService;)V

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Lavs;Lawd$a;Lawe$a;Lawf;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lavp;->mResources:Landroid/content/res/Resources;

    .line 66
    iput-object p2, p0, Lavp;->mBitmapRecycling:Lavs;

    .line 67
    iput-object p3, p0, Lavp;->mTaskFactory:Lawd$a;

    .line 68
    iput-object p4, p0, Lavp;->mAsyncDrawableFactory:Lawe$a;

    .line 69
    iput-object p5, p0, Lavp;->mBitmapDecoder:Lawf;

    .line 70
    iput-object p6, p0, Lavp;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 71
    return-void
.end method


# virtual methods
.method public final a(Lavx;)Lavo;
    .locals 5
    .param p1    # Lavx;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lbgp;->b()V

    .line 125
    iget-object v0, p0, Lavp;->mBitmapDecoder:Lawf;

    iget-object v1, p1, Lavx;->mBitmapSource:Lawh;

    iget v2, p1, Lavx;->mWidth:I

    iget v3, p1, Lavx;->mHeight:I

    iget-boolean v4, p1, Lavx;->mRequireExactDimensions:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lawf;->a(Lawh;IIZ)Lavo;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 6
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 134
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string v0, "BitmapLoader"

    const-string v1, "Recycling ImageView %d."

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lavp;->mBitmapRecycling:Lavs;

    invoke-virtual {v0, p1, v5}, Lavs;->a(Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method

.method public final varargs a(Lavx;[Lavy;)V
    .locals 8
    .param p1    # Lavx;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # [Lavy;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .annotation build Lccm;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-static {}, Lbgp;->a()V

    .line 84
    iget-object v3, p1, Lavx;->mImageView:Landroid/widget/ImageView;

    .line 85
    iget-object v4, p1, Lavx;->mRequestId:Ljava/lang/String;

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 86
    const-string v0, "BitmapLoader"

    const-string v4, "Loading bitmap %s asynchronously into ImageView %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lavx;->mRequestId:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    new-instance v0, Lawc;

    invoke-direct {v0}, Lawc;-><init>()V

    invoke-static {p2, v1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lavy;

    .line 91
    iget-object v4, p0, Lavp;->mBitmapDecoder:Lawf;

    invoke-static {p1, v4, v0}, Lawd$a;->a(Lavx;Lawf;[Lavy;)Lawd;

    move-result-object v0

    .line 92
    iget-object v4, p0, Lavp;->mResources:Landroid/content/res/Resources;

    iget-object v5, p1, Lavx;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    new-instance v6, Lawe;

    invoke-direct {v6, v4, v5, v0}, Lawe;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lawd;)V

    .line 94
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v3, p0, Lavp;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p1, Lavx;->mRequestId:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lawd;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    :cond_0
    return-void

    .line 85
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v5, v0, Lawe;

    if-eqz v5, :cond_2

    check-cast v0, Lawe;

    iget-object v0, v0, Lawe;->mLoaderTask:Lawd;

    :goto_1
    if-eqz v0, :cond_4

    iget-object v5, v0, Lawd;->mRequest:Lavx;

    iget-object v5, v5, Lavx;->mRequestId:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v4, "BitmapLoader"

    const-string v5, "Cancelling loader task for bitmap %s"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, v0, Lawd;->mRequest:Lavx;

    iget-object v7, v7, Lavx;->mRequestId:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lawd;->cancel(Z)Z

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public final varargs b(Lavx;[Lavy;)V
    .locals 5
    .param p1    # Lavx;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # [Lavy;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .annotation build Lccm;
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Lbgp;->a()V

    .line 110
    iget-object v0, p0, Lavp;->mBitmapDecoder:Lawf;

    invoke-static {p1, v0, p2}, Lawd$a;->a(Lavx;Lawf;[Lavy;)Lawd;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lavp;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lavx;->mRequestId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lawd;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    return-void
.end method
