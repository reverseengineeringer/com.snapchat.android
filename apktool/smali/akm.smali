.class public final Lakm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lakk;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakm$a;
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ChatVideoItemProxy"

.field private static sId:I


# instance fields
.field private mBitmapLoader:Lavp;

.field private final mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

.field private mCurrentState:I

.field private final mId:I

.field private mOverlayFailedToLoad:Z

.field private final mOverlayImageView:Landroid/widget/ImageView;

.field private mOverlayLoaded:Z

.field private mPlaybackListener:Lakl;

.field private final mPresenter:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

.field private mTargetState:I

.field private final mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

.field private final mVideoErrorCallback:Lakm$a;

.field private mVideoInErrorState:Z

.field private mVideoPlaybackCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput v0, Lakm;->sId:I

    return-void
.end method

.method public constructor <init>(Lafr$c;Lcom/snapchat/android/model/chat/ChatMedia;Lakm$a;)V
    .locals 10
    .param p1    # Lafr$c;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/ChatMedia;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 106
    iget-object v7, p1, Lafr$c;->z:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v8, p1, Lafr$c;->A:Lcom/snapchat/android/ui/FitWidthImageView;

    iget-object v9, p1, Lafr$c;->E:Landroid/view/ViewGroup;

    new-instance v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v1, p1, Lafr$c;->z:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v2, p1, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    iget-object v3, p1, Lafr$c;->A:Lcom/snapchat/android/ui/FitWidthImageView;

    iget-object v4, p1, Lafr$c;->B:Landroid/view/View;

    iget-object v5, p1, Lafr$c;->D:Landroid/widget/ProgressBar;

    iget-object v6, p1, Lafr$c;->E:Landroid/view/ViewGroup;

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;-><init>(Lcom/snapchat/android/ui/TextureVideoView;Lcom/snapchat/android/ui/ImageResourceView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/view/ViewGroup;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lakm;-><init>(Lcom/snapchat/android/model/chat/ChatMedia;Lcom/snapchat/android/ui/TextureVideoView;Landroid/widget/ImageView;Landroid/view/View;Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;Lakm$a;)V

    .line 110
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/model/chat/ChatMedia;Lcom/snapchat/android/ui/TextureVideoView;Landroid/widget/ImageView;Landroid/view/View;Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;Lakm$a;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/model/chat/ChatMedia;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/TextureVideoView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Lakm$a;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lakm;->mBitmapLoader:Lavp;

    .line 55
    iput-boolean v1, p0, Lakm;->mOverlayLoaded:Z

    .line 56
    iput-boolean v1, p0, Lakm;->mOverlayFailedToLoad:Z

    .line 57
    iput-boolean v1, p0, Lakm;->mVideoInErrorState:Z

    .line 58
    iput-boolean v1, p0, Lakm;->mVideoPlaybackCompleted:Z

    .line 77
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->V()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t create a ChatVideoItemProxy for a non-video ChatMedia!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput-object p1, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    .line 82
    iput-object p2, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    .line 83
    iput-object p3, p0, Lakm;->mOverlayImageView:Landroid/widget/ImageView;

    .line 84
    iput-object p5, p0, Lakm;->mPresenter:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    .line 85
    iput-object p6, p0, Lakm;->mVideoErrorCallback:Lakm$a;

    .line 87
    new-instance v0, Lakm$1;

    invoke-direct {v0, p0}, Lakm$1;-><init>(Lakm;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput v1, p0, Lakm;->mCurrentState:I

    .line 99
    iput v1, p0, Lakm;->mTargetState:I

    .line 101
    sget v0, Lakm;->sId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lakm;->sId:I

    iput v0, p0, Lakm;->mId:I

    .line 102
    return-void
.end method

.method static synthetic a(Lakm;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lakm;->mId:I

    return v0
.end method

.method static synthetic a(Lakm;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lakm;->mCurrentState:I

    return p1
.end method

.method static synthetic a(Lakm;Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 33
    const-string v2, "ChatVideoItemProxy"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, -0x1

    iput v2, p0, Lakm;->mCurrentState:I

    iget-object v2, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/TextureVideoView;->b()V

    iput-boolean v1, p0, Lakm;->mVideoInErrorState:Z

    iget-boolean v2, p0, Lakm;->mVideoPlaybackCompleted:Z

    if-nez v2, :cond_2

    const/16 v2, 0x64

    if-eq p2, v2, :cond_0

    const/16 v2, -0x6e

    if-ne p2, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lakm;->mPresenter:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    sget-object v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->ERROR:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a(Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lakm;->mVideoErrorCallback:Lakm$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lakm;->mVideoErrorCallback:Lakm$a;

    invoke-interface {v0}, Lakm$a;->d()V

    :cond_4
    iget-object v0, p0, Lakm;->mPresenter:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    sget-object v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->STOPPED:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a(Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;)V

    goto :goto_0
.end method

.method static synthetic a(Lakm;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lakm;->mVideoPlaybackCompleted:Z

    return p1
.end method

.method static synthetic b(Lakm;)Lcom/snapchat/android/model/chat/ChatMedia;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    return-object v0
.end method

.method static synthetic b(Lakm;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lakm;->mOverlayFailedToLoad:Z

    return p1
.end method

.method static synthetic c(Lakm;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lakm;->mVideoInErrorState:Z

    return v0
.end method

.method static synthetic d(Lakm;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lakm;->mOverlayFailedToLoad:Z

    return v0
.end method

.method static synthetic e(Lakm;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lakm;->mTargetState:I

    return v0
.end method

.method static synthetic f(Lakm;)Lcom/snapchat/android/ui/TextureVideoView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    return-object v0
.end method

.method static synthetic g(Lakm;)Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lakm;->mPresenter:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    return-object v0
.end method

.method static synthetic h(Lakm;)Lakl;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lakm;->mPlaybackListener:Lakl;

    return-object v0
.end method

.method private h()V
    .locals 6
    .annotation build Lccm;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 244
    const-string v0, "ChatVideoItemProxy"

    const-string v1, "[%d] Load chat video and overlay %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lakm;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lakm;->mPresenter:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v1, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatMedia;->L()Z

    move-result v1

    iput-boolean v1, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->f:Z

    .line 246
    iget-object v0, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lakm;->j()V

    .line 251
    :cond_0
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setAlpha(F)V

    .line 252
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/TextureVideoView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatMedia;->R()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->S()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->T()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatMedia;->U()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/snapchat/android/ui/TextureVideoView;->setViewport(IIII)V

    .line 256
    invoke-direct {p0}, Lakm;->i()V

    .line 257
    return-void
.end method

.method private i()V
    .locals 6
    .annotation build Lccm;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 264
    const-string v0, "ChatVideoItemProxy"

    const-string v1, "[%d] Load chat video %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lakm;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    new-instance v1, Lakm$3;

    invoke-direct {v1, p0}, Lakm$3;-><init>(Lakm;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 295
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    new-instance v1, Lakm$4;

    invoke-direct {v1, p0}, Lakm$4;-><init>(Lakm;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 307
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    new-instance v1, Lakm$5;

    invoke-direct {v1, p0}, Lakm$5;-><init>(Lakm;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 317
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatMedia;->J()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 318
    iput v5, p0, Lakm;->mCurrentState:I

    .line 319
    return-void
.end method

.method static synthetic i(Lakm;)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lakm;->mVideoInErrorState:Z

    return v0
.end method

.method private j()V
    .locals 6
    .annotation build Lccm;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 351
    const-string v0, "ChatVideoItemProxy"

    const-string v1, "[%d] Load overlay %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lakm;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v1, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatMedia;->D()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lakm;->mBitmapLoader:Lavp;

    if-nez v1, :cond_0

    .line 354
    new-instance v1, Lavp;

    iget-object v2, p0, Lakm;->mOverlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lavp;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lakm;->mBitmapLoader:Lavp;

    .line 356
    :cond_0
    new-instance v1, Lavx$a;

    invoke-direct {v1}, Lavx$a;-><init>()V

    iget-object v2, p0, Lakm;->mOverlayImageView:Landroid/widget/ImageView;

    iput-object v2, v1, Lavx$a;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lavx$a;->a(Ljava/lang/String;)Lavx$a;

    move-result-object v1

    iget-object v2, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/TextureVideoView;->getWidth()I

    move-result v2

    iput v2, v1, Lavx$a;->mWidth:I

    iget-object v2, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/TextureVideoView;->getHeight()I

    move-result v2

    iput v2, v1, Lavx$a;->mHeight:I

    iput-object v0, v1, Lavx$a;->mEncryptionAlgorithm:Layc;

    iput-boolean v4, v1, Lavx$a;->mRequireExactDimensions:Z

    invoke-virtual {v1}, Lavx$a;->a()Lavx;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lakm;->mBitmapLoader:Lavp;

    new-array v2, v4, [Lavy;

    new-instance v3, Lakm$6;

    invoke-direct {v3, p0}, Lakm$6;-><init>(Lakm;)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Lavp;->a(Lavx;[Lavy;)V

    .line 381
    return-void
.end method

.method static synthetic j(Lakm;)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lakm;->mOverlayLoaded:Z

    return v0
.end method

.method static synthetic k(Lakm;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lakm;->h()V

    return-void
.end method


# virtual methods
.method public final a(Lakl;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lakm;->mPlaybackListener:Lakl;

    .line 237
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    const-string v0, "ChatVideoItemProxy"

    const-string v1, "[%d] Chat video initialize %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lakm;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lakm;->mPresenter:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    sget-object v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->LOADING:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a(Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;)V

    .line 124
    iget v0, p0, Lakm;->mCurrentState:I

    if-nez v0, :cond_2

    .line 126
    iget-object v0, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->J()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 127
    const-string v0, "ChatVideoItemProxy"

    const-string v1, "[%d] Chat video initialize no video URI yet %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lakm;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/model/chat/ChatMedia;->addObserver(Ljava/util/Observer;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-direct {p0}, Lakm;->h()V

    goto :goto_0

    .line 133
    :cond_2
    iget-boolean v0, p0, Lakm;->mVideoInErrorState:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lakm;->mOverlayFailedToLoad:Z

    if-eqz v0, :cond_0

    .line 134
    :cond_3
    const-string v0, "ChatVideoItemProxy"

    const-string v1, "[%d] Chat video initialize (video and/or overlay failed to load %s)"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lakm;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lakm;->mPresenter:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    sget-object v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->LOADING:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a(Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;)V

    .line 136
    iget-boolean v0, p0, Lakm;->mVideoInErrorState:Z

    if-eqz v0, :cond_4

    .line 137
    invoke-direct {p0}, Lakm;->i()V

    .line 139
    :cond_4
    iget-boolean v0, p0, Lakm;->mOverlayFailedToLoad:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lakm;->j()V

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    iget v0, p0, Lakm;->mCurrentState:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lakm;->mCurrentState:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    :cond_0
    iget-object v0, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lakm;->mOverlayLoaded:Z

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 151
    const-string v0, "ChatVideoItemProxy"

    const-string v3, "[%d] Start chat video playback ready to play %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lakm;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    new-instance v1, Lakm$2;

    invoke-direct {v1, p0}, Lakm$2;-><init>(Lakm;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 167
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/TextureVideoView;->seekTo(I)V

    .line 171
    :goto_1
    const/4 v0, 0x3

    iput v0, p0, Lakm;->mTargetState:I

    .line 172
    return-void

    :cond_2
    move v0, v2

    .line 150
    goto :goto_0

    .line 169
    :cond_3
    const-string v0, "ChatVideoItemProxy"

    const-string v3, "[%d] Start chat video playback not ready to play %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lakm;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final d()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 179
    const-string v0, "ChatVideoItemProxy"

    const-string v1, "[%d] Pause chat video playback %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lakm;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->pause()V

    .line 182
    iput v5, p0, Lakm;->mCurrentState:I

    .line 183
    :cond_0
    iget-object v0, p0, Lakm;->mPresenter:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    sget-object v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->PAUSED:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a(Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;)V

    .line 188
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 189
    iput v5, p0, Lakm;->mTargetState:I

    .line 190
    return-void
.end method

.method public final e()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 197
    const-string v0, "ChatVideoItemProxy"

    const-string v1, "[%d] Stop chat video playback %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lakm;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->a()V

    .line 199
    iget-object v0, p0, Lakm;->mPresenter:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    sget-object v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->STOPPED:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a(Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;)V

    .line 200
    iget-object v0, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakm;->mBitmapLoader:Lavp;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lakm;->mBitmapLoader:Lavp;

    iget-object v1, p0, Lakm;->mOverlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lavp;->a(Landroid/widget/ImageView;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 207
    iput v5, p0, Lakm;->mCurrentState:I

    .line 208
    iput v5, p0, Lakm;->mTargetState:I

    .line 209
    return-void
.end method

.method public final f()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 226
    const-string v0, "ChatVideoItemProxy"

    const-string v1, "[%d] Seek chat video %s to %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lakm;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/TextureVideoView;->seekTo(I)V

    .line 228
    return-void
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lakm;->mTextureVideoView:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 396
    iget-object v0, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    if-ne p1, v0, :cond_0

    .line 397
    iget-object v0, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->J()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "ChatVideoItemProxy"

    const-string v1, "[%d] Chat video observable video URI set %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lakm;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lakm;->mChatVideo:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/model/chat/ChatMedia;->deleteObserver(Ljava/util/Observer;)V

    .line 401
    new-instance v0, Lakm$7;

    invoke-direct {v0, p0}, Lakm$7;-><init>(Lakm;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 409
    :cond_0
    return-void
.end method
