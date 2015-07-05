.class public final Lavx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lavx$a;
    }
.end annotation


# instance fields
.field public mBitmapSource:Lawh;
    .annotation build Lcgb;
    .end annotation
.end field

.field private final mExtras:Landroid/os/Bundle;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final mHeight:I

.field public final mImageView:Landroid/widget/ImageView;
    .annotation build Lcgc;
    .end annotation
.end field

.field final mPlaceholderBitmap:Landroid/graphics/Bitmap;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final mRequestId:Ljava/lang/String;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final mRequireExactDimensions:Z

.field private final mShouldScale:Z

.field public final mWidth:I


# direct methods
.method private constructor <init>(Lavx$a;)V
    .locals 4

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-object v0, p1, Lavx$a;->mImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lavx;->mImageView:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p1, Lavx$a;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lavx;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    .line 56
    iget v0, p1, Lavx$a;->mHeight:I

    iput v0, p0, Lavx;->mHeight:I

    .line 57
    iget v0, p1, Lavx$a;->mWidth:I

    iput v0, p0, Lavx;->mWidth:I

    .line 58
    iget-boolean v0, p1, Lavx$a;->mShouldScale:Z

    iput-boolean v0, p0, Lavx;->mShouldScale:Z

    .line 59
    iget-boolean v0, p1, Lavx$a;->mRequireExactDimensions:Z

    iput-boolean v0, p0, Lavx;->mRequireExactDimensions:Z

    .line 60
    iget-object v0, p1, Lavx$a;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lavx;->mExtras:Landroid/os/Bundle;

    .line 62
    iget-object v0, p1, Lavx$a;->mRequestId:Ljava/lang/String;

    iput-object v0, p0, Lavx;->mRequestId:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lavx$a;->mResId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lawm;

    iget-object v1, p1, Lavx$a;->mResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lawm;-><init>(I)V

    iput-object v0, p0, Lavx;->mBitmapSource:Lawh;

    .line 75
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p1, Lavx$a;->mBytes:[B

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Lawi;

    iget-object v1, p1, Lavx$a;->mBytes:[B

    invoke-direct {v0, v1}, Lawi;-><init>([B)V

    iput-object v0, p0, Lavx;->mBitmapSource:Lawh;

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p1, Lavx$a;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p1, Lavx$a;->mEncryptionAlgorithm:Layc;

    if-nez v0, :cond_2

    .line 70
    new-instance v0, Lawo;

    iget-object v1, p1, Lavx$a;->mUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Lawo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lavx;->mBitmapSource:Lawh;

    goto :goto_0

    .line 72
    :cond_2
    new-instance v0, Lawk;

    iget-object v1, p1, Lavx$a;->mUri:Ljava/lang/String;

    iget-object v2, p1, Lavx$a;->mEncryptionAlgorithm:Layc;

    invoke-direct {v0, v1, v2}, Lawk;-><init>(Ljava/lang/String;Layc;)V

    iput-object v0, p0, Lavx;->mBitmapSource:Lawh;

    goto :goto_0

    .line 74
    :cond_3
    iget-object v0, p1, Lavx$a;->mCache:Lawp;

    if-eqz v0, :cond_4

    .line 75
    new-instance v0, Lawj;

    iget-object v1, p1, Lavx$a;->mCache:Lawp;

    iget-object v2, p1, Lavx$a;->mCacheKey:Ljava/lang/String;

    iget-object v3, p1, Lavx$a;->mEncryptionAlgorithm:Layc;

    invoke-direct {v0, v1, v2, v3}, Lawj;-><init>(Lawp;Ljava/lang/String;Layc;)V

    iput-object v0, p0, Lavx;->mBitmapSource:Lawh;

    goto :goto_0

    .line 77
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No valid bitmap source was specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lavx$a;B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lavx;-><init>(Lavx$a;)V

    return-void
.end method
