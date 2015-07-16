.class public final Lawv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lawv$a;
    }
.end annotation


# instance fields
.field public mBitmapSource:Laxf;
    .annotation build Lchc;
    .end annotation
.end field

.field private final mExtras:Landroid/os/Bundle;
    .annotation build Lchd;
    .end annotation
.end field

.field public final mHeight:I

.field public final mImageView:Landroid/widget/ImageView;
    .annotation build Lchd;
    .end annotation
.end field

.field final mPlaceholderBitmap:Landroid/graphics/Bitmap;
    .annotation build Lchd;
    .end annotation
.end field

.field public final mRequestId:Ljava/lang/String;
    .annotation build Lchc;
    .end annotation
.end field

.field public final mRequireExactDimensions:Z

.field private final mShouldScale:Z

.field public final mWidth:I


# direct methods
.method private constructor <init>(Lawv$a;)V
    .locals 4

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-object v0, p1, Lawv$a;->mImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lawv;->mImageView:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p1, Lawv$a;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lawv;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    .line 56
    iget v0, p1, Lawv$a;->mHeight:I

    iput v0, p0, Lawv;->mHeight:I

    .line 57
    iget v0, p1, Lawv$a;->mWidth:I

    iput v0, p0, Lawv;->mWidth:I

    .line 58
    iget-boolean v0, p1, Lawv$a;->mShouldScale:Z

    iput-boolean v0, p0, Lawv;->mShouldScale:Z

    .line 59
    iget-boolean v0, p1, Lawv$a;->mRequireExactDimensions:Z

    iput-boolean v0, p0, Lawv;->mRequireExactDimensions:Z

    .line 60
    iget-object v0, p1, Lawv$a;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lawv;->mExtras:Landroid/os/Bundle;

    .line 62
    iget-object v0, p1, Lawv$a;->mRequestId:Ljava/lang/String;

    iput-object v0, p0, Lawv;->mRequestId:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lawv$a;->mResId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Laxk;

    iget-object v1, p1, Lawv$a;->mResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Laxk;-><init>(I)V

    iput-object v0, p0, Lawv;->mBitmapSource:Laxf;

    .line 75
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p1, Lawv$a;->mBytes:[B

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Laxg;

    iget-object v1, p1, Lawv$a;->mBytes:[B

    invoke-direct {v0, v1}, Laxg;-><init>([B)V

    iput-object v0, p0, Lawv;->mBitmapSource:Laxf;

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p1, Lawv$a;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p1, Lawv$a;->mEncryptionAlgorithm:Laza;

    if-nez v0, :cond_2

    .line 70
    new-instance v0, Laxm;

    iget-object v1, p1, Lawv$a;->mUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Laxm;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lawv;->mBitmapSource:Laxf;

    goto :goto_0

    .line 72
    :cond_2
    new-instance v0, Laxi;

    iget-object v1, p1, Lawv$a;->mUri:Ljava/lang/String;

    iget-object v2, p1, Lawv$a;->mEncryptionAlgorithm:Laza;

    invoke-direct {v0, v1, v2}, Laxi;-><init>(Ljava/lang/String;Laza;)V

    iput-object v0, p0, Lawv;->mBitmapSource:Laxf;

    goto :goto_0

    .line 74
    :cond_3
    iget-object v0, p1, Lawv$a;->mCache:Laxn;

    if-eqz v0, :cond_4

    .line 75
    new-instance v0, Laxh;

    iget-object v1, p1, Lawv$a;->mCache:Laxn;

    iget-object v2, p1, Lawv$a;->mCacheKey:Ljava/lang/String;

    iget-object v3, p1, Lawv$a;->mEncryptionAlgorithm:Laza;

    invoke-direct {v0, v1, v2, v3}, Laxh;-><init>(Laxn;Ljava/lang/String;Laza;)V

    iput-object v0, p0, Lawv;->mBitmapSource:Laxf;

    goto :goto_0

    .line 77
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No valid bitmap source was specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lawv$a;B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lawv;-><init>(Lawv$a;)V

    return-void
.end method
