.class public final Larr$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/animation/ObjectAnimator;

.field c:Landroid/widget/ImageView;

.field d:Landroid/animation/ObjectAnimator;

.field e:Landroid/animation/ObjectAnimator;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/animation/ObjectAnimator;

.field i:Landroid/animation/ObjectAnimator;

.field j:Landroid/widget/ImageView;

.field k:Landroid/animation/ObjectAnimator;

.field l:Landroid/animation/ObjectAnimator;

.field final m:Landroid/animation/AnimatorSet;

.field final n:Landroid/animation/AnimatorSet;

.field final o:Landroid/animation/AnimatorSet;

.field final p:Landroid/animation/AnimatorSet;

.field final q:Landroid/animation/AnimatorSet;

.field final r:Landroid/animation/AnimatorSet;

.field final s:Landroid/animation/AnimatorSet;

.field final t:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic u:Larr;

.field private v:Ljava/lang/Boolean;

.field private w:Ljava/lang/Boolean;

.field private x:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Larr;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    iput-object p1, p0, Larr$a;->u:Larr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Larr$a;->v:Ljava/lang/Boolean;

    .line 78
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Larr$a;->w:Ljava/lang/Boolean;

    .line 79
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Larr$a;->x:Ljava/lang/Boolean;

    .line 101
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Larr$a;->m:Landroid/animation/AnimatorSet;

    .line 102
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Larr$a;->n:Landroid/animation/AnimatorSet;

    .line 103
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Larr$a;->o:Landroid/animation/AnimatorSet;

    .line 104
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Larr$a;->p:Landroid/animation/AnimatorSet;

    .line 105
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Larr$a;->q:Landroid/animation/AnimatorSet;

    .line 106
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Larr$a;->r:Landroid/animation/AnimatorSet;

    .line 107
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Larr$a;->s:Landroid/animation/AnimatorSet;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Larr$a;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic a(Larr$a;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Larr$a;->x:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic a(Larr$a;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Larr$a;->x:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic b(Larr$a;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Larr$a;->v:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic c(Larr$a;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Larr$a;->w:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Larr$a;->u:Larr;

    iget-object v0, v0, Larr;->n:Larp;

    iget-object v0, v0, Larp;->c:Larq;

    iget-object v1, p0, Larr$a;->u:Larr;

    iget v1, v1, Larr;->m:I

    iget-object v0, v0, Larq;->b:[Z

    aget-boolean v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 283
    :cond_1
    :try_start_1
    iget-object v0, p0, Larr$a;->u:Larr;

    iget-object v0, v0, Larr;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larr$a;->u:Larr;

    iget-object v0, v0, Larr;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Larr$a;->u:Larr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Larr;->a(Z)V

    .line 288
    iget-object v0, p0, Larr$a;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 289
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Larr$a;->x:Ljava/lang/Boolean;

    .line 290
    iget-object v0, p0, Larr$a;->u:Larr;

    iget-object v0, v0, Larr;->a:Landroid/view/View;

    const v1, 0x7f0a0322

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Larr$a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Larr$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    iget-object v1, p0, Larr$a;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v1, "level"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Larr$a;->b:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Larr$a;->b:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Larr$a;->u:Larr;

    iget-object v0, v0, Larr;->a:Landroid/view/View;

    const v1, 0x7f0a0323

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Larr$a;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Larr$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    iget-object v1, p0, Larr$a;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v1, "level"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Larr$a;->d:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Larr$a;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v1, "level"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Larr$a;->e:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Larr$a;->e:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Larr$a;->u:Larr;

    iget-object v0, v0, Larr;->a:Landroid/view/View;

    const v1, 0x7f0a0324

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Larr$a;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Larr$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    iget-object v1, p0, Larr$a;->f:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Larr$a;->u:Larr;

    iget-object v1, v1, Larr;->a:Landroid/view/View;

    const v2, 0x7f0a0325

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Larr$a;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Larr$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ClipDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    iget-object v2, p0, Larr$a;->g:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v2, "level"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Larr$a;->h:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Larr$a;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v0, "level"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Larr$a;->i:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Larr$a;->i:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Larr$a;->u:Larr;

    iget-object v0, v0, Larr;->a:Landroid/view/View;

    const v1, 0x7f0a0326

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Larr$a;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Larr$a;->j:Landroid/widget/ImageView;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Larr$a;->j:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Larr$a;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Larr$a;->j:Landroid/widget/ImageView;

    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Larr$a;->k:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Larr$a;->k:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Larr$a;->j:Landroid/widget/ImageView;

    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    aput v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Larr$a;->l:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Larr$a;->l:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 291
    iget-object v0, p0, Larr$a;->m:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Larr$a;->l:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Larr$a;->n:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Larr$a;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Larr$a;->o:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Larr$a;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Larr$a;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Larr$a;->p:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Larr$a;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Larr$a;->q:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Larr$a;->i:Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Larr$a;->b:Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Larr$a;->r:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Larr$a;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Larr$a;->l:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Larr$a;->s:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Larr$a;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Larr$a;->n:Landroid/animation/AnimatorSet;

    new-instance v1, Larr$a$1;

    invoke-direct {v1, p0}, Larr$a$1;-><init>(Larr$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Larr$a;->o:Landroid/animation/AnimatorSet;

    new-instance v1, Larr$a$2;

    invoke-direct {v1, p0}, Larr$a$2;-><init>(Larr$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Larr$a;->q:Landroid/animation/AnimatorSet;

    new-instance v1, Larr$a$3;

    invoke-direct {v1, p0}, Larr$a$3;-><init>(Larr$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 293
    iget-object v0, p0, Larr$a;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 294
    iget-object v0, p0, Larr$a;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 296
    iget-object v0, p0, Larr$a;->u:Larr;

    iget-object v0, v0, Larr;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    new-instance v1, Lcom/snapchat/android/scan/SnapScan;

    invoke-direct {v1}, Lcom/snapchat/android/scan/SnapScan;-><init>()V

    .line 299
    invoke-static {v0}, Lcom/snapchat/android/scan/SnapScan;->a(Landroid/graphics/Bitmap;)Lcom/snapchat/android/scan/SnapScanResult;

    move-result-object v0

    .line 300
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Larr$a;->v:Ljava/lang/Boolean;

    .line 302
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->hasScannedData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Larr$a;->w:Ljava/lang/Boolean;

    .line 305
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SNAPCODE_MANUALLY_SCANNED_CAMERA_ROLL"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 307
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbcg;

    const-string v3, "ScanFromPhoneGalleryViewHolder"

    invoke-direct {v2, v3}, Lbcg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 308
    invoke-static {}, Laph;->a()Laph;

    move-result-object v1

    iget-object v2, p0, Larr$a;->u:Larr;

    iget-object v2, v2, Larr;->k:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->getSnapcodeVersion()I

    move-result v3

    invoke-virtual {v0}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->getSnapcodeMessage()[B

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Laph;->a(Landroid/content/Context;I[B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 290
    nop

    :array_0
    .array-data 4
        0x2710
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x2710
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2710
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x2710
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method
