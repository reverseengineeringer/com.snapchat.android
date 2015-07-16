.class public final Laex;
.super Laey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laex$4;
    }
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;
    .annotation build Lchd;
    .end annotation
.end field

.field b:Z

.field c:Z

.field d:Lcom/snapchat/android/discover/model/DSnapPage;

.field e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

.field private final f:Landroid/content/Context;

.field private final g:Lafu;

.field private final h:Lawn;

.field private final i:Lafv;

.field private k:Landroid/widget/ImageView;
    .annotation build Lchd;
    .end annotation
.end field

.field private l:Lcom/snapchat/android/ui/FitWidthViewGroup;

.field private m:Lcom/snapchat/android/ui/TextureVideoView;

.field private n:Landroid/widget/FrameLayout;

.field private o:Lafq;

.field private p:Z

.field private q:Laww;

.field private r:Laww;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lafu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lafu;-><init>(Z)V

    new-instance v1, Lawn;

    invoke-direct {v1, p1}, Lawn;-><init>(Landroid/content/Context;)V

    new-instance v2, Lafv;

    invoke-direct {v2}, Lafv;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Laex;-><init>(Landroid/content/Context;Lafu;Lawn;Lafv;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lafu;Lawn;Lafv;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Laey;-><init>()V

    .line 63
    iput-boolean v0, p0, Laex;->p:Z

    .line 64
    iput-boolean v0, p0, Laex;->b:Z

    .line 65
    iput-boolean v0, p0, Laex;->c:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Laex;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 67
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->INCOMPLETE:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v0, p0, Laex;->e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 352
    new-instance v0, Laex$2;

    invoke-direct {v0, p0}, Laex$2;-><init>(Laex;)V

    iput-object v0, p0, Laex;->q:Laww;

    .line 361
    new-instance v0, Laex$3;

    invoke-direct {v0, p0}, Laex$3;-><init>(Laex;)V

    iput-object v0, p0, Laex;->r:Laww;

    .line 78
    iput-object p1, p0, Laex;->f:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Laex;->g:Lafu;

    .line 80
    iput-object p3, p0, Laex;->h:Lawn;

    .line 81
    iput-object p4, p0, Laex;->i:Lafv;

    .line 82
    return-void
.end method

.method static synthetic a(Laex;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 45
    iget-object v0, p0, Laex;->o:Lafq;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laex;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laex;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laex;->p:Z

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Laex;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v2, v0, v1

    iput-boolean v3, p0, Laex;->p:Z

    iget-object v0, p0, Laex;->o:Lafq;

    invoke-interface {v0}, Lafq;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Laeb;Ljava/util/List;)Laji;
    .locals 9
    .param p3    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Laeb;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Laji;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Laex;->g:Lafu;

    iget-object v0, v0, Lafu;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Laex;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Laex;->k:Landroid/widget/ImageView;

    invoke-static {v0, p3}, Laws;->a(Landroid/view/View;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 249
    :goto_0
    iget-object v0, p0, Laex;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Laex;->a:Landroid/widget/ImageView;

    invoke-static {v0, p3}, Laws;->a(Landroid/view/View;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 254
    :cond_0
    new-instance v0, Lakh$a;

    invoke-direct {v0}, Lakh$a;-><init>()V

    iget-object v3, p0, Laex;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/FitWidthViewGroup;->getGravity()I

    move-result v3

    iput v3, v0, Lakh$a;->mGravity:I

    iget-object v3, p0, Laex;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/FitWidthViewGroup;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Laex;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v4}, Lcom/snapchat/android/ui/FitWidthViewGroup;->getMeasuredHeight()I

    move-result v4

    iput v3, v0, Lakh$a;->mWidth:I

    iput v4, v0, Lakh$a;->mHeight:I

    iput-boolean v8, v0, Lakh$a;->mShouldHideSystemUi:Z

    invoke-virtual {v0}, Lakh$a;->a()Lakh;

    move-result-object v3

    .line 260
    iget-object v0, p0, Laex;->m:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->getWidth()I

    move-result v0

    iget-object v4, p0, Laex;->m:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v4}, Lcom/snapchat/android/ui/TextureVideoView;->getHeight()I

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    iget-object v6, p0, Laex;->m:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v6, v5}, Lcom/snapchat/android/ui/TextureVideoView;->getLocationOnScreen([I)V

    aget v6, v5, v7

    aget v5, v5, v8

    invoke-static {p2, v6, v5, v0, v4}, Lafv;->a(Laeb;IIII)V

    .line 262
    iget-object v0, p0, Laex;->g:Lafu;

    iget v0, v0, Lafu;->j:F

    iput v0, p2, Laeb;->j:F

    .line 263
    iget-object v0, p0, Laex;->g:Lafu;

    iget v0, v0, Lafu;->k:F

    iput v0, p2, Laeb;->k:F

    .line 265
    iget-object v0, p0, Laex;->g:Lafu;

    iget v0, v0, Lafu;->h:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Lawd;->a(J)D

    move-result-wide v4

    .line 267
    iget-object v0, p0, Laex;->g:Lafu;

    invoke-virtual {v0}, Lafu;->b()V

    .line 269
    new-instance v0, Laku$a;

    invoke-direct {v0}, Laku$a;-><init>()V

    iget-object v6, p0, Laex;->g:Lafu;

    iget-object v6, v6, Lafu;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Laku$a;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Mediabryo$a;

    move-result-object v0

    check-cast v0, Laku$a;

    iput-wide v4, v0, Lcom/snapchat/android/model/Mediabryo$a;->mTimerValueOrDuration:D

    check-cast v0, Laku$a;

    sget-object v4, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v4, v0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    check-cast v0, Laku$a;

    iput-boolean v7, v0, Lcom/snapchat/android/model/Mediabryo$a;->mShouldEnableVisualFilters:Z

    check-cast v0, Laku$a;

    iput-object v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mOverlayBitmap:Landroid/graphics/Bitmap;

    check-cast v0, Laku$a;

    iput-object p2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mMediaExtras:Lajv;

    check-cast v0, Laku$a;

    iput-object v2, v0, Laku$a;->mFirstFrameBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Laex;->f:Landroid/content/Context;

    invoke-static {v1}, Lawf;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mWidth:I

    check-cast v0, Laku$a;

    iget-object v1, p0, Laex;->f:Landroid/content/Context;

    invoke-static {v1}, Lawf;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mHeight:I

    check-cast v0, Laku$a;

    iput-object v3, v0, Lcom/snapchat/android/model/Mediabryo$a;->mPreviewConfiguration:Lakh;

    check-cast v0, Laku$a;

    invoke-virtual {v0}, Laku$a;->c()Laku;

    move-result-object v2

    .line 283
    :cond_1
    return-object v2

    .line 245
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Laws;->a(Landroid/view/View;Ljava/util/List;)Landroid/graphics/Bitmap;

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
    .line 213
    iget-object v0, p0, Laex;->e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    return-object v0
.end method

.method public final a(Lafq;)V
    .locals 2
    .param p1    # Lafq;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 303
    iput-object p1, p0, Laex;->o:Lafq;

    .line 304
    iget-object v0, p0, Laex;->g:Lafu;

    new-instance v1, Laex$1;

    invoke-direct {v1, p0, p1}, Laex$1;-><init>(Laex;Lafq;)V

    iput-object v1, v0, Lafu;->e:Lafq;

    .line 329
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 141
    iput-object p1, p0, Laex;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 142
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

    .line 143
    iget-object v1, p0, Laex;->g:Lafu;

    iput-object v0, v1, Lafu;->c:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 9
    .param p2    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    iput-object p2, p0, Laex;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 87
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v4, p0, Laex;->f:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laex;->n:Landroid/widget/FrameLayout;

    .line 88
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 90
    const/16 v0, 0x10

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 91
    iget-object v0, p0, Laex;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v0, Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget-object v5, p0, Laex;->f:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/snapchat/android/ui/FitWidthViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laex;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    .line 95
    sget-object v0, Laex$4;->a:[I

    iget-object v5, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->i:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 104
    iget-object v0, p0, Laex;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    .line 108
    :goto_0
    sget-object v0, Laex$4;->b:[I

    iget-object v5, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->h:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_1

    move v0, v1

    .line 119
    :goto_1
    new-instance v5, Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v6, p0, Laex;->f:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/snapchat/android/ui/TextureVideoView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Laex;->m:Lcom/snapchat/android/ui/TextureVideoView;

    .line 120
    iget-object v5, p0, Laex;->g:Lafu;

    iget-object v6, p0, Laex;->m:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v5, v6, v0}, Lafu;->a(Lcom/snapchat/android/ui/TextureVideoView;Z)V

    .line 122
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

    .line 123
    iget-object v5, p0, Laex;->g:Lafu;

    iput-object v0, v5, Lafu;->c:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Laex;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget-object v5, p0, Laex;->m:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/FitWidthViewGroup;->addView(Landroid/view/View;)V

    .line 126
    iget-object v5, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->f:Ljava/lang/String;

    if-nez v5, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    iput-boolean v1, p0, Laex;->b:Z

    move-object v0, v3

    :goto_2
    iput-object v0, p0, Laex;->a:Landroid/widget/ImageView;

    .line 127
    iget-object v0, p0, Laex;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Laex;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget-object v5, p0, Laex;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/FitWidthViewGroup;->addView(Landroid/view/View;)V

    .line 130
    :cond_0
    iget-object v0, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v5, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->d:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->isMediaDocking()Z

    move-result v5

    if-eqz v5, :cond_3

    iput-boolean v2, p0, Laex;->c:Z

    new-instance v3, Lcom/snapchat/android/ui/FitWidthImageView;

    iget-object v5, p0, Laex;->f:Landroid/content/Context;

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

    new-instance v5, Lawv$a;

    invoke-direct {v5}, Lawv$a;-><init>()V

    iput-object v3, v5, Lawv$a;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Lawv$a;->a(Ljava/lang/String;)Lawv$a;

    move-result-object v0

    iput-boolean v1, v0, Lawv$a;->mRequireExactDimensions:Z

    invoke-virtual {v0}, Lawv$a;->a()Lawv;

    move-result-object v0

    iget-object v5, p0, Laex;->h:Lawn;

    new-array v6, v1, [Laww;

    iget-object v7, p0, Laex;->q:Laww;

    aput-object v7, v6, v2

    invoke-virtual {v5, v0, v6}, Lawn;->a(Lawv;[Laww;)V

    :goto_3
    iput-object v3, p0, Laex;->k:Landroid/widget/ImageView;

    .line 131
    iget-object v0, p0, Laex;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Laex;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget-object v2, p0, Laex;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/FitWidthViewGroup;->addView(Landroid/view/View;)V

    .line 135
    :cond_1
    iget-object v0, p0, Laex;->n:Landroid/widget/FrameLayout;

    iget-object v2, p0, Laex;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    return v1

    .line 97
    :pswitch_0
    iget-object v0, p0, Laex;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    goto/16 :goto_0

    .line 100
    :pswitch_1
    iget-object v0, p0, Laex;->l:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    goto/16 :goto_0

    :pswitch_2
    move v0, v1

    .line 111
    goto/16 :goto_1

    :pswitch_3
    move v0, v2

    .line 114
    goto/16 :goto_1

    .line 126
    :cond_2
    new-instance v0, Lcom/snapchat/android/ui/FitWidthImageView;

    iget-object v6, p0, Laex;->f:Landroid/content/Context;

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

    new-instance v6, Lawv$a;

    invoke-direct {v6}, Lawv$a;-><init>()V

    iput-object v0, v6, Lawv$a;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Lawv$a;->a(Ljava/lang/String;)Lawv$a;

    move-result-object v5

    iput-boolean v1, v5, Lawv$a;->mRequireExactDimensions:Z

    invoke-virtual {v5}, Lawv$a;->a()Lawv;

    move-result-object v5

    iput-boolean v2, p0, Laex;->b:Z

    iget-object v6, p0, Laex;->h:Lawn;

    new-array v7, v1, [Laww;

    iget-object v8, p0, Laex;->r:Laww;

    aput-object v8, v7, v2

    invoke-virtual {v6, v5, v7}, Lawn;->a(Lawv;[Laww;)V

    goto/16 :goto_2

    .line 130
    :cond_3
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    iput-boolean v1, p0, Laex;->c:Z

    goto :goto_3

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 108
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Laex;->h:Lawn;

    iget-object v1, p0, Laex;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lawn;->a(Landroid/widget/ImageView;)V

    .line 373
    iget-object v0, p0, Laex;->h:Lawn;

    iget-object v1, p0, Laex;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lawn;->a(Landroid/widget/ImageView;)V

    .line 374
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Laex;->n:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-object v0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Laex;->m:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final k()J
    .locals 6

    .prologue
    .line 338
    iget-object v2, p0, Laex;->g:Lafu;

    iget v0, v2, Lafu;->h:I

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, v2, Lafu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iget v3, v2, Lafu;->h:I

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-ltz v3, :cond_1

    const-wide/16 v0, 0x0

    :cond_1
    iget v3, v2, Lafu;->i:I

    iget v2, v2, Lafu;->h:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final m_()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Laex;->p:Z

    .line 224
    iget-object v0, p0, Laex;->g:Lafu;

    invoke-virtual {v0}, Lafu;->a()V

    .line 225
    return-void
.end method

.method public final n_()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Laex;->g:Lafu;

    invoke-virtual {v0}, Lafu;->b()V

    .line 230
    iget-object v0, p0, Laex;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Laex;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    :cond_0
    return-void
.end method
