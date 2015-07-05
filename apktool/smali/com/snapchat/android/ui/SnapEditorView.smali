.class public Lcom/snapchat/android/ui/SnapEditorView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lapg$a;
.implements Laph;
.implements Laps;
.implements Lcom/snapchat/android/ui/VideoFilterView$d;


# annotations
.annotation build Lavl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/SnapEditorView$7;,
        Lcom/snapchat/android/ui/SnapEditorView$b;,
        Lcom/snapchat/android/ui/SnapEditorView$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Landroid/media/MediaPlayer;

.field private C:I

.field private D:Landroid/view/View$OnTouchListener;
    .annotation build Lcgc;
    .end annotation
.end field

.field private E:Lcom/snapchat/android/ui/SnapEditorView$b;

.field private F:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

.field private G:Lcom/snapchat/android/model/Mediabryo;

.field private H:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

.field public b:Lcom/snapchat/android/ui/SwipeImageView;

.field public c:Lapi;

.field private final d:Lcom/squareup/otto/Bus;

.field private final e:Lwy;

.field private final f:Lazo;

.field private final g:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

.field private final h:Lapd;

.field private i:Lcom/snapchat/android/ui/FitWidthViewGroup;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/snapchat/android/ui/CanvasViewBase;

.field private l:Landroid/widget/ImageView;

.field private m:Lcom/snapchat/android/ui/SwipeViewState;

.field private n:Lars;

.field private o:Lapg;

.field private p:Larc;

.field private q:Landroid/widget/FrameLayout;

.field private r:Lcom/snapchat/android/ui/SnapVideoView;

.field private s:Lcom/snapchat/android/ui/VideoFilterView;

.field private t:Lapj;

.field private u:Landroid/util/DisplayMetrics;

.field private v:Larw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Larw",
            "<",
            "Larn;",
            ">;"
        }
    .end annotation
.end field

.field private w:Loj;

.field private x:Landroid/view/View;

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 141
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    invoke-static {}, Lwy;->a()Lwy;

    move-result-object v4

    new-instance v5, Lazo;

    invoke-direct {v5}, Lazo;-><init>()V

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    move-result-object v6

    invoke-static {}, Lapd;->a()Lapd;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/ui/SnapEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/squareup/otto/Bus;Lwy;Lazo;Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;Lapd;)V

    .line 144
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/squareup/otto/Bus;Lwy;Lazo;Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;Lapd;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/squareup/otto/Bus;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lwy;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lazo;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p7    # Lapd;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->A:Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->D:Landroid/view/View$OnTouchListener;

    .line 126
    sget-object v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->NON_FAT_VANILLA_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->F:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    .line 807
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->H:Ljava/util/Set;

    .line 155
    iput-object p3, p0, Lcom/snapchat/android/ui/SnapEditorView;->d:Lcom/squareup/otto/Bus;

    .line 156
    iput-object p4, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lwy;

    .line 157
    iput-object p5, p0, Lcom/snapchat/android/ui/SnapEditorView;->f:Lazo;

    .line 158
    iput-object p6, p0, Lcom/snapchat/android/ui/SnapEditorView;->g:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 159
    iput-object p7, p0, Lcom/snapchat/android/ui/SnapEditorView;->h:Lapd;

    .line 160
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapEditorView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView;->B:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapEditorView;)Lcom/snapchat/android/ui/SwipeImageView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;ZZ)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    if-nez p1, :cond_0

    .line 304
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->z:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    move v0, v1

    .line 308
    :goto_0
    if-nez v0, :cond_3

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    .line 356
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 307
    goto :goto_0

    .line 312
    :cond_3
    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {p0, v3}, Lcom/snapchat/android/ui/SnapEditorView;->removeView(Landroid/view/View;)V

    .line 314
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView;->y:Landroid/graphics/Bitmap;

    .line 315
    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->y:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Laur;->c(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->z:Landroid/graphics/Bitmap;

    .line 317
    if-nez v0, :cond_4

    if-eqz p2, :cond_5

    .line 319
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/SwipeImageView;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 320
    if-eqz v0, :cond_7

    .line 321
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lars;

    invoke-virtual {v0}, Lars;->a()V

    .line 322
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lars;

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    iget-boolean v3, v3, Lcom/snapchat/android/model/Mediabryo;->mShouldEnableVisualFilters:Z

    iget-object v4, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    iget-boolean v4, v4, Lcom/snapchat/android/model/Mediabryo;->mShouldEnableSmartFilters:Z

    iget-object v5, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    iget-object v5, v5, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    invoke-virtual {v0, v2, v3, v4, v5}, Lars;->a(IZZLcom/snapchat/android/model/Mediabryo$SnapType;)V

    .line 335
    :cond_5
    :goto_2
    if-eqz p3, :cond_6

    .line 337
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->z:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Laur;->a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 338
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    .line 339
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v4, v3, v2

    .line 340
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v1

    .line 341
    new-instance v1, Lcom/snapchat/android/ui/SnapEditorView$1;

    invoke-direct {v1, p0, v3, v0}, Lcom/snapchat/android/ui/SnapEditorView$1;-><init>(Lcom/snapchat/android/ui/SnapEditorView;[Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 348
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    const/16 v0, 0x320

    invoke-virtual {v1, v0}, Laus;->startTransition(I)V

    .line 353
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mPreviewConfiguration:Lajl;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->setPreviewConfiguration(Lajl;)V

    goto :goto_1

    .line 325
    :cond_7
    if-eqz p2, :cond_8

    .line 326
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 327
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Larw;

    invoke-virtual {v0}, Larw;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larn;

    .line 328
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Larn;->a(ILandroid/content/Context;)V

    goto :goto_3

    .line 331
    :cond_8
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->a()V

    goto :goto_2
.end method

.method private static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V
    .locals 1

    .prologue
    .line 433
    if-eqz p2, :cond_0

    .line 434
    const v0, 0x7f0400c9

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    const v0, 0x7f0400ca

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/Mediabryo;I)V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->setVisibility(I)V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/SnapVideoView;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/SnapVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/SnapVideoView;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 481
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/SnapVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 482
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/SnapVideoView;

    new-instance v1, Lcom/snapchat/android/ui/SnapEditorView$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/SnapEditorView$2;-><init>(Lcom/snapchat/android/ui/SnapEditorView;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 498
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/SnapVideoView;

    new-instance v1, Lcom/snapchat/android/ui/SnapEditorView$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/snapchat/android/ui/SnapEditorView$3;-><init>(Lcom/snapchat/android/ui/SnapEditorView;ILcom/snapchat/android/model/Mediabryo;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 524
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->start()V

    .line 526
    :cond_1
    return-void
.end method

.method private a(Lcom/snapchat/android/model/Mediabryo;Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/Mediabryo;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 461
    invoke-virtual {p2, v2}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b(Z)V

    .line 462
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/FitWidthViewGroup;->removeAllViews()V

    .line 463
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V

    .line 465
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getSnapVideoView()Lcom/snapchat/android/ui/SnapVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/SnapVideoView;

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    .line 467
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/model/Mediabryo;I)V

    .line 468
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapEditorView;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapEditorView;Lcom/snapchat/android/model/Mediabryo;I)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/model/Mediabryo;I)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapEditorView;Lcom/snapchat/android/model/Mediabryo;Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/model/Mediabryo;Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/ui/SnapEditorView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/SnapEditorView;Landroid/media/MediaPlayer;)V
    .locals 5

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const-string v2, "SnapEditorView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting Aspect Ratio = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v2, v1, v0}, Lcom/snapchat/android/ui/SnapVideoView;->setVideoAspect(II)V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/ui/SnapEditorView;)Lcom/snapchat/android/ui/SnapVideoView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/SnapVideoView;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/SnapEditorView;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->A:Z

    return v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/SnapEditorView;)Lcom/snapchat/android/ui/caption/SnapCaptionView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/ui/SnapEditorView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->q:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/ui/SnapEditorView;)Lcom/snapchat/android/model/Mediabryo;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    return-object v0
.end method

.method private getFilteredPageCount()I
    .locals 3

    .prologue
    .line 897
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Larw;

    invoke-virtual {v0}, Larw;->b()I

    move-result v0

    .line 899
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Larw;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Larw;->a(I)Larn;

    move-result-object v1

    instance-of v1, v1, Lasf;

    if-eqz v1, :cond_0

    .line 900
    add-int/lit8 v0, v0, -0x1

    .line 902
    :cond_0
    return v0
.end method

.method static synthetic h(Lcom/snapchat/android/ui/SnapEditorView;)Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->g:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    return-object v0
.end method

.method private setPreviewConfiguration(Lajl;)V
    .locals 3
    .param p1    # Lajl;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 408
    if-nez p1, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget v1, p1, Lajl;->mGravity:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    .line 414
    iget v0, p1, Lajl;->mWidth:I

    .line 415
    iget v1, p1, Lajl;->mHeight:I

    .line 416
    if-ltz v0, :cond_3

    if-ltz v1, :cond_3

    .line 417
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/SnapVideoView;

    if-eqz v2, :cond_2

    .line 418
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setVideoAspect(II)V

    .line 421
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    if-eqz v2, :cond_3

    .line 422
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->setVideoAspect(II)V

    .line 426
    :cond_3
    iget-boolean v0, p1, Lajl;->mShouldHideSystemUi:Z

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e()V

    goto :goto_0
.end method

.method private setVolumeMediaPlayer(Z)V
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->B:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 554
    :cond_0
    if-eqz p1, :cond_1

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->B:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->B:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 557
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->B:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setVolumeVideoFilterView(Z)V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    if-eqz v0, :cond_1

    .line 539
    if-eqz p1, :cond_0

    .line 540
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->setVolume(F)V

    .line 549
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->setVolume(F)V

    goto :goto_0

    .line 547
    :cond_1
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->setVolumeMediaPlayer(Z)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/ui/SnapEditorView$a;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Lcom/snapchat/android/ui/SnapEditorView$a;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/SnapEditorView$a;-><init>(Lcom/snapchat/android/ui/SnapEditorView;)V

    .line 227
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lapi;

    iget-object v1, v1, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v1, v1, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    iput v1, v0, Lcom/snapchat/android/ui/SnapEditorView$a;->a:I

    .line 228
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lapi;

    iget-object v1, v1, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v1, v1, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    iput v1, v0, Lcom/snapchat/android/ui/SnapEditorView$a;->b:I

    .line 229
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    iput-object v1, v0, Lcom/snapchat/android/ui/SnapEditorView$a;->c:Lcom/snapchat/android/model/Mediabryo;

    .line 230
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->F:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/snapchat/android/ui/SnapEditorView$a;->d:I

    .line 231
    return-object v0
.end method

.method public final a(F)V
    .locals 3

    .prologue
    .line 747
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lapg;

    iget-object v1, v0, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    iput p1, v1, Lcom/snapchat/android/ui/SwipeViewState;->h:F

    iget-object v1, v0, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lapg;->a:Lapi;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lapi;->a(Z)Z

    :cond_0
    iget-object v0, v0, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    sget-object v1, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->NOT_MOVING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    iput-object v1, v0, Lcom/snapchat/android/ui/SwipeViewState;->i:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    .line 748
    return-void
.end method

.method public final a(IZ)V
    .locals 8

    .prologue
    .line 916
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Larw;

    invoke-virtual {v0, p1}, Larw;->a(I)Larn;

    move-result-object v0

    .line 917
    if-eqz v0, :cond_3

    .line 918
    invoke-virtual {v0}, Larn;->g()V

    .line 919
    instance-of v1, v0, Lasb;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    instance-of v1, v1, Laim;

    if-eqz v1, :cond_3

    .line 920
    check-cast v0, Lasb;

    .line 921
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    check-cast v1, Laim;

    .line 922
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getFilteredPageCount()I

    move-result v2

    .line 923
    iget-object v0, v0, Lasb;->b:Laiv;

    iget-object v3, v0, Laiv;->mFilterId:Ljava/lang/String;

    iget-object v4, v1, Laim;->mGeofilterSwipeMetaData:Lnc;

    iget-object v0, v4, Lnc;->mData:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnd;

    if-nez v0, :cond_0

    iget-object v4, v4, Lnc;->mData:Ljava/util/Map;

    new-instance v0, Lnd;

    invoke-direct {v0, v3}, Lnd;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    int-to-long v4, v2

    iput-wide v4, v0, Lnd;->filterIndexCount:J

    int-to-long v4, p1

    iput-wide v4, v0, Lnd;->filterIndexPos:J

    if-eqz p2, :cond_1

    iget-wide v4, v0, Lnd;->filterCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v0, Lnd;->filterCount:J

    :cond_1
    iget-object v3, v0, Lnd;->viewTimeStopwatch:Lcn;

    iget-boolean v3, v3, Lcn;->a:Z

    if-nez v3, :cond_2

    iget-object v0, v0, Lnd;->viewTimeStopwatch:Lcn;

    invoke-virtual {v0}, Lcn;->a()Lcn;

    .line 925
    :cond_2
    iget-object v0, v1, Laim;->mGeofilterSwipeMetaData:Lnc;

    int-to-long v4, p1

    iput-wide v4, v0, Lnc;->mGeofilterIndexPos:J

    int-to-long v2, v2

    iput-wide v2, v0, Lnc;->mGeofilterIndexCount:J

    .line 928
    :cond_3
    return-void
.end method

.method public final a(Lajm;)V
    .locals 6
    .param p1    # Lajm;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 371
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/FitWidthViewGroup;->removeAllViews()V

    .line 374
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lars;

    iget-boolean v3, p1, Lcom/snapchat/android/model/Mediabryo;->mShouldEnableVisualFilters:Z

    iget-boolean v4, p1, Lcom/snapchat/android/model/Mediabryo;->mShouldEnableSmartFilters:Z

    iget-object v5, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    invoke-virtual {v1, v0, v3, v4, v5}, Lars;->a(IZZLcom/snapchat/android/model/Mediabryo$SnapType;)V

    .line 380
    invoke-static {}, Lwy;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/snapchat/android/model/Mediabryo;->mShouldEnableVisualFilters:Z

    if-eqz v1, :cond_0

    move v1, v0

    .line 382
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-static {v0, v3, v1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V

    .line 385
    if-eqz v1, :cond_4

    .line 386
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getVideoFilterView()Lcom/snapchat/android/ui/VideoFilterView;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    .line 387
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/VideoFilterView;->setUnrecoverableErrorListener(Lcom/snapchat/android/ui/VideoFilterView$d;)V

    .line 388
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tried to play video with decoder, but VideoFilterView was null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v2

    .line 380
    goto :goto_0

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {p1}, Lajm;->q()[F

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/ui/VideoFilterView;->a(Landroid/net/Uri;[F)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->f:Lazo;

    new-instance v1, Lof;

    const-string v2, "Failed to open video!"

    invoke-direct {v1, v2}, Lof;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lazo;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->g:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/model/Mediabryo;Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V

    .line 394
    :goto_1
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 395
    new-instance v0, Lcom/snapchat/android/ui/FitWidthImageView;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/FitWidthImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->j:Landroid/widget/ImageView;

    .line 396
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->j:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 397
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FitWidthViewGroup;->addView(Landroid/view/View;)V

    .line 400
    :cond_2
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mPreviewConfiguration:Lajl;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->setPreviewConfiguration(Lajl;)V

    .line 401
    return-void

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/VideoFilterView;->setVisibility(I)V

    const-string v0, "SnapEditorView"

    const-string v1, "SnapPreviewFragment Editor playing video 1"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->t:Lapj;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->setSwipeVideoViewController(Lapj;)V

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VideoFilterView;->b()V

    goto :goto_1

    .line 390
    :cond_4
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getSnapVideoView()Lcom/snapchat/android/ui/SnapVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/SnapVideoView;

    .line 391
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/model/Mediabryo;I)V

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->d:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->h:Lapd;

    const v1, 0x7f04009c

    invoke-virtual {v0, v1}, Lapd;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->x:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->x:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->addView(Landroid/view/View;)V

    .line 178
    new-instance v0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;

    invoke-direct {v0, p1}, Lcom/snapchat/android/ui/caption/VanillaCaptionView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setInterface(Laps;)V

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->D:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setCaptionEditTextOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->x:Landroid/view/View;

    const v1, 0x7f0a038b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->q:Landroid/widget/FrameLayout;

    .line 182
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 183
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->u:Landroid/util/DisplayMetrics;

    .line 187
    new-instance v0, Lcom/snapchat/android/ui/SwipeViewState;

    invoke-direct {v0}, Lcom/snapchat/android/ui/SwipeViewState;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->m:Lcom/snapchat/android/ui/SwipeViewState;

    .line 189
    new-instance v0, Larw;

    invoke-direct {v0}, Larw;-><init>()V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->setFilterPageStore(Larw;)V

    .line 190
    new-instance v0, Lapi;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Larw;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->m:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-direct {v0, v1, v2}, Lapi;-><init>(Larv;Lcom/snapchat/android/ui/SwipeViewState;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->setSwipePageController(Lapi;)V

    .line 192
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->x:Landroid/view/View;

    const v1, 0x7f0a038a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SwipeImageView;

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->removeAllViews()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/snapchat/android/ui/SwipeImageView;->c:Landroid/graphics/Bitmap;

    iput-boolean v3, v0, Lcom/snapchat/android/ui/SwipeImageView;->d:Z

    iput-boolean v3, v0, Lcom/snapchat/android/ui/SwipeImageView;->f:Z

    iput-object v1, v0, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/widget/FrameLayout;

    iget-object v1, v0, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->addView(Landroid/view/View;)V

    .line 194
    new-instance v0, Lapg;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lapi;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->m:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-direct {v0, v1, v2, v3}, Lapg;-><init>(Lapi;Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/ui/SwipeViewState;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lapg;

    .line 195
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lapg;

    invoke-virtual {v0, p0}, Lapg;->a(Lapg$a;)V

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Larw;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->setFilterPageProvider(Larv;)V

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->m:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->setSwipeState(Lcom/snapchat/android/ui/SwipeViewState;)V

    .line 199
    new-instance v0, Lars;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Larw;

    invoke-direct {v0, p1, v1, v2}, Lars;-><init>(Landroid/content/Context;Lcom/snapchat/android/ui/SwipeImageView;Larw;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lars;

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lapg;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lars;

    invoke-virtual {v0, v1}, Lapg;->a(Lapg$a;)V

    .line 201
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->d:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lars;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 203
    new-instance v0, Lapj;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Larw;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->m:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-direct {v0, v1, v2}, Lapj;-><init>(Larv;Lcom/snapchat/android/ui/SwipeViewState;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->t:Lapj;

    .line 204
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lapg;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->t:Lapj;

    invoke-virtual {v0, v1}, Lapg;->a(Lapg$a;)V

    .line 206
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->x:Landroid/view/View;

    const v1, 0x7f0a0389

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FitWidthViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/snapchat/android/ui/FitWidthViewGroup;

    .line 207
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/FitWidthViewGroup;->removeAllViews()V

    .line 210
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->l:Landroid/widget/ImageView;

    .line 211
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->addView(Landroid/view/View;)V

    .line 214
    new-instance v0, Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-direct {v0, p1}, Lcom/snapchat/android/ui/LegacyCanvasView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/CanvasViewBase;

    .line 215
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->addView(Landroid/view/View;)V

    .line 217
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->C:I

    .line 218
    new-instance v0, Larc;

    iget v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->C:I

    new-instance v2, Larf;

    invoke-direct {v2}, Larf;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Larc;-><init>(ILaph;Larf;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->p:Larc;

    .line 219
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->getCurrentPage()Larn;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SwipeImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 773
    :goto_1
    return-void

    .line 764
    :cond_0
    invoke-virtual {v0, p1}, Larn;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 768
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Z)V

    goto :goto_1

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method public final a(Lcom/snapchat/android/ui/SnapEditorView$a;)V
    .locals 3

    .prologue
    .line 235
    if-nez p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/ui/SnapEditorView$a;->c:Lcom/snapchat/android/model/Mediabryo;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->setMediabryo(Lcom/snapchat/android/model/Mediabryo;)V

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lapi;

    iget v1, p1, Lcom/snapchat/android/ui/SnapEditorView$a;->a:I

    iget-object v2, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iput v1, v2, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    iget-object v0, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iput v1, v0, Lcom/snapchat/android/ui/SwipeViewState;->d:I

    .line 240
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lapi;

    iget v1, p1, Lcom/snapchat/android/ui/SnapEditorView$a;->b:I

    iget-object v2, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iput v1, v2, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    iget-object v0, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iput v1, v0, Lcom/snapchat/android/ui/SwipeViewState;->b:I

    .line 241
    invoke-static {}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->values()[Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    move-result-object v0

    iget v1, p1, Lcom/snapchat/android/ui/SnapEditorView$a;->d:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->F:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    .line 242
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->F:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    sget-object v1, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->NON_FAT_VANILLA_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    if-eq v0, v1, :cond_0

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Z)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/ui/SwipeImageView;)V
    .locals 0

    .prologue
    .line 871
    return-void
.end method

.method public final a(Lcom/snapchat/android/ui/SwipeImageView;Z)V
    .locals 4

    .prologue
    .line 939
    if-eqz p2, :cond_2

    .line 940
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->w:Loj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->m:Lcom/snapchat/android/ui/SwipeViewState;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/SwipeViewState;->l:Z

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Larw;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lapi;

    iget-object v2, v2, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v2, v2, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    invoke-virtual {v1, v2}, Larw;->a(I)Larn;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Larw;

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lapi;

    iget-object v3, v3, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v3, v3, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    invoke-virtual {v2, v3}, Larw;->a(I)Larn;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->w:Loj;

    if-eqz v0, :cond_3

    iget v0, v3, Loj;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Loj;->c:I

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v3, Loj;->e:Loi;

    invoke-virtual {v3, v1, v0}, Loj;->a(Larn;Loi;)V

    :cond_0
    if-eqz v2, :cond_1

    iget-object v0, v3, Loj;->f:Loi;

    invoke-virtual {v3, v2, v0}, Loj;->a(Larn;Loi;)V

    .line 941
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->b(Z)V

    .line 943
    :cond_2
    return-void

    .line 940
    :cond_3
    iget v0, v3, Loj;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Loj;->b:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 726
    new-instance v0, Lcom/snapchat/android/ui/SnapEditorView$5;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/snapchat/android/ui/SnapEditorView$5;-><init>(Lcom/snapchat/android/ui/SnapEditorView;Ljava/lang/String;Landroid/content/Context;)V

    .line 733
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->y:Landroid/graphics/Bitmap;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/PhotoEffectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 734
    return-void
.end method

.method public final a(Z)V
    .locals 6

    .prologue
    .line 644
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a()Landroid/os/Bundle;

    move-result-object v2

    .line 646
    iget-object v5, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    .line 648
    if-eqz p1, :cond_0

    .line 649
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->d:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 650
    invoke-static {}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->values()[Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->F:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->values()[Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v1, v3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->F:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->F:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lapr$1;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "[%s] Caption Type is not valid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionView;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    .line 654
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->D:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setCaptionEditTextOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 656
    if-eqz p1, :cond_1

    .line 657
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->j()V

    .line 659
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mPreviewConfiguration:Lajl;

    .line 660
    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lajl;->mShouldHideSystemUi:Z

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e()V

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->d:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 666
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setInterface(Laps;)V

    .line 667
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v0, Lcom/snapchat/android/ui/SnapEditorView$4;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/SnapEditorView$4;-><init>(Lcom/snapchat/android/ui/SnapEditorView;Landroid/os/Bundle;ZLandroid/view/ViewTreeObserver;Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 668
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 669
    return-void

    .line 653
    :pswitch_1
    new-instance v0, Lcom/snapchat/android/ui/caption/FatCaptionView;

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(ZF)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 751
    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lapg;

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->u:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, v3, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    iput p2, v0, Lcom/snapchat/android/ui/SwipeViewState;->g:F

    iget-object v0, v3, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v3, Lapg;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapg$a;

    invoke-interface {v0}, Lapg$a;->q()V

    goto :goto_0

    :cond_0
    iget-object v0, v3, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->d()V

    iget-object v0, v3, Lapg;->a:Lapi;

    iget-object v4, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iput-boolean p1, v4, Lcom/snapchat/android/ui/SwipeViewState;->m:Z

    iget-object v4, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget-boolean v4, v4, Lcom/snapchat/android/ui/SwipeViewState;->l:Z

    if-eqz v4, :cond_2

    if-nez p1, :cond_2

    iget-object v4, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iput v2, v4, Lcom/snapchat/android/ui/SwipeViewState;->d:I

    iget-object v0, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iput v2, v0, Lcom/snapchat/android/ui/SwipeViewState;->b:I

    :goto_1
    iget-object v4, v3, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v0, v3, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput v0, v4, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    :cond_1
    iget-object v0, v3, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    sget-object v2, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->SWIPING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    iput-object v2, v0, Lcom/snapchat/android/ui/SwipeViewState;->i:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    iget-object v0, v3, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->b()V

    iget-object v0, v3, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v0, Lcom/snapchat/android/ui/SwipeViewState;->n:F

    iget-object v0, v3, Lapg;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    invoke-virtual {v3, v1}, Lapg;->a(I)V

    .line 752
    return-void

    .line 751
    :cond_2
    if-eqz p1, :cond_3

    iget-object v4, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v4, v4, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    iget-object v5, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v5}, Lcom/snapchat/android/ui/SwipeViewState;->a()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lapi;->a(IZ)I

    move-result v4

    iget-object v0, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iput v4, v0, Lcom/snapchat/android/ui/SwipeViewState;->d:I

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v4, v4, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    iget-object v5, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v5}, Lcom/snapchat/android/ui/SwipeViewState;->a()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lapi;->a(IZ)I

    move-result v4

    iget-object v0, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iput v4, v0, Lcom/snapchat/android/ui/SwipeViewState;->b:I

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public final b(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 604
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->destroyDrawingCache()V

    .line 606
    invoke-static {}, Lbgp;->a()V

    .line 608
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->z:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v1

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->j:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v4, v1, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v4, v4, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    if-nez v4, :cond_0

    iget-object v1, v1, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v1, v1, Lcom/snapchat/android/ui/SwipeViewState;->f:I

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    :cond_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    const v4, 0x7f0a0001

    invoke-virtual {v1, v4}, Lcom/snapchat/android/ui/SwipeImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    .line 625
    :cond_1
    :goto_2
    return-object v0

    :cond_2
    move v1, v2

    .line 608
    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 617
    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/snapchat/android/ui/SwipeImageView;->setVisibilityOfPreviewOnlyContent(I)V

    .line 618
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getHeight()I

    move-result v4

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Lcom/snapchat/android/ui/SnapEditorView;->j:Landroid/widget/ImageView;

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    aput-object v6, v5, v3

    const/4 v3, 0x2

    iget-object v6, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    aput-object v6, v5, v3

    invoke-static {v1, v4, v5}, Latf;->a(II[Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 620
    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v3, v2}, Lcom/snapchat/android/ui/SwipeImageView;->setVisibilityOfPreviewOnlyContent(I)V

    .line 622
    if-eqz v1, :cond_1

    .line 625
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/Mediabryo;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v1, v0}, Laur;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->d:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->d:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lars;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lars;

    invoke-virtual {v0}, Lars;->b()V

    .line 274
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Larw;

    invoke-virtual {v0}, Larw;->d()V

    .line 275
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->a()V

    .line 276
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Mediabryo;->l()V

    .line 277
    iput-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    .line 279
    iput-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->y:Landroid/graphics/Bitmap;

    .line 280
    iput-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->z:Landroid/graphics/Bitmap;

    .line 281
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->h:Lapd;

    const v1, 0x7f04009c

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->x:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lapd;->a(ILandroid/view/View;)V

    .line 282
    iput-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->x:Landroid/view/View;

    .line 283
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lapi;

    iget-object v0, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v0, v0, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->a(IZ)V

    .line 912
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lapi;

    iget-object v0, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v0, v0, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    invoke-virtual {p0, v0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->a(IZ)V

    .line 913
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VideoFilterView;->getFilterRenderingTask()Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    const-string v0, "SnapEditorView"

    const-string v1, "Stopping playback!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VideoFilterView;->a()V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/SnapVideoView;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->stopPlayback()V

    .line 582
    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lapi;

    iget-object v1, v0, Lapi;->a:Larv;

    iget-object v0, v0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v0, v0, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    invoke-interface {v1, v0}, Larv;->b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->UNFILTERED:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 5

    .prologue
    .line 755
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lapg;

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->u:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, v1, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    sget-object v3, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->AUTO_SCROLLING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    iput-object v3, v0, Lcom/snapchat/android/ui/SwipeViewState;->i:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    iget-object v0, v1, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    iget v3, v0, Lcom/snapchat/android/ui/SwipeViewState;->g:F

    iget v0, v0, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v1, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    int-to-float v3, v2

    const v4, -0x42b33333    # -0.05f

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/snapchat/android/ui/SwipeViewState;->g:F

    :goto_1
    iget-object v0, v1, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    const v3, 0x3e4ccccd    # 0.2f

    iput v3, v0, Lcom/snapchat/android/ui/SwipeViewState;->n:F

    iget-object v0, v1, Lapg;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    invoke-virtual {v1, v2}, Lapg;->a(I)V

    .line 756
    return-void

    .line 755
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lapg;->c:Lcom/snapchat/android/ui/SwipeViewState;

    int-to-float v3, v2

    const v4, 0x3f866666    # 1.05f

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/snapchat/android/ui/SwipeViewState;->g:F

    goto :goto_1
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->g()Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 6

    .prologue
    .line 882
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Larw;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lapi;

    iget-object v1, v1, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v1, v1, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    invoke-virtual {v0, v1}, Larw;->a(I)Larn;

    move-result-object v1

    .line 883
    if-eqz v1, :cond_0

    .line 884
    invoke-virtual {v1}, Larn;->h()V

    .line 885
    instance-of v0, v1, Lasb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    instance-of v0, v0, Laim;

    if-eqz v0, :cond_0

    .line 886
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getFilteredPageCount()I

    move-result v2

    .line 887
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    check-cast v0, Laim;

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lapi;

    iget-object v3, v3, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v3, v3, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    check-cast v1, Lasb;

    iget-object v1, v1, Lasb;->b:Laiv;

    iget-object v1, v1, Laiv;->mFilterId:Ljava/lang/String;

    iget-object v0, v0, Laim;->mGeofilterSwipeMetaData:Lnc;

    iget-object v0, v0, Lnc;->mData:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnd;

    if-nez v0, :cond_1

    sget-object v0, Lnc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Item for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    int-to-long v4, v2

    iput-wide v4, v0, Lnd;->filterIndexCount:J

    int-to-long v2, v3

    iput-wide v2, v0, Lnd;->filterIndexPos:J

    invoke-virtual {v0}, Lnd;->a()V

    goto :goto_0
.end method

.method public getCanvasView()Lcom/snapchat/android/ui/CanvasViewBase;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/CanvasViewBase;

    return-object v0
.end method

.method public getCaptionAnalyticsDetails()Lapo;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getCaptionAnalyticsDetails()Lapo;

    move-result-object v0

    return-object v0
.end method

.method public getCaptionStyleDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    .line 717
    :goto_0
    return-object v0

    .line 709
    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/SnapEditorView$7;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->F:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 717
    const-string v0, "Index out of bounds D:"

    goto :goto_0

    .line 711
    :pswitch_0
    const-string v0, "1"

    goto :goto_0

    .line 713
    :pswitch_1
    const-string v0, "2"

    goto :goto_0

    .line 715
    :pswitch_2
    const-string v0, "3"

    goto :goto_0

    .line 709
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    return-object v0
.end method

.method public getPreviewCloseButtonBottom()I
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->E:Lcom/snapchat/android/ui/SnapEditorView$b;

    invoke-interface {v0}, Lcom/snapchat/android/ui/SnapEditorView$b;->o()I

    move-result v0

    return v0
.end method

.method public getShaderFilter()Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
    .locals 6

    .prologue
    .line 636
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->t:Lapj;

    iget v1, v0, Lapj;->d:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    iget-object v0, v0, Lapj;->b:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lapj;->c:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    goto :goto_0
.end method

.method protected getSnapVideoView()Lcom/snapchat/android/ui/SnapVideoView;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 367
    const v0, 0x7f0a0414

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SnapVideoView;

    return-object v0
.end method

.method public getSwipeFilterType()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeImageView;->getPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    return-object v0
.end method

.method protected getVideoFilterView()Lcom/snapchat/android/ui/VideoFilterView;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 361
    const v0, 0x7f0a0413

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/VideoFilterView;

    return-object v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 960
    new-instance v0, Lcom/snapchat/android/ui/SnapEditorView$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/SnapEditorView$6;-><init>(Lcom/snapchat/android/ui/SnapEditorView;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 966
    return-void
.end method

.method public onEnableFiltersEvent(Lbbi;)V
    .locals 5
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 838
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->m:Lcom/snapchat/android/ui/SwipeViewState;

    iput v1, v0, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    .line 839
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->m:Lcom/snapchat/android/ui/SwipeViewState;

    iput v1, v0, Lcom/snapchat/android/ui/SwipeViewState;->d:I

    .line 840
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->m:Lcom/snapchat/android/ui/SwipeViewState;

    iput v1, v0, Lcom/snapchat/android/ui/SwipeViewState;->b:I

    .line 841
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->m:Lcom/snapchat/android/ui/SwipeViewState;

    iput v1, v0, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    .line 842
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lars;

    invoke-virtual {v0}, Lars;->a()V

    .line 843
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lars;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Mediabryo;->h()I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    iget-boolean v2, v2, Lcom/snapchat/android/model/Mediabryo;->mShouldEnableVisualFilters:Z

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    iget-boolean v3, v3, Lcom/snapchat/android/model/Mediabryo;->mShouldEnableSmartFilters:Z

    iget-object v4, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    iget-object v4, v4, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lars;->a(IZZLcom/snapchat/android/model/Mediabryo$SnapType;)V

    .line 848
    return-void
.end method

.method public onHelloWorldEvent(Lbbw;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const v2, 0x7f0a0001

    .line 856
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SwipeImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 857
    if-nez v0, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 859
    new-instance v1, Lcom/snapchat/android/ui/KarelView;

    invoke-direct {v1, v0}, Lcom/snapchat/android/ui/KarelView;-><init>(Landroid/content/Context;)V

    .line 860
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 861
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v2, v1}, Lcom/snapchat/android/ui/SwipeImageView;->addView(Landroid/view/View;)V

    .line 862
    const v1, 0x7f0c027d

    invoke-static {v1, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 866
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SwipeImageView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 778
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->E:Lcom/snapchat/android/ui/SnapEditorView$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->E:Lcom/snapchat/android/ui/SnapEditorView$b;

    invoke-interface {v0}, Lcom/snapchat/android/ui/SnapEditorView$b;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 804
    :cond_0
    :goto_0
    return v1

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->E:Lcom/snapchat/android/ui/SnapEditorView$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->E:Lcom/snapchat/android/ui/SnapEditorView$b;

    invoke-interface {v0}, Lcom/snapchat/android/ui/SnapEditorView$b;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 784
    goto :goto_0

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getDrawingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 789
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/CanvasViewBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 794
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->H:Ljava/util/Set;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eq v0, v1, :cond_4

    if-ne v0, v10, :cond_5

    :cond_4
    const-string v0, "SnapEditorView"

    const-string v3, "Remove pointerId %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->H:Ljava/util/Set;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_5
    move v0, v1

    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getSwipeFilterType()Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->TURN_ON_FILTERS_PAGE:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-eq v0, v3, :cond_8

    .line 795
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 794
    :cond_6
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "SnapEditorView"

    const-string v3, "Add pointerId %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->H:Ljava/util/Set;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_1

    .line 800
    :cond_8
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 801
    iget-object v4, p0, Lcom/snapchat/android/ui/SnapEditorView;->p:Larc;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-le v0, v1, :cond_9

    if-eqz v5, :cond_0

    const/4 v0, 0x5

    if-eq v5, v0, :cond_0

    if-eq v5, v9, :cond_0

    :cond_9
    if-nez v5, :cond_c

    move v0, v1

    :goto_2
    iget-object v3, v4, Larc;->c:Larf;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    iput v7, v3, Larf;->e:I

    iget v7, v3, Larf;->e:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iput v7, v3, Larf;->c:F

    iget v7, v3, Larf;->e:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v3, Larf;->f:I

    iget-object v7, v3, Larf;->b:[I

    aget v7, v7, v1

    if-eq v7, v8, :cond_a

    iget-object v7, v3, Larf;->b:[I

    aget v7, v7, v1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    if-eq v7, v8, :cond_a

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iput v7, v3, Larf;->d:F

    :cond_a
    const/4 v3, 0x0

    if-nez v0, :cond_b

    const/4 v7, 0x5

    if-ne v5, v7, :cond_e

    :cond_b
    if-eqz v0, :cond_d

    :goto_3
    iget-object v0, v4, Larc;->a:Laqy;

    iget-object v3, v4, Larc;->d:Laph;

    iget-object v5, v4, Larc;->c:Larf;

    invoke-interface {v0, v3, v5, v2}, Laqy;->a(Laph;Larf;I)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_0

    iget-object v2, v4, Larc;->e:Lard;

    sget-object v3, Lard$1;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_5
    iput-object v0, v4, Larc;->a:Laqy;

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto :goto_2

    :cond_d
    move v2, v1

    goto :goto_3

    :cond_e
    if-ne v5, v9, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iget-object v2, v4, Larc;->a:Laqy;

    iget-object v3, v4, Larc;->d:Laph;

    iget-object v5, v4, Larc;->c:Larf;

    iget v6, v4, Larc;->b:I

    invoke-interface {v2, v3, v5, v0, v6}, Laqy;->a(Laph;Larf;II)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    move-result-object v0

    goto :goto_4

    :cond_f
    if-eq v5, v1, :cond_10

    const/4 v0, 0x6

    if-eq v5, v0, :cond_10

    if-ne v5, v10, :cond_13

    :cond_10
    iget-object v0, v4, Larc;->c:Larf;

    if-ltz v6, :cond_11

    if-lt v6, v9, :cond_12

    :cond_11
    :goto_6
    iget-object v0, v4, Larc;->a:Laqy;

    iget-object v2, v4, Larc;->d:Laph;

    iget-object v3, v4, Larc;->c:Larf;

    invoke-interface {v0, v2, v3, p1}, Laqy;->a(Laph;Larf;Landroid/view/MotionEvent;)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    move-result-object v0

    goto :goto_4

    :cond_12
    iget-object v0, v0, Larf;->b:[I

    aput v8, v0, v6

    goto :goto_6

    :pswitch_0
    iget-object v0, v2, Lard;->c:Laqy;

    goto :goto_5

    :pswitch_1
    iget-object v0, v2, Lard;->b:Laqy;

    goto :goto_5

    :pswitch_2
    iget-object v0, v2, Lard;->d:Laqy;

    goto :goto_5

    :pswitch_3
    iget-object v0, v2, Lard;->e:Laqy;

    goto :goto_5

    :cond_13
    move-object v0, v3

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final q()V
    .locals 0

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->g()V

    .line 876
    return-void
.end method

.method public setAudible(Z)V
    .locals 1

    .prologue
    .line 529
    iput-boolean p1, p0, Lcom/snapchat/android/ui/SnapEditorView;->A:Z

    .line 530
    invoke-static {}, Lwy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->setVolumeVideoFilterView(Z)V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->setVolumeMediaPlayer(Z)V

    goto :goto_0
.end method

.method public setCaptionEditTextOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnTouchListener;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 973
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setCaptionEditTextOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 974
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView;->D:Landroid/view/View$OnTouchListener;

    .line 975
    return-void
.end method

.method public setCaptionText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setText(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method protected setFilterPageStore(Larw;)V
    .locals 0
    .param p1    # Larw;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Larw",
            "<",
            "Larn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Larw;

    .line 165
    return-void
.end method

.method public setInterface(Lcom/snapchat/android/ui/SnapEditorView$b;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView;->E:Lcom/snapchat/android/ui/SnapEditorView$b;

    .line 260
    return-void
.end method

.method public setMediabryo(Lcom/snapchat/android/model/Mediabryo;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 291
    :goto_0
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView;->G:Lcom/snapchat/android/model/Mediabryo;

    .line 293
    invoke-virtual {p1}, Lcom/snapchat/android/model/Mediabryo;->h()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/graphics/Bitmap;ZZ)V

    .line 296
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 289
    goto :goto_0
.end method

.method public setSnapPreviewRotationListener(Lcom/snapchat/android/ui/SwipeImageView$a;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SwipeImageView;->setSnapPreviewRotationListener(Lcom/snapchat/android/ui/SwipeImageView$a;)V

    .line 223
    return-void
.end method

.method public setSwipeImageViewAnalytics(Loj;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView;->w:Loj;

    .line 268
    return-void
.end method

.method public setSwipeImageViewOnScrollListener(Lapg$a;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lapg;

    invoke-virtual {v0, p1}, Lapg;->a(Lapg$a;)V

    .line 264
    return-void
.end method

.method protected setSwipePageController(Lapi;)V
    .locals 0
    .param p1    # Lapi;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 169
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lapi;

    .line 170
    return-void
.end method
