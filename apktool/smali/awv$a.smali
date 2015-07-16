.class public final Lawv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public mBytes:[B

.field mCache:Laxn;

.field mCacheKey:Ljava/lang/String;

.field public mEncryptionAlgorithm:Laza;

.field public mExtras:Landroid/os/Bundle;

.field public mHeight:I

.field public mImageView:Landroid/widget/ImageView;

.field mPlaceholderBitmap:Landroid/graphics/Bitmap;

.field public mRequestId:Ljava/lang/String;

.field public mRequireExactDimensions:Z

.field public mResId:Ljava/lang/Integer;

.field mShouldScale:Z

.field mUri:Ljava/lang/String;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v0, p0, Lawv$a;->mHeight:I

    .line 116
    iput v0, p0, Lawv$a;->mWidth:I

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lawv$a;->mShouldScale:Z

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lawv$a;->mRequireExactDimensions:Z

    .line 125
    iput-object v1, p0, Lawv$a;->mResId:Ljava/lang/Integer;

    .line 126
    iput-object v1, p0, Lawv$a;->mBytes:[B

    .line 127
    iput-object v1, p0, Lawv$a;->mUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lawv$a;
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lawv$a;->mUri:Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lawv$a;->mRequestId:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public final a(Ljava/lang/String;Laxn;Ljava/lang/String;)Lawv$a;
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lawv$a;->a(Ljava/lang/String;Laxn;Ljava/lang/String;Laza;)Lawv$a;

    .line 178
    return-object p0
.end method

.method public final a(Ljava/lang/String;Laxn;Ljava/lang/String;Laza;)Lawv$a;
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lawv$a;->mRequestId:Ljava/lang/String;

    .line 182
    iput-object p2, p0, Lawv$a;->mCache:Laxn;

    .line 183
    iput-object p3, p0, Lawv$a;->mCacheKey:Ljava/lang/String;

    .line 184
    iput-object p4, p0, Lawv$a;->mEncryptionAlgorithm:Laza;

    .line 185
    return-object p0
.end method

.method public final a()Lawv;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lawv$a;->mRequestId:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build AsyncLoadBitmapRequest with null request ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lawv$a;->mResId:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iget-object v3, p0, Lawv$a;->mBytes:[B

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v3, p0, Lawv$a;->mUri:Ljava/lang/String;

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v3, p0, Lawv$a;->mCache:Laxn;

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must have exactly one Bitmap source for request!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_4
    new-instance v0, Lawv;

    invoke-direct {v0, p0, v2}, Lawv;-><init>(Lawv$a;B)V

    return-object v0

    :cond_5
    move v0, v2

    goto :goto_0
.end method
