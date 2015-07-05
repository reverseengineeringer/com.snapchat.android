.class public final Lma;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lma$b;,
        Lma$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/res/Resources;

.field final b:Lcom/squareup/otto/Bus;

.field c:Landroid/graphics/drawable/AnimationDrawable;

.field public d:Z

.field public e:Landroid/animation/AnimatorSet;

.field public f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lma$a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lma$a;",
            ">;"
        }
    .end annotation
.end field

.field h:Lma$a;
    .annotation build Lcgc;
    .end annotation
.end field

.field private final i:I

.field private final j:I

.field private k:Z

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(IILandroid/content/res/Resources;Lcom/squareup/otto/Bus;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lma;->k:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lma;->d:Z

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lma;->f:Ljava/util/Queue;

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lma;->g:Ljava/util/Map;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lma;->h:Lma$a;

    .line 67
    iput p1, p0, Lma;->i:I

    .line 68
    iput p2, p0, Lma;->j:I

    .line 69
    iput-object p3, p0, Lma;->a:Landroid/content/res/Resources;

    .line 70
    iput-object p4, p0, Lma;->b:Lcom/squareup/otto/Bus;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p2    # Landroid/view/View;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lma;-><init>(IILandroid/content/res/Resources;Lcom/squareup/otto/Bus;)V

    .line 78
    iput-object p2, p0, Lma;->l:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lma;->l:Landroid/view/View;

    new-instance v1, Lma$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lma$b;-><init>(Lma;B)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 81
    const v0, 0x7f0a025d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lma;->m:Landroid/view/View;

    .line 82
    const v0, 0x7f0a025f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lma;->n:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0a0260

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lma;->o:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0a025e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lma;->p:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f0a0261

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lma;->q:Landroid/widget/ImageView;

    .line 87
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lma;->a(I)V

    .line 88
    return-void
.end method

.method static synthetic a(Lma;Lma$a;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lma;->h:Lma$a;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lma;->h:Lma$a;

    :cond_0
    return-void
.end method

.method private b(Lma$a;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 275
    iget-object v0, p0, Lma;->e:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lma;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 279
    :cond_0
    iget v0, p0, Lma;->j:I

    .line 280
    iget-boolean v1, p1, Lma$a;->f:Z

    if-eqz v1, :cond_1

    .line 281
    iget v0, p0, Lma;->i:I

    .line 284
    :cond_1
    iget-object v1, p0, Lma;->l:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v8, [F

    neg-int v4, v0

    int-to-float v4, v4

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 285
    new-instance v2, Lma$1;

    invoke-direct {v2, p0}, Lma$1;-><init>(Lma;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 306
    iget-object v2, p0, Lma;->l:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v8, [F

    aput v5, v4, v6

    neg-int v0, v0

    int-to-float v0, v0

    aput v0, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 307
    iget-wide v2, p1, Lma$a;->i:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 308
    new-instance v2, Lma$2;

    invoke-direct {v2, p0}, Lma$2;-><init>(Lma;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lma;->e:Landroid/animation/AnimatorSet;

    .line 330
    iget-object v2, p0, Lma;->e:Landroid/animation/AnimatorSet;

    new-instance v3, Lma$3;

    invoke-direct {v3, p0, p1}, Lma$3;-><init>(Lma;Lma$a;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 351
    iget-object v2, p0, Lma;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 352
    iget-object v0, p0, Lma;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 353
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lma;->h:Lma$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lma;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lma;->b:Lcom/squareup/otto/Bus;

    new-instance v1, Lbel;

    sget-object v3, Lcom/snapchat/android/util/TitleBarManager$LockedState;->NOT_LOCKED:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    invoke-direct {v1, v3}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$LockedState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 221
    :cond_0
    iget-boolean v0, p0, Lma;->d:Z

    if-eqz v0, :cond_2

    .line 270
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    invoke-direct {p0}, Lma;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lma;->q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    :cond_3
    iget-object v0, p0, Lma;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lma;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma$a;

    .line 231
    iget-object v1, p0, Lma;->l:Landroid/view/View;

    iget v3, v0, Lma$a;->d:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 237
    iget-boolean v1, v0, Lma$a;->f:Z

    if-nez v1, :cond_8

    .line 238
    iget-object v1, p0, Lma;->a:Landroid/content/res/Resources;

    const v3, 0x7f09006d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 240
    :goto_2
    iget-object v3, p0, Lma;->l:Landroid/view/View;

    invoke-virtual {v3, v2, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 242
    iget v1, v0, Lma$a;->a:I

    if-nez v1, :cond_5

    .line 243
    iget-object v1, p0, Lma;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    :goto_3
    iget-object v1, v0, Lma$a;->b:Ljava/lang/CharSequence;

    if-nez v1, :cond_6

    .line 250
    iget-object v1, p0, Lma;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    :goto_4
    iget-object v1, v0, Lma$a;->c:Ljava/lang/CharSequence;

    if-nez v1, :cond_7

    .line 258
    iget-object v1, p0, Lma;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    :goto_5
    iget-object v1, p0, Lma;->m:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Lma;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    invoke-direct {p0, v0}, Lma;->b(Lma$a;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 228
    goto :goto_1

    .line 245
    :cond_5
    iget-object v1, p0, Lma;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lma;->p:Landroid/widget/ImageView;

    iget v3, v0, Lma$a;->a:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 252
    :cond_6
    iget-object v1, p0, Lma;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v1, p0, Lma;->n:Landroid/widget/TextView;

    iget-object v3, v0, Lma$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lma;->n:Landroid/widget/TextView;

    iget v3, v0, Lma$a;->e:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 260
    :cond_7
    iget-object v1, p0, Lma;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lma;->o:Landroid/widget/TextView;

    iget-object v3, v0, Lma$a;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p0, Lma;->o:Landroid/widget/TextView;

    iget v3, v0, Lma$a;->e:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_8
    move v1, v2

    goto :goto_2
.end method

.method protected final a(I)V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lma;->l:Landroid/view/View;

    iget-boolean v1, p0, Lma;->k:Z

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 373
    return-void

    .line 372
    :cond_0
    const/16 p1, 0x8

    goto :goto_0
.end method

.method public final a(Lbbg;)V
    .locals 13

    .prologue
    const v3, 0x7f080030

    const/4 v12, 0x0

    .line 91
    iget-boolean v0, p1, Lbbg;->showDancingGhost:Z

    if-eqz v0, :cond_1

    .line 92
    new-instance v1, Lma$a;

    iget-object v0, p1, Lbbg;->sourceId:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v12}, Lma$a;-><init>(Lma;Ljava/lang/String;B)V

    .line 93
    invoke-direct {p0}, Lma;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lma;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lma;->l:Landroid/view/View;

    iget-object v2, p0, Lma;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lma;->m:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lma;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lma;->q:Landroid/widget/ImageView;

    const v2, 0x7f020106

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lma;->q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lma;->c:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0, v1}, Lma;->b(Lma$a;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-boolean v0, p1, Lbbg;->useDefaultColors:Z

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lma;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 99
    iget-object v0, p0, Lma;->a:Landroid/content/res/Resources;

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 105
    :goto_1
    new-instance v0, Lma$a;

    iget v2, p1, Lbbg;->iconRes:I

    iget-object v3, p1, Lbbg;->primaryText:Ljava/lang/CharSequence;

    iget-object v4, p1, Lbbg;->secondaryText:Ljava/lang/CharSequence;

    iget-boolean v7, p1, Lbbg;->useShortNotification:Z

    iget-object v8, p1, Lbbg;->sourceId:Ljava/lang/String;

    iget-object v9, p1, Lbbg;->listener:Lbcc;

    iget-wide v10, p1, Lbbg;->duration:J

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Lma$a;-><init>(Lma;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IIZLjava/lang/String;Lbcc;JB)V

    .line 111
    iget-boolean v1, p1, Lbbg;->delayed:Z

    if-eqz v1, :cond_3

    .line 112
    iget-object v1, p0, Lma;->g:Ljava/util/Map;

    iget-object v2, v0, Lma$a;->g:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_2
    iget v5, p1, Lbbg;->backgroundColor:I

    .line 102
    iget v6, p1, Lbbg;->textColor:I

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {p0, v0}, Lma;->a(Lma$a;)V

    goto :goto_0
.end method

.method public final a(Lma$a;)V
    .locals 1
    .param p1    # Lma$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 123
    iget-boolean v0, p0, Lma;->d:Z

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lma;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0}, Lma;->a()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 376
    iput-boolean p1, p0, Lma;->k:Z

    .line 377
    iget-boolean v0, p0, Lma;->k:Z

    if-nez v0, :cond_0

    .line 378
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lma;->a(I)V

    .line 380
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 168
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lma;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 171
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma$a;

    iget-object v0, v0, Lma$a;->g:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v1, v2

    .line 174
    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lma;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lma;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 183
    :cond_2
    invoke-direct {p0}, Lma;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lma;->h:Lma$a;

    iget-object v0, v0, Lma$a;->g:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lma;->e:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lma;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    move v1, v2

    .line 190
    :cond_3
    return v1
.end method
