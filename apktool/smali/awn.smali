.class public final Lawn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapLoader"


# instance fields
.field private final mAsyncDrawableFactory:Laxc$a;

.field private final mBitmapDecoder:Laxd;

.field private final mBitmapRecycling:Lawq;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mResources:Landroid/content/res/Resources;

.field private final mTaskFactory:Laxb$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lawq;

    invoke-direct {v2}, Lawq;-><init>()V

    new-instance v3, Laxb$a;

    invoke-direct {v3}, Laxb$a;-><init>()V

    new-instance v4, Laxc$a;

    invoke-direct {v4}, Laxc$a;-><init>()V

    new-instance v5, Laxd;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v8

    invoke-direct {v5, v0, v6, v7, v8}, Laxd;-><init>(Landroid/util/DisplayMetrics;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lawo;)V

    sget-object v6, Lavf;->HIGH_PRIORITY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lawn;-><init>(Landroid/content/res/Resources;Lawq;Laxb$a;Laxc$a;Laxd;Ljava/util/concurrent/ExecutorService;)V

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Lawq;Laxb$a;Laxc$a;Laxd;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lawn;->mResources:Landroid/content/res/Resources;

    .line 66
    iput-object p2, p0, Lawn;->mBitmapRecycling:Lawq;

    .line 67
    iput-object p3, p0, Lawn;->mTaskFactory:Laxb$a;

    .line 68
    iput-object p4, p0, Lawn;->mAsyncDrawableFactory:Laxc$a;

    .line 69
    iput-object p5, p0, Lawn;->mBitmapDecoder:Laxd;

    .line 70
    iput-object p6, p0, Lawn;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 71
    return-void
.end method


# virtual methods
.method public final a(Lawv;)Lawm;
    .locals 5
    .param p1    # Lawv;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lbhp;->b()V

    .line 125
    iget-object v0, p0, Lawn;->mBitmapDecoder:Laxd;

    iget-object v1, p1, Lawv;->mBitmapSource:Laxf;

    iget v2, p1, Lawv;->mWidth:I

    iget v3, p1, Lawv;->mHeight:I

    iget-boolean v4, p1, Lawv;->mRequireExactDimensions:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Laxd;->a(Laxf;IIZ)Lawm;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 4
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 134
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 139
    iget-object v0, p0, Lawn;->mBitmapRecycling:Lawq;

    invoke-virtual {v0, p1, v3}, Lawq;->a(Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method

.method public final varargs a(Lawv;[Laww;)V
    .locals 7
    .param p1    # Lawv;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # [Laww;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation build Lcdn;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-static {}, Lbhp;->a()V

    .line 84
    iget-object v3, p1, Lawv;->mImageView:Landroid/widget/ImageView;

    .line 85
    iget-object v4, p1, Lawv;->mRequestId:Ljava/lang/String;

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p1, Lawv;->mRequestId:Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    .line 89
    new-instance v0, Laxa;

    invoke-direct {v0}, Laxa;-><init>()V

    invoke-static {p2, v1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laww;

    .line 91
    iget-object v4, p0, Lawn;->mBitmapDecoder:Laxd;

    invoke-static {p1, v4, v0}, Laxb$a;->a(Lawv;Laxd;[Laww;)Laxb;

    move-result-object v0

    .line 92
    iget-object v4, p0, Lawn;->mResources:Landroid/content/res/Resources;

    iget-object v5, p1, Lawv;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    new-instance v6, Laxc;

    invoke-direct {v6, v4, v5, v0}, Laxc;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Laxb;)V

    .line 94
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v3, p0, Lawn;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p1, Lawv;->mRequestId:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Laxb;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    :cond_0
    return-void

    .line 85
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v5, v0, Laxc;

    if-eqz v5, :cond_2

    check-cast v0, Laxc;

    iget-object v0, v0, Laxc;->mLoaderTask:Laxb;

    :goto_1
    if-eqz v0, :cond_4

    iget-object v5, v0, Laxb;->mRequest:Lawv;

    iget-object v5, v5, Lawv;->mRequestId:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, v0, Laxb;->mRequest:Lawv;

    iget-object v5, v5, Lawv;->mRequestId:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2}, Laxb;->cancel(Z)Z

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public final varargs b(Lawv;[Laww;)V
    .locals 5
    .param p1    # Lawv;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # [Laww;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Lbhp;->a()V

    .line 110
    iget-object v0, p0, Lawn;->mBitmapDecoder:Laxd;

    invoke-static {p1, v0, p2}, Laxb$a;->a(Lawv;Laxd;[Laww;)Laxb;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lawn;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lawv;->mRequestId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Laxb;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    return-void
.end method
