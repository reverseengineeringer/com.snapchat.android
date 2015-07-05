.class public final Ladx;
.super Lady;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ladx$4;
    }
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;
    .annotation build Lcgc;
    .end annotation
.end field

.field b:Z

.field c:Z

.field d:Lcom/snapchat/android/discover/model/DSnapPage;

.field e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

.field private final f:Landroid/content/Context;

.field private final g:Laeu;

.field private final h:Lavp;

.field private final i:Laev;

.field private k:Landroid/widget/ImageView;
    .annotation build Lcgc;
    .end annotation
.end field

.field private l:Lcom/snapchat/android/ui/FitWidthViewGroup;

.field private m:Lcom/snapchat/android/ui/TextureVideoView;

.field private n:Landroid/widget/FrameLayout;

.field private o:Laeq;

.field private p:Z

.field private q:Lavy;

.field private r:Lavy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Laeu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Laeu;-><init>(Z)V

    new-instance v1, Lavp;

    invoke-direct {v1, p1}, Lavp;-><init>(Landroid/content/Context;)V

    new-instance v2, Laev;

    invoke-direct {v2}, Laev;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Ladx;-><init>(Landroid/content/Context;Laeu;Lavp;Laev;)V

    .line 73
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Laeu;Lavp;Laev;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lady;-><init>()V

    .line 64
    iput-boolean v0, p0, Ladx;->p:Z

    .line 65
    iput-boolean v0, p0, Ladx;->b:Z

    .line 66
    iput-boolean v0, p0, Ladx;->c:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ladx;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 68
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->INCOMPLETE:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v0, p0, Ladx;->e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 343
    new-instance v0, Ladx$2;

    invoke-direct {v0, p0}, Ladx$2;-><init>(Ladx;)V

    iput-object v0, p0, Ladx;->q:Lavy;

    .line 352
    new-instance v0, Ladx$3;

    invoke-direct {v0, p0}, Ladx$3;-><init>(Ladx;)V

    iput-object v0, p0, Ladx;->r:Lavy;

    .line 79
    iput-object p1, p0, Ladx;->f:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Ladx;->g:Laeu;

    .line 81
    iput-object p3, p0, Ladx;->h:Lavp;

    .line 82
    iput-object p4, p0, Ladx;->i:Laev;

    .line 83
    return-void
.end method

.method static synthetic a(Ladx;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 46
    iget-object v0, p0, Ladx;->o:Laeq;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ladx;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ladx;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ladx;->p:Z

    if-nez v0, :cond_0

    const-string v0, "DSnapItemTextureVideoViewAdapter"

    const-string v1, "[%s] All media is displayed."

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ladx;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v5, p0, Ladx;->p:Z

    iget-object v0, p0, Ladx;->o:Laeq;

    invoke-interface {v0}, Laeq;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ladb;Ljava/util/List;)Laim;
    .locals 9
    .param p3    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ladb;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Laim;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Ladx;->g:Laeu;

    iget-object v0, v0, Laeu;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Ladx;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Ladx;->k:Landroid/widget/ImageView;

    invoke-static {v0, p3}, Lavu;->a(Landroid/view/View;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 251
    :goto_0
    iget-object v0, p0, Ladx;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Ladx;->a:Landroid/widget/ImageView;

    invoke-static {v0, p3}, Lavu;->a(Landroid/view/View;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 256
    :cond_0
    new-instance v0, Lajl$a;

    invoke-direct {v0}, Lajl$a;-><init>()V

    iget-object v3, p0, Ladx;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/FitWidthViewGroup;->getGravity()I

    move-result v3

    iput v3, v0, Lajl$a;->mGravity:I

    iget-object v3, p0, Ladx;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/FitWidthViewGroup;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Ladx;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v4}, Lcom/snapchat/android/ui/FitWidthViewGroup;->getMeasuredHeight()I

    move-result v4

    iput v3, v0, Lajl$a;->mWidth:I

    iput v4, v0, Lajl$a;->mHeight:I

    iput-boolean v8, v0, Lajl$a;->mShouldHideSystemUi:Z

    invoke-virtual {v0}, Lajl$a;->a()Lajl;

    move-result-object v3

    .line 262
    iget-object v0, p0, Ladx;->m:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->getWidth()I

    move-result v0

    iget-object v4, p0, Ladx;->m:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v4}, Lcom/snapchat/android/ui/TextureVideoView;->getHeight()I

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    iget-object v6, p0, Ladx;->m:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v6, v5}, Lcom/snapchat/android/ui/TextureVideoView;->getLocationOnScreen([I)V

    aget v6, v5, v7

    aget v5, v5, v8

    invoke-static {p2, v6, v5, v0, v4}, Laev;->a(Ladb;IIII)V

    .line 264
    iget-object v0, p0, Ladx;->g:Laeu;

    iget v0, v0, Laeu;->h:F

    iput v0, p2, Ladb;->j:F

    .line 265
    iget-object v0, p0, Ladx;->g:Laeu;

    iget v0, v0, Laeu;->i:F

    iput v0, p2, Ladb;->k:F

    .line 267
    iget-object v0, p0, Ladx;->g:Laeu;

    iget v0, v0, Laeu;->g:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Lavf;->a(J)D

    move-result-wide v4

    .line 269
    iget-object v0, p0, Ladx;->g:Laeu;

    invoke-virtual {v0}, Laeu;->b()V

    .line 271
    new-instance v0, Lajm$a;

    invoke-direct {v0}, Lajm$a;-><init>()V

    iget-object v6, p0, Ladx;->g:Laeu;

    iget-object v6, v6, Laeu;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lajm$a;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Mediabryo$a;

    move-result-object v0

    check-cast v0, Lajm$a;

    iput-wide v4, v0, Lcom/snapchat/android/model/Mediabryo$a;->mTimerValueOrDuration:D

    check-cast v0, Lajm$a;

    sget-object v4, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v4, v0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    check-cast v0, Lajm$a;

    iput-boolean v7, v0, Lcom/snapchat/android/model/Mediabryo$a;->mShouldEnableVisualFilters:Z

    check-cast v0, Lajm$a;

    iput-object v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mOverlayBitmap:Landroid/graphics/Bitmap;

    check-cast v0, Lajm$a;

    iput-object p2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mMediaExtras:Laiz;

    check-cast v0, Lajm$a;

    iput-object v2, v0, Lajm$a;->mFirstFrameBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Ladx;->f:Landroid/content/Context;

    invoke-static {v1}, Lavh;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mWidth:I

    check-cast v0, Lajm$a;

    iget-object v1, p0, Ladx;->f:Landroid/content/Context;

    invoke-static {v1}, Lavh;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mHeight:I

    check-cast v0, Lajm$a;

    iput-object v3, v0, Lcom/snapchat/android/model/Mediabryo$a;->mPreviewConfiguration:Lajl;

    check-cast v0, Lajm$a;

    invoke-virtual {v0}, Lajm$a;->c()Lajm;

    move-result-object v2

    .line 285
    :cond_1
    return-object v2

    .line 246
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 248
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lavu;->a(Landroid/view/View;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_3
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public final a(J)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Ladx;->e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    return-object v0
.end method

.method public final a(Laeq;)V
    .locals 2
    .param p1    # Laeq;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 305
    iput-object p1, p0, Ladx;->o:Laeq;

    .line 306
    iget-object v0, p0, Ladx;->g:Laeu;

    new-instance v1, Ladx$1;

    invoke-direct {v1, p0, p1}, Ladx$1;-><init>(Ladx;Laeq;)V

    iput-object v1, v0, Laeu;->e:Laeq;

    .line 330
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 142
    iput-object p1, p0, Ladx;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/snapchat/android/discover/model/DSnapPage;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/snapchat/android/discover/model/DSnapPanel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Ladx;->g:Laeu;

    iput-object v0, v1, Laeu;->c:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 9
    .param p2    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    iput-object p2, p0, Ladx;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 88
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v4, p0, Ladx;->f:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ladx;->n:Landroid/widget/FrameLayout;

    .line 89
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    const/16 v0, 0x10

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    iget-object v0, p0, Ladx;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v0, Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget-object v5, p0, Ladx;->f:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/snapchat/android/ui/FitWidthViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ladx;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    .line 96
    sget-object v0, Ladx$4;->a:[I

    iget-object v5, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->i:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 105
    iget-object v0, p0, Ladx;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    .line 109
    :goto_0
    sget-object v0, Ladx$4;->b:[I

    iget-object v5, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->h:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_1

    move v0, v1

    .line 120
    :goto_1
    new-instance v5, Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v6, p0, Ladx;->f:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/snapchat/android/ui/TextureVideoView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Ladx;->m:Lcom/snapchat/android/ui/TextureVideoView;

    .line 121
    iget-object v5, p0, Ladx;->g:Laeu;

    iget-object v6, p0, Ladx;->m:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v5, v6, v0}, Laeu;->a(Lcom/snapchat/android/ui/TextureVideoView;Z)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/snapchat/android/discover/model/DSnapPage;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v5, p0, Ladx;->g:Laeu;

    iput-object v0, v5, Laeu;->c:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Ladx;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget-object v5, p0, Ladx;->m:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/FitWidthViewGroup;->addView(Landroid/view/View;)V

    .line 127
    iget-object v5, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->f:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v0, "DSnapItemTextureVideoViewAdapter"

    const-string v5, "[%s] No first frame video. Setting video frame loaded."

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p2, v6, v2

    invoke-static {v0, v5, v6}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Ladx;->b:Z

    move-object v0, v3

    :goto_2
    iput-object v0, p0, Ladx;->a:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Ladx;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Ladx;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget-object v5, p0, Ladx;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/FitWidthViewGroup;->addView(Landroid/view/View;)V

    .line 131
    :cond_0
    iget-object v0, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v5, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->d:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->isMediaDocking()Z

    move-result v5

    if-eqz v5, :cond_3

    iput-boolean v2, p0, Ladx;->c:Z

    new-instance v3, Lcom/snapchat/android/ui/FitWidthImageView;

    iget-object v5, p0, Ladx;->f:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/snapchat/android/ui/FitWidthImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lcom/snapchat/android/discover/model/DSnapPage;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lavx$a;

    invoke-direct {v5}, Lavx$a;-><init>()V

    iput-object v3, v5, Lavx$a;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Lavx$a;->a(Ljava/lang/String;)Lavx$a;

    move-result-object v0

    iput-boolean v1, v0, Lavx$a;->mRequireExactDimensions:Z

    invoke-virtual {v0}, Lavx$a;->a()Lavx;

    move-result-object v0

    iget-object v5, p0, Ladx;->h:Lavp;

    new-array v6, v1, [Lavy;

    iget-object v7, p0, Ladx;->q:Lavy;

    aput-object v7, v6, v2

    invoke-virtual {v5, v0, v6}, Lavp;->a(Lavx;[Lavy;)V

    :goto_3
    iput-object v3, p0, Ladx;->k:Landroid/widget/ImageView;

    .line 132
    iget-object v0, p0, Ladx;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Ladx;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget-object v2, p0, Ladx;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/FitWidthViewGroup;->addView(Landroid/view/View;)V

    .line 136
    :cond_1
    iget-object v0, p0, Ladx;->n:Landroid/widget/FrameLayout;

    iget-object v2, p0, Ladx;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    return v1

    .line 98
    :pswitch_0
    iget-object v0, p0, Ladx;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    goto/16 :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Ladx;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    goto/16 :goto_0

    :pswitch_2
    move v0, v1

    .line 112
    goto/16 :goto_1

    :pswitch_3
    move v0, v2

    .line 115
    goto/16 :goto_1

    .line 127
    :cond_2
    new-instance v0, Lcom/snapchat/android/ui/FitWidthImageView;

    iget-object v6, p0, Ladx;->f:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/snapchat/android/ui/FitWidthImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/snapchat/android/discover/model/DSnapPage;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lavx$a;

    invoke-direct {v6}, Lavx$a;-><init>()V

    iput-object v0, v6, Lavx$a;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Lavx$a;->a(Ljava/lang/String;)Lavx$a;

    move-result-object v5

    iput-boolean v1, v5, Lavx$a;->mRequireExactDimensions:Z

    invoke-virtual {v5}, Lavx$a;->a()Lavx;

    move-result-object v5

    iput-boolean v2, p0, Ladx;->b:Z

    iget-object v6, p0, Ladx;->h:Lavp;

    new-array v7, v1, [Lavy;

    iget-object v8, p0, Ladx;->r:Lavy;

    aput-object v8, v7, v2

    invoke-virtual {v6, v5, v7}, Lavp;->a(Lavx;[Lavy;)V

    goto/16 :goto_2

    .line 131
    :cond_3
    const-string v0, "DSnapItemTextureVideoViewAdapter"

    const-string v5, "[%s] No overlay. Setting overlay loaded."

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p2, v6, v2

    invoke-static {v0, v5, v6}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Ladx;->c:Z

    goto :goto_3

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 109
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Ladx;->h:Lavp;

    iget-object v1, p0, Ladx;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lavp;->a(Landroid/widget/ImageView;)V

    .line 364
    iget-object v0, p0, Ladx;->h:Lavp;

    iget-object v1, p0, Ladx;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lavp;->a(Landroid/widget/ImageView;)V

    .line 365
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Ladx;->n:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-object v0
.end method

.method public final o_()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Ladx;->p:Z

    .line 225
    iget-object v0, p0, Ladx;->g:Laeu;

    invoke-virtual {v0}, Laeu;->a()V

    .line 226
    return-void
.end method

.method public final p_()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Ladx;->g:Laeu;

    invoke-virtual {v0}, Laeu;->b()V

    .line 231
    iget-object v0, p0, Ladx;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Ladx;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    :cond_0
    return-void
.end method
