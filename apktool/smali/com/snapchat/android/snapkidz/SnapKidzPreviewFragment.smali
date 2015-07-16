.class public Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/SnapEditorView$b;
.implements Lcom/snapchat/android/ui/SwipeImageView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;
    }
.end annotation


# instance fields
.field private a:Lcom/snapchat/android/ui/SnapEditorView;

.field private b:Lcom/snapchat/android/ui/CanvasViewBase;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:Z

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/ImageButton;

.field private j:Z

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/widget/ImageButton;

.field private m:I

.field private n:Lbej;

.field private o:Landroid/view/View;

.field private p:Lcom/snapchat/android/ui/SnapEditorView$a;

.field private q:Landroid/os/Handler;

.field private r:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;

.field private s:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->e:Z

    .line 63
    iput-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->f:Z

    .line 68
    iput-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->j:Z

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->q:Landroid/os/Handler;

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->s:J

    .line 473
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->t()V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->k:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getDrawingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->h:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    iget-boolean v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->e:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->e:Z

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    iget-boolean v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->e:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setDrawingEnabled(Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->r()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->b()V

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getLastColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->j:Z

    return v0
.end method

.method static synthetic g(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    new-instance v3, Lbhf;

    sget-object v4, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->ALL:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    invoke-direct {v3, v2, v0, v1, v4}, Lbhf;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V

    sget-object v0, Lavf;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v3, v0, v1}, Lbhf;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    iget-object v0, v0, Lbej;->mMediabryo:Laji;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method static synthetic h(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 5

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lbhb;

    iget-object v2, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/SnapEditorView;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->ALL:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    invoke-direct {v1, v0, v2, v3, v4}, Lbhb;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V

    sget-object v0, Lavf;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lbhb;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic i(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 4

    .prologue
    .line 50
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->s:J

    const v1, 0x7f0a038e

    invoke-virtual {p0, v1}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v1, 0x7f0a01e2

    invoke-virtual {p0, v1}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v1, 0x7f0a01df

    invoke-virtual {p0, v1}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 216
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbfk;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v2}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    iget-object v0, v0, Lbej;->mMediabryo:Laji;

    invoke-virtual {v0}, Laji;->h()I

    move-result v0

    if-nez v0, :cond_1

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->j:Z

    .line 221
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbx;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lbbx;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 231
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->k:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$2;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$3;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$4;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$5;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->l:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$6;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->j:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setIsVideoSnap(Z)V

    .line 235
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->p:Lcom/snapchat/android/ui/SnapEditorView$a;

    if-nez v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    iget-object v1, v1, Lbej;->mMediabryo:Laji;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->setMediabryo(Lcom/snapchat/android/model/Mediabryo;)V

    .line 241
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    iget v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->m:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->a(I)V

    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lawf;->d(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->m:I

    .line 242
    return-void

    .line 225
    :cond_1
    iput-boolean v3, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->j:Z

    .line 226
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbx;

    invoke-direct {v1, v3}, Lbbx;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->p:Lcom/snapchat/android/ui/SnapEditorView$a;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/ui/SnapEditorView$a;)V

    goto :goto_1
.end method

.method private q()V
    .locals 3

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->J()Landroid/view/Window;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 293
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x201

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 294
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 297
    :cond_0
    return-void
.end method

.method private r()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v0

    if-lez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->j:Z

    if-eqz v0, :cond_1

    .line 315
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    iget-object v1, v1, Lbej;->mMediabryo:Laji;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 320
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    iget-object v0, v0, Lbej;->mMediabryo:Laji;

    invoke-virtual {v0}, Laji;->l()V

    goto :goto_1
.end method


# virtual methods
.method protected final e()V
    .locals 3

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->q()V

    .line 278
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbfk;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v2}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    iget-object v0, v0, Lbej;->mMediabryo:Laji;

    .line 281
    if-eqz v0, :cond_0

    invoke-static {v0}, Lavr;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    check-cast v0, Laku;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Laku;)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbx;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lbbx;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final g()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 246
    iget-boolean v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->f:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    new-instance v0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;

    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0038

    invoke-virtual {p0, v2}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Lara;->show()V

    .line 265
    const/4 v0, 0x1

    goto :goto_0

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    if-eqz v1, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->t()V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->a()Lcom/snapchat/android/ui/SnapEditorView$a;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->p:Lcom/snapchat/android/ui/SnapEditorView$a;

    .line 211
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n()V

    .line 212
    return-void
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBottom()I

    move-result v0

    return v0
.end method

.method public onColorPickedEvent(Lbcc;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    iget v1, p1, Lbcc;->mColor:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setColor(I)V

    .line 470
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 471
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 205
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i()V

    .line 206
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 87
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->q()V

    .line 89
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/SnapkidzHomeActivity;

    iget-object v0, v0, Lcom/snapchat/android/SnapkidzHomeActivity;->a:Lbej;

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lbej;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->CAMERA:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    invoke-direct {v0, v1, v2}, Lbej;-><init>(Laji;Lcom/snapchat/android/util/eventbus/SnapCaptureContext;)V

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->f:Z

    .line 100
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->mFragmentLayout:Landroid/view/View;

    .line 131
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const v0, 0x7f0400a0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->mFragmentLayout:Landroid/view/View;

    .line 109
    const v0, 0x7f0a0391

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    .line 110
    const v0, 0x7f0a038f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d:Landroid/view/View;

    .line 111
    const v0, 0x7f0a01df

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->k:Landroid/widget/ImageButton;

    .line 112
    const v0, 0x7f0a01e0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c:Landroid/widget/ImageButton;

    .line 113
    const v0, 0x7f0a0390

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->g:Landroid/widget/ImageButton;

    .line 114
    const v0, 0x7f0a0392

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i:Landroid/widget/ImageButton;

    .line 115
    const v0, 0x7f0a0394

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->l:Landroid/widget/ImageButton;

    .line 116
    const v0, 0x7f0a038e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->h:Landroid/view/View;

    .line 118
    const v0, 0x7f0a038d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SnapEditorView;

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/content/Context;)V

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapEditorView;->setSnapPreviewRotationListener(Lcom/snapchat/android/ui/SwipeImageView$a;)V

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapEditorView;->setInterface(Lcom/snapchat/android/ui/SnapEditorView$b;)V

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCanvasView()Lcom/snapchat/android/ui/CanvasViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    .line 124
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n()V

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getLastColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->mFragmentLayout:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroy()V

    .line 194
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    iget-object v0, v0, Lbej;->mMediabryo:Laji;

    invoke-virtual {v0}, Laji;->l()V

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lbej;

    .line 197
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->J()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 198
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 199
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->J()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 200
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroyView()V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->b()V

    .line 185
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->J()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 186
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 187
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->J()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 188
    return-void
.end method

.method public onDrawingEvent(Lcom/snapchat/android/util/eventbus/DrawingEvent;)V
    .locals 10
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 427
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->r:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->r:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;->a:Z

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->r:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;

    .line 432
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/DrawingEvent;->mDrawingEventType:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    sget-object v2, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->STARTED_STROKE:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    if-ne v0, v2, :cond_2

    .line 433
    new-instance v0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;

    invoke-direct {v0, p0, v6}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;B)V

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->r:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;

    .line 434
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->r:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    :cond_1
    :goto_0
    return-void

    .line 435
    :cond_2
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/DrawingEvent;->mDrawingEventType:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    sget-object v2, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->COMPLETED_STROKE:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    if-ne v0, v2, :cond_1

    .line 436
    iget-wide v2, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->s:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_4

    const v0, 0x5368d4a5    # 1.0E12f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->s:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x43c80000    # 400.0f

    div-float/2addr v0, v2

    iput-wide v8, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->s:J

    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    move v0, v1

    :cond_3
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    mul-float/2addr v0, v3

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x190

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const v0, 0x7f0a038e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f0a01e2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f0a01df

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 438
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getLastColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 149
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Z)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->a()Lcom/snapchat/android/ui/SnapEditorView$a;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->p:Lcom/snapchat/android/ui/SnapEditorView$a;

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->c()V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 137
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    iget-boolean v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->e:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setDrawingEnabled(Z)V

    .line 140
    iget-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->e:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->r()V

    .line 143
    :cond_0
    return-void
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method
