.class public final Lano;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/rendering/SnapMediaRenderer;


# static fields
.field protected static final e:Landroid/media/MediaPlayer$OnErrorListener;

.field private static f:Ljava/lang/String;


# instance fields
.field protected final a:Landroid/media/MediaPlayer$OnInfoListener;

.field protected final b:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected final c:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected final d:Landroid/media/MediaPlayer$OnErrorListener;

.field private final g:Landroid/content/Context;

.field private final h:Landroid/view/LayoutInflater;

.field private final i:Lcom/squareup/otto/Bus;

.field private final j:Lawt;

.field private final k:Lanp;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/view/View;

.field private n:Lcom/snapchat/android/ui/SnapVideoView;

.field private o:Landroid/widget/ImageView;

.field private p:Lcom/snapchat/android/ui/WideTextView;

.field private q:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

.field private r:Landroid/media/MediaPlayer;

.field private s:Z

.field private t:Z

.field private u:Laje;

.field private v:Lanq;

.field private w:Ljava/lang/String;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "VideoSnapRenderer"

    sput-object v0, Lano;->f:Ljava/lang/String;

    .line 498
    new-instance v0, Lano$6;

    invoke-direct {v0}, Lano$6;-><init>()V

    sput-object v0, Lano;->e:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 80
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    new-instance v4, Lawt;

    invoke-direct {v4}, Lawt;-><init>()V

    new-instance v5, Lanp;

    invoke-direct {v5, p1}, Lanp;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lano;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/squareup/otto/Bus;Lawt;Lanp;)V

    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/squareup/otto/Bus;Lawt;Lanp;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Lano$2;

    invoke-direct {v0, p0}, Lano$2;-><init>(Lano;)V

    iput-object v0, p0, Lano;->a:Landroid/media/MediaPlayer$OnInfoListener;

    .line 434
    new-instance v0, Lano$3;

    invoke-direct {v0, p0}, Lano$3;-><init>(Lano;)V

    iput-object v0, p0, Lano;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 461
    new-instance v0, Lano$4;

    invoke-direct {v0, p0}, Lano$4;-><init>(Lano;)V

    iput-object v0, p0, Lano;->c:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 474
    new-instance v0, Lano$5;

    invoke-direct {v0, p0}, Lano$5;-><init>(Lano;)V

    iput-object v0, p0, Lano;->d:Landroid/media/MediaPlayer$OnErrorListener;

    .line 87
    iput-object p1, p0, Lano;->g:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lano;->h:Landroid/view/LayoutInflater;

    .line 89
    iput-object p3, p0, Lano;->i:Lcom/squareup/otto/Bus;

    .line 90
    iput-object p4, p0, Lano;->j:Lawt;

    .line 91
    iput-object p5, p0, Lano;->k:Lanp;

    .line 92
    return-void
.end method

.method static synthetic a(Lano;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lano;->r:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lano;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lano;->f()V

    return-void
.end method

.method static synthetic a(Lano;Laje;Laue;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 54
    iget-object v0, p0, Lano;->p:Lcom/snapchat/android/ui/WideTextView;

    invoke-static {p1}, Lano;->a(Laje;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/WideTextView;->setLandscapeMode(Z)V

    const/4 v1, 0x0

    instance-of v0, p1, Lajr;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lajr;

    iget-object v0, v0, Lajr;->mCaptionParameters:Lbgz;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lbgz;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Laje;->S()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Laje;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v0, p0, Lano;->p:Lcom/snapchat/android/ui/WideTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/WideTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Laje;->T()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lano;->p:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/WideTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lano;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lano;->p:Lcom/snapchat/android/ui/WideTextView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v5, 0x3d59999a

    mul-float/2addr v2, v5

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/WideTextView;->setTextSize(F)V

    invoke-static {p1}, Lano;->a(Laje;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lano;->p:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/WideTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lano;->p:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/WideTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lano;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {p1}, Laje;->U()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    const/high16 v1, -0x3d4c0000    # -90.0f

    :goto_2
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v2, v1

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    sub-int v1, v7, v8

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Laje;->V()D

    move-result-wide v4

    iget-object v2, p0, Lano;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c(Landroid/content/Context;)I

    move-result v2

    neg-int v1, v1

    div-int/lit8 v6, v8, 0x2

    add-int/2addr v1, v6

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v1, v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v4, v10, v4

    sub-int v6, v8, v2

    int-to-double v10, v6

    mul-double/2addr v4, v10

    double-to-int v4, v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-int/lit8 v4, v7, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v4, v2

    int-to-float v2, v2

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, v1, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v9, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v9, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const-wide/16 v0, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Lano;->p:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v0, v9}, Lcom/snapchat/android/ui/WideTextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    :cond_3
    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lano;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-virtual {p2}, Laue;->b()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget-object v2, p0, Lano;->l:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    invoke-virtual {p2}, Laue;->a()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v3, v1, v2

    sub-float v3, v0, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    sub-float v1, v0, v3

    float-to-double v4, v1

    invoke-virtual {p1}, Laje;->V()D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v2, v3

    add-double/2addr v2, v4

    double-to-int v0, v2

    iget-object v2, p0, Lano;->l:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_8

    iget-object v0, p0, Lano;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Laje;->V()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    move v1, v0

    :goto_3
    iget-object v0, p0, Lano;->p:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/WideTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/lit8 v2, v1, 0x30

    iget-object v3, p0, Lano;->l:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_7

    iget-object v1, p0, Lano;->l:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42180000    # 38.0f

    iget-object v3, p0, Lano;->g:Landroid/content/Context;

    invoke-static {v2, v3}, Lavh;->a(FLandroid/content/Context;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_4
    invoke-virtual {p1}, Laje;->U()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Laje;->U()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapVideoView;->getTop()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_6
    iget-object v1, p0, Lano;->p:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/WideTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_7
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_8
    move v1, v0

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lano;Lanq;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-static {}, Lbgp;->a()V

    invoke-direct {p0}, Lano;->g()V

    invoke-virtual {p1}, Lanq;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lano;->f:Ljava/lang/String;

    const-string v1, "SNAP-VIEW: getVideoUri() return null, the video is not available locally"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lano;->q:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    sget-object v1, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    invoke-interface {v0, v1}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->a(Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;)V

    invoke-virtual {p1}, Lanq;->e()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lanq;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lano;->w:Ljava/lang/String;

    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    iget-object v3, p0, Lano;->w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/SnapVideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v0, p0, Lano;->u:Laje;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lanq;->e()V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    invoke-virtual {p1}, Lanq;->a()Laje;

    move-result-object v0

    invoke-virtual {v0}, Laje;->D()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lanq;->a()Laje;

    move-result-object v0

    invoke-virtual {v0}, Laje;->F()D

    move-result-wide v4

    invoke-virtual {v0}, Laje;->G()D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-int v0, v4

    mul-int/lit16 v0, v0, 0x3e8

    sget-object v3, Lano;->f:Ljava/lang/String;

    const-string v4, "SNAP-VIEW: Starting %s at %dms"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lanq;->a()Laje;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SnapVideoView;->seekTo(I)V

    :cond_3
    invoke-virtual {p1}, Lanq;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lano;->o:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lanq;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    iput-object p1, p0, Lano;->v:Lanq;

    goto :goto_0
.end method

.method static synthetic a(Lano;Laue;)V
    .locals 6

    .prologue
    .line 54
    iget-object v0, p0, Lano;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Laue;->c()D

    move-result-wide v2

    int-to-double v4, v0

    div-double v2, v4, v2

    double-to-int v1, v2

    iget-object v2, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setVideoAspect(II)V

    return-void
.end method

.method private static a(Laje;)Z
    .locals 4

    .prologue
    .line 382
    invoke-virtual {p0}, Laje;->U()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laje;->U()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 384
    :cond_0
    const/4 v0, 0x1

    .line 386
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lano;)Laje;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lano;->u:Laje;

    return-object v0
.end method

.method static synthetic c(Lano;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lano;->t:Z

    return v0
.end method

.method static synthetic d(Lano;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lano;->r:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic e(Lano;)Lcom/snapchat/android/rendering/SnapMediaRenderer$a;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lano;->q:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lano;->f:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lano;->u:Laje;

    instance-of v0, v0, Lajr;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d(Z)V

    .line 311
    iget-object v0, p0, Lano;->q:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    invoke-interface {v0}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->a()V

    .line 312
    return-void
.end method

.method static synthetic f(Lano;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lano;->x:Z

    return v0
.end method

.method static synthetic g(Lano;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lano;->w:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 507
    invoke-static {}, Lbgp;->a()V

    .line 510
    iget-object v0, p0, Lano;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 512
    iget-object v0, p0, Lano;->v:Lanq;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lano;->v:Lanq;

    invoke-virtual {v0}, Lanq;->e()V

    .line 514
    iput-object v1, p0, Lano;->v:Lanq;

    .line 516
    :cond_0
    return-void
.end method

.method static synthetic h(Lano;)Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lano;->x:Z

    return v0
.end method

.method static synthetic i(Lano;)Lcom/snapchat/android/ui/SnapVideoView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    return-object v0
.end method

.method static synthetic j(Lano;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lano;->s:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 194
    sget-object v0, Lano;->f:Ljava/lang/String;

    const-string v1, "SNAP-VIEW: Start %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lano;->u:Laje;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-static {}, Lbgp;->a()V

    .line 197
    iget-object v0, p0, Lano;->u:Laje;

    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Start called for null snap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iget-object v0, p0, Lano;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 205
    iget-object v0, p0, Lano;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->start()V

    .line 208
    iput-boolean v5, p0, Lano;->s:Z

    .line 209
    sget-boolean v0, Lasu;->SUPPORTS_MEDIA_INFO_VIDEO_RENDERING_START:Z

    if-nez v0, :cond_1

    .line 212
    invoke-direct {p0}, Lano;->f()V

    .line 214
    :cond_1
    return-void
.end method

.method public final a(Laje;ZLcom/snapchat/android/rendering/SnapMediaRenderer$a;)V
    .locals 5
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/rendering/SnapMediaRenderer$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    sget-object v2, Lano;->f:Ljava/lang/String;

    const-string v3, "SNAP-VIEW: Prepare %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Lbgp;->a()V

    .line 147
    iput-object p3, p0, Lano;->q:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    .line 148
    iput-object p1, p0, Lano;->u:Laje;

    .line 149
    iput-boolean p2, p0, Lano;->t:Z

    .line 152
    iput-boolean v1, p0, Lano;->x:Z

    .line 154
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lano;->q:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    sget-object v1, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->EXTERNAL_STORAGE_REQUIRED:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    invoke-interface {v0, v1}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->a(Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;)V

    .line 190
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 154
    goto :goto_0

    .line 158
    :cond_1
    sget-object v0, Laxa;->sExternalCacheDirectory:Ljava/io/File;

    if-nez v0, :cond_2

    .line 161
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/SnapchatApplication;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Laxa;->a(Ljava/io/File;Ljava/io/File;)V

    .line 168
    :cond_2
    iget-object v0, p0, Lano;->i:Lcom/squareup/otto/Bus;

    new-instance v2, Lbap;

    sget-object v3, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->CLOSE:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v2, v3}, Lbap;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lano;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 175
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    .line 178
    :cond_3
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    iget-object v2, p0, Lano;->c:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 179
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    iget-object v2, p0, Lano;->d:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 180
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    iget-object v2, p0, Lano;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 183
    iget-object v0, p0, Lano;->k:Lanp;

    new-instance v2, Lano$1;

    invoke-direct {v2, p0}, Lano$1;-><init>(Lano;)V

    new-instance v3, Lanp$1;

    invoke-direct {v3, v0, p1, v2}, Lanp$1;-><init>(Lanp;Laje;Lanp$a;)V

    iput-object v3, v0, Lanp;->b:Lanm;

    iget-object v2, v0, Lanp;->b:Lanm;

    iget-object v0, v0, Lanp;->a:Ljava/util/concurrent/ExecutorService;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Lanm;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 96
    iput-object p1, p0, Lano;->l:Landroid/view/ViewGroup;

    .line 97
    iget-object v0, p0, Lano;->h:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a8

    iget-object v2, p0, Lano;->l:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lano;->m:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lano;->m:Landroid/view/View;

    const v1, 0x7f0a03ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SnapVideoView;

    iput-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    .line 99
    iget-object v0, p0, Lano;->m:Landroid/view/View;

    const v1, 0x7f0a03ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lano;->o:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lano;->m:Landroid/view/View;

    const v1, 0x7f0a03af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/WideTextView;

    iput-object v0, p0, Lano;->p:Lcom/snapchat/android/ui/WideTextView;

    .line 101
    iget-object v0, p0, Lano;->l:Landroid/view/ViewGroup;

    iget-object v1, p0, Lano;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    .line 245
    sget-object v0, Lano;->f:Ljava/lang/String;

    const-string v1, "SNAP-VIEW: Toggle pause %s (%b)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lano;->u:Laje;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-static {}, Lbgp;->a()V

    .line 248
    if-eqz p1, :cond_1

    .line 249
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->pause()V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-boolean v0, p0, Lano;->s:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->start()V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 218
    sget-object v0, Lano;->f:Ljava/lang/String;

    const-string v1, "SNAP-VIEW: Stop %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lano;->u:Laje;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-static {}, Lbgp;->a()V

    .line 222
    iget-object v0, p0, Lano;->k:Lanp;

    iget-object v1, v0, Lanp;->b:Lanm;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lanp;->b:Lanm;

    invoke-virtual {v1, v5}, Lanm;->cancel(Z)Z

    iput-object v4, v0, Lanp;->b:Lanm;

    .line 223
    :cond_0
    iput-object v4, p0, Lano;->q:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    .line 224
    iput-object v4, p0, Lano;->u:Laje;

    .line 225
    iput-object v4, p0, Lano;->w:Ljava/lang/String;

    .line 226
    iput-boolean v5, p0, Lano;->s:Z

    .line 228
    invoke-direct {p0}, Lano;->g()V

    .line 232
    iget-object v0, p0, Lano;->r:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lano;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 234
    iput-object v4, p0, Lano;->r:Landroid/media/MediaPlayer;

    .line 236
    :cond_1
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/SnapVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 237
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/SnapVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 238
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    sget-object v1, Lano;->e:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 239
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->stopPlayback()V

    .line 240
    iget-object v0, p0, Lano;->o:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 117
    sget-object v0, Lano;->f:Ljava/lang/String;

    const-string v1, "SNAP-VIEW: Show %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lano;->u:Laje;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Lbgp;->a()V

    .line 120
    iget-object v0, p0, Lano;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lano;->p:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/WideTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lano;->p:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/WideTextView;->setVisibility(I)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lano;->p:Lcom/snapchat/android/ui/WideTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/WideTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final d()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 131
    sget-object v0, Lano;->f:Ljava/lang/String;

    const-string v1, "SNAP-VIEW: Hide %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lano;->u:Laje;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-static {}, Lbgp;->a()V

    .line 135
    iget-object v0, p0, Lano;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lano;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lano;->p:Lcom/snapchat/android/ui/WideTextView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/WideTextView;->setVisibility(I)V

    .line 139
    invoke-direct {p0}, Lano;->g()V

    .line 140
    return-void
.end method
