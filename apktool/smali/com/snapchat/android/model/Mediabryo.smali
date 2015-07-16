.class public abstract Lcom/snapchat/android/model/Mediabryo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/Mediabryo$a;,
        Lcom/snapchat/android/model/Mediabryo$SnapType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snapchat/android/model/Mediabryo;",
        ">;"
    }
.end annotation


# instance fields
.field public mClientId:Ljava/lang/String;

.field public final mHeight:I

.field public final mIsChatMedia:Z

.field public final mIsFlashOn:Z

.field public final mIsFrontFacingSnap:Z

.field public final mIsReply:Z

.field public mIsZipUpload:Z

.field public mMediaExtras:Lajv;
    .annotation build Lchd;
    .end annotation
.end field

.field public final mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

.field private mMuted:Z

.field public mOverlayBitmap:Landroid/graphics/Bitmap;

.field public mOverlayPath:Ljava/lang/String;

.field public mPreviewConfiguration:Lakh;

.field public mRawImageBitmap:Landroid/graphics/Bitmap;

.field public final mShouldEnableSmartFilters:Z

.field public final mShouldEnableVisualFilters:Z

.field public final mSnapOrientation:I

.field public final mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

.field public final mTime:Ljava/util/Date;

.field public mTimerValueOrDuration:D

.field public final mVideoUri:Landroid/net/Uri;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/Mediabryo$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/Mediabryo$a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mClientId:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mTime:Ljava/util/Date;

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mTime:Ljava/util/Date;

    .line 44
    iget-boolean v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mMuted:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mMuted:Z

    .line 45
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mVideoUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    .line 46
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mOverlayBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 47
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mRawImageBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    .line 48
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mOverlayPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mOverlayPath:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mPreviewConfiguration:Lakh;

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mPreviewConfiguration:Lakh;

    .line 50
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    .line 51
    iget-boolean v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mIsChatMedia:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsChatMedia:Z

    .line 52
    iget-boolean v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mIsReply:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsReply:Z

    .line 53
    iget-boolean v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mIsFrontFacingSnap:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFrontFacingSnap:Z

    .line 54
    iget-boolean v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mIsFlashOn:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFlashOn:Z

    .line 55
    iget-boolean v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mIsZipUpload:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsZipUpload:Z

    .line 56
    iget v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mSnapOrientation:I

    iput v0, p0, Lcom/snapchat/android/model/Mediabryo;->mSnapOrientation:I

    .line 57
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mMediaExtras:Lajv;

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Lajv;

    .line 58
    iget-wide v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mTimerValueOrDuration:D

    iput-wide v0, p0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    .line 59
    iget v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mWidth:I

    iput v0, p0, Lcom/snapchat/android/model/Mediabryo;->mWidth:I

    .line 60
    iget v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mHeight:I

    iput v0, p0, Lcom/snapchat/android/model/Mediabryo;->mHeight:I

    .line 61
    iget-boolean v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mShouldEnableSmartFilters:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mShouldEnableSmartFilters:Z

    .line 62
    iget-boolean v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mShouldEnableVisualFilters:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mShouldEnableVisualFilters:Z

    .line 64
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lakg;

    invoke-direct {v0}, Lakg;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo$a;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    goto :goto_0
.end method

.method public static synthetic a(Lcom/snapchat/android/model/Mediabryo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public static varargs a([Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 310
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 311
    if-eqz v2, :cond_0

    .line 312
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lawo;->a(Landroid/graphics/Bitmap;)V

    .line 310
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/snapchat/android/model/Mediabryo;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mTime:Ljava/util/Date;

    return-object v0
.end method

.method public static synthetic c(Lcom/snapchat/android/model/Mediabryo;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static synthetic d(Lcom/snapchat/android/model/Mediabryo;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mOverlayBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic e(Lcom/snapchat/android/model/Mediabryo;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic f(Lcom/snapchat/android/model/Mediabryo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mOverlayPath:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lcom/snapchat/android/model/Mediabryo;)Lakh;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mPreviewConfiguration:Lakh;

    return-object v0
.end method

.method public static synthetic h(Lcom/snapchat/android/model/Mediabryo;)Lcom/snapchat/android/model/Mediabryo$SnapType;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    return-object v0
.end method

.method public static synthetic i(Lcom/snapchat/android/model/Mediabryo;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsChatMedia:Z

    return v0
.end method

.method public static synthetic j(Lcom/snapchat/android/model/Mediabryo;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsReply:Z

    return v0
.end method

.method public static synthetic k(Lcom/snapchat/android/model/Mediabryo;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFrontFacingSnap:Z

    return v0
.end method

.method public static synthetic l(Lcom/snapchat/android/model/Mediabryo;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFlashOn:Z

    return v0
.end method

.method public static synthetic m(Lcom/snapchat/android/model/Mediabryo;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsZipUpload:Z

    return v0
.end method

.method public static synthetic n(Lcom/snapchat/android/model/Mediabryo;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/snapchat/android/model/Mediabryo;->mSnapOrientation:I

    return v0
.end method

.method public static synthetic o(Lcom/snapchat/android/model/Mediabryo;)Lajv;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Lajv;

    return-object v0
.end method

.method public static synthetic p(Lcom/snapchat/android/model/Mediabryo;)Lcom/snapchat/android/model/MediaMailingMetadata;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    return-object v0
.end method

.method public static synthetic q(Lcom/snapchat/android/model/Mediabryo;)D
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    return-wide v0
.end method

.method public static synthetic r(Lcom/snapchat/android/model/Mediabryo;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mShouldEnableSmartFilters:Z

    return v0
.end method

.method public static synthetic s(Lcom/snapchat/android/model/Mediabryo;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mShouldEnableVisualFilters:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 254
    invoke-static {p1}, Lawf;->d(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 26
    check-cast p1, Lcom/snapchat/android/model/Mediabryo;

    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mTime:Ljava/util/Date;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 286
    if-ne p0, p1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    instance-of v2, p1, Lcom/snapchat/android/model/Mediabryo;

    if-nez v2, :cond_2

    move v0, v1

    .line 290
    goto :goto_0

    .line 294
    :cond_2
    check-cast p1, Lcom/snapchat/android/model/Mediabryo;

    .line 295
    iget-object v2, p0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iget-object v3, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public abstract g()[B
    .annotation build Lchd;
    .end annotation
.end method

.method public abstract h()I
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mMuted:Z

    .line 147
    return-void
.end method

.method public final j()V
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/model/Mediabryo;->mOverlayBitmap:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/snapchat/android/model/Mediabryo;->a([Landroid/graphics/Bitmap;)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 160
    return-void
.end method

.method public final k()V
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/snapchat/android/model/Mediabryo;->a([Landroid/graphics/Bitmap;)V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    .line 165
    return-void
.end method

.method public l()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/snapchat/android/model/Mediabryo;->mOverlayBitmap:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/snapchat/android/model/Mediabryo;->a([Landroid/graphics/Bitmap;)V

    .line 169
    iput-object v3, p0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    .line 170
    iput-object v3, p0, Lcom/snapchat/android/model/Mediabryo;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 171
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mMuted:Z

    return v0
.end method
