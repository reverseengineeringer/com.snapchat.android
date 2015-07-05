.class public Lcom/snapchat/android/ui/SnapView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/stories/ui/MyStoryView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/SnapView$4;,
        Lcom/snapchat/android/ui/SnapView$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/squareup/otto/Bus;

.field public final b:Larh;

.field protected c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

.field protected d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

.field public e:Z

.field public f:Larj;

.field protected final g:Lark;

.field private final h:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

.field private final i:Landroid/view/ViewGroup;

.field private final j:Lcom/snapchat/android/ui/SnapTimerView;

.field private final k:Laol;

.field private final l:Lank;

.field private final m:Lcom/snapchat/android/ui/SnapView$a;

.field private final n:Lng;

.field private final o:Landroid/view/LayoutInflater;

.field private final p:Lzd;

.field private final q:Lalb;

.field private final r:Laop;

.field private final s:Lavh;

.field private final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lyu;",
            ">;"
        }
    .end annotation
.end field

.field private u:Larj;

.field private v:Lala;

.field private final w:Lark;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    .prologue
    .line 117
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v4

    new-instance v5, Larh;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Larh;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a()Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v6

    invoke-static {}, Lng;->a()Lng;

    move-result-object v7

    invoke-static {}, Laol;->a()Laol;

    move-result-object v8

    new-instance v9, Lank;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lank;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/snapchat/android/ui/SnapView$a;

    invoke-direct {v10}, Lcom/snapchat/android/ui/SnapView$a;-><init>()V

    invoke-static {}, Lzd;->a()Lzd;

    move-result-object v11

    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v12

    invoke-static {}, Laop;->a()Laop;

    move-result-object v13

    new-instance v14, Lavh;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lavh;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lyu;

    const/4 v2, 0x0

    new-instance v3, Lzk;

    invoke-direct {v3}, Lzk;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Laup;->d()Laup;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Lalx;->a()Lalx;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lds;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v15}, Lcom/snapchat/android/ui/SnapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/squareup/otto/Bus;Larh;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lng;Laol;Lank;Lcom/snapchat/android/ui/SnapView$a;Lzd;Lalb;Laop;Lavh;Ljava/util/Set;)V

    .line 122
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/squareup/otto/Bus;Larh;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lng;Laol;Lank;Lcom/snapchat/android/ui/SnapView$a;Lzd;Lalb;Laop;Lavh;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Lcom/squareup/otto/Bus;",
            "Larh;",
            "Lcom/snapchat/android/analytics/SnapViewEventAnalytics;",
            "Lng;",
            "Laol;",
            "Lank;",
            "Lcom/snapchat/android/ui/SnapView$a;",
            "Lzd;",
            "Lalb;",
            "Laop;",
            "Lavh;",
            "Ljava/util/Set",
            "<",
            "Lyu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/ui/SnapView;->e:Z

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->v:Lala;

    .line 548
    new-instance v1, Lcom/snapchat/android/ui/SnapView$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/SnapView$3;-><init>(Lcom/snapchat/android/ui/SnapView;)V

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->g:Lark;

    .line 649
    new-instance v1, Larl;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->g:Lark;

    invoke-direct {v1, v2, v3}, Larl;-><init>(Landroid/os/Handler;Lark;)V

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->w:Lark;

    .line 131
    iput-object p3, p0, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    .line 132
    iput-object p4, p0, Lcom/snapchat/android/ui/SnapView;->b:Larh;

    .line 133
    iput-object p5, p0, Lcom/snapchat/android/ui/SnapView;->h:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    .line 134
    iput-object p7, p0, Lcom/snapchat/android/ui/SnapView;->k:Laol;

    .line 135
    iput-object p8, p0, Lcom/snapchat/android/ui/SnapView;->l:Lank;

    .line 136
    iput-object p9, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/SnapView$a;

    .line 137
    iput-object p10, p0, Lcom/snapchat/android/ui/SnapView;->p:Lzd;

    .line 138
    iput-object p11, p0, Lcom/snapchat/android/ui/SnapView;->q:Lalb;

    .line 139
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->t:Ljava/util/Set;

    .line 141
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->o:Landroid/view/LayoutInflater;

    .line 142
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->o:Landroid/view/LayoutInflater;

    const v2, 0x7f0400cc

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 144
    const v1, 0x7f0a041c

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SnapView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->i:Landroid/view/ViewGroup;

    .line 145
    const v1, 0x7f0a041d

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SnapView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/ui/SnapTimerView;

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->j:Lcom/snapchat/android/ui/SnapTimerView;

    .line 146
    const v1, 0x7f0a041e

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SnapView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/ui/VerticalSwipeLayout;

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    .line 147
    new-instance v1, Ladn;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ladn;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v3}, Ladn;->a(II)V

    invoke-virtual {v1}, Ladn;->a()V

    new-instance v2, Lcom/snapchat/android/ui/SnapView$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/ui/SnapView$1;-><init>(Lcom/snapchat/android/ui/SnapView;)V

    invoke-virtual {v1, v2}, Ladn;->a(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/snapchat/android/ui/SnapView$2;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/ui/SnapView$2;-><init>(Lcom/snapchat/android/ui/SnapView;Ladn;)V

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    iget-object v1, v1, Ladn;->c:Landroid/view/View;

    invoke-virtual {v3, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setOnScrolledListener(Lcom/snapchat/android/ui/VerticalSwipeLayout$a;)V

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setEnabled(Z)V

    .line 148
    const v1, 0x7f0a041f

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SnapView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    .line 149
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setColorFilter(I)V

    .line 150
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->l:Lank;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lank;->a(Landroid/view/ViewGroup;)V

    .line 151
    iput-object p6, p0, Lcom/snapchat/android/ui/SnapView;->n:Lng;

    .line 152
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->r:Laop;

    .line 153
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->s:Lavh;

    .line 154
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapView;)Larj;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapView;Larj;)Larj;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapView;->u:Larj;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapView;Laje;)V
    .locals 2

    .prologue
    .line 80
    instance-of v0, p1, Lajr;

    if-eqz v0, :cond_2

    check-cast p1, Lajr;

    invoke-virtual {p1}, Lajr;->l()V

    invoke-virtual {p1}, Lajr;->ai()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lawq;->STORY_RECEIVED_VIDEO_CACHE:Lawp;

    invoke-virtual {p1}, Lajr;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawp;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->p:Lzd;

    invoke-virtual {v0, p1}, Lzd;->a(Lajr;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lawq;->STORY_RECEIVED_IMAGE_CACHE:Lawp;

    invoke-virtual {p1}, Lajr;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawp;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Laje;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Laje;->l()V

    invoke-virtual {p1}, Laje;->ai()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lawq;->SNAP_RECEIVED_VIDEO_CACHE:Lawp;

    invoke-virtual {p1}, Laje;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawp;->c(Ljava/lang/String;)V

    :goto_2
    new-instance v0, Lop;

    invoke-direct {v0, p1}, Lop;-><init>(Laje;)V

    invoke-virtual {v0}, Lop;->a()V

    goto :goto_1

    :cond_3
    sget-object v0, Lawq;->SNAP_RECEIVED_IMAGE_CACHE:Lawp;

    invoke-virtual {p1}, Laje;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawp;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapView;Z)Z
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/snapchat/android/ui/SnapView;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/ui/SnapView;)Lank;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->l:Lank;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/ui/SnapView;)Lark;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->w:Lark;

    return-object v0
.end method

.method private c(Laje;Laio;Z)V
    .locals 7
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laio;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .annotation build Lccm;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 282
    invoke-static {}, Lbgp;->a()V

    .line 283
    const-string v0, "SnapView"

    const-string v1, "SNAP-VIEW: Show snap %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    instance-of v0, p2, Lzb;

    if-eqz v0, :cond_5

    move-object v0, p2

    .line 286
    check-cast v0, Lzb;

    move-object v1, p1

    check-cast v1, Lajr;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lzb;->a:Ljava/util/Map;

    iget-object v1, v1, Lajr;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 288
    :goto_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/model/StorySnapLogbook;)V

    .line 293
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    invoke-interface {v0}, Larj;->a()Laje;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 295
    const-string v0, "SnapView"

    const-string v1, "SNAP-VIEW: Viewing previously viewed snap %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    const-string v0, "SnapView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SNAP-VIEW: Session active? "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    invoke-interface {v3}, Larj;->f()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    const-string v0, "SnapView"

    const-string v1, "SNAP-VIEW: Session already has snap %s is being viewed / is viewed? %s / %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {p1}, Laje;->x()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-virtual {p1}, Laje;->z()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    invoke-interface {v0}, Larj;->h()V

    .line 301
    iput-object v2, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Larj;

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Larj;

    invoke-interface {v0}, Larj;->a()Laje;

    move-result-object v0

    if-ne v0, p1, :cond_6

    .line 306
    const-string v0, "SnapView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SNAP-VIEW: Session preloaded for snap "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->u:Larj;

    invoke-interface {v3}, Larj;->a()Laje;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Larj;

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    .line 308
    iput-object v2, p0, Lcom/snapchat/android/ui/SnapView;->u:Larj;

    .line 317
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->q:Lalb;

    iget-object v0, v0, Lalb;->a:Lalh;

    invoke-virtual {p1}, Laje;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Laje;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lalh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    if-nez v0, :cond_3

    .line 320
    const-string v0, "SnapView"

    const-string v1, "SNAP-VIEW: There was no session preloaded"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/ui/SnapView;->b(Laje;Laio;Z)Larj;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    .line 322
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->w:Lark;

    invoke-interface {v0, v1}, Larj;->a(Lark;)V

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    invoke-interface {v0}, Larj;->g()V

    .line 326
    return-void

    :cond_4
    move-object v0, v2

    .line 286
    goto/16 :goto_0

    .line 290
    :cond_5
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/model/StorySnapLogbook;)V

    goto/16 :goto_1

    .line 310
    :cond_6
    const-string v0, "SnapView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SNAP-VIEW: Session preloaded for different snap "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->u:Larj;

    invoke-interface {v3}, Larj;->a()Laje;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Larj;

    invoke-interface {v0}, Larj;->h()V

    .line 312
    iput-object v2, p0, Lcom/snapchat/android/ui/SnapView;->u:Larj;

    goto :goto_2
.end method

.method static synthetic d(Lcom/snapchat/android/ui/SnapView;)Larj;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Larj;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/SnapView;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->t:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/ui/SnapView;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/ui/SnapView;)Lzd;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->p:Lzd;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->DELETED_SNAP:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Larj;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V

    .line 478
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcj;

    invoke-direct {v1}, Lbcj;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 479
    return-void
.end method

.method public final a(F)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setAlpha(F)V

    .line 220
    return-void
.end method

.method public final a(Laje;Laio;)V
    .locals 1
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lccm;
    .end annotation

    .prologue
    .line 228
    invoke-static {}, Lbgp;->a()V

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/snapchat/android/ui/SnapView;->a(Laje;Laio;Z)V

    .line 230
    return-void
.end method

.method public final a(Laje;Laio;Z)V
    .locals 5
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laio;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lccm;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 240
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->v:Lala;

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->q:Lalb;

    invoke-virtual {v0}, Lalb;->b()Lala;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->v:Lala;

    .line 242
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->q:Lalb;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->v:Lala;

    invoke-virtual {p1}, Laje;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lala;->a(Ljava/lang/String;)Lala;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalb;->a(Lala;)V

    .line 245
    :cond_0
    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/SnapView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->b()V

    .line 249
    invoke-interface {p2}, Laio;->e()Z

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->b:Larh;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Larh;->a:J

    iput-boolean v0, v1, Larh;->c:Z

    iget v0, v1, Larh;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Larh;->b:I

    .line 252
    invoke-interface {p2}, Laio;->f()Z

    move-result v0

    .line 253
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->r:Laop;

    iget-object v2, v1, Laop;->b:Laop$a;

    if-nez v2, :cond_1

    new-instance v2, Laop$a;

    invoke-direct {v2, v4}, Laop$a;-><init>(B)V

    iput-object v2, v1, Laop;->b:Laop$a;

    iget-object v1, v1, Laop;->b:Laop$a;

    invoke-static {v0}, Laop;->a(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Laop$a;->c:Ljava/lang/Long;

    .line 255
    :cond_1
    invoke-interface {p2}, Laio;->a()V

    .line 258
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyu;

    .line 259
    invoke-interface {v0, p1, p2}, Lyu;->a(Laje;Laio;)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/ui/SnapView;->c(Laje;Laio;Z)V

    .line 265
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->s:Lavh;

    invoke-virtual {v0, p0, v4}, Lavh;->a(Landroid/view/View;Z)V

    .line 266
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 269
    invoke-interface {p2}, Laio;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 270
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->SNAP:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Laje;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/database/table/NotificationTable;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_3
    return-void
.end method

.method protected final a(Larj;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 422
    sget-object v0, Lcom/snapchat/android/ui/SnapView$4;->a:[I

    invoke-virtual {p2}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->SWIPED_DOWN:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    .line 423
    :goto_0
    if-nez p1, :cond_0

    .line 424
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    .line 437
    :goto_1
    return-void

    .line 422
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->ERROR:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->KICKED_OUT:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->TAP_PAST_END:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->FINISHED_VIEWING:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    goto :goto_0

    .line 428
    :cond_0
    invoke-interface {p1}, Larj;->b()Laio;

    move-result-object v3

    .line 429
    const/4 v4, 0x7

    invoke-interface {p1}, Larj;->a()Laje;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Laio;->a(ILaje;)I

    .line 431
    invoke-interface {v3}, Laio;->g()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 432
    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->h:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->SKIP_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_2

    move v0, v1

    :goto_2
    const-string v4, "VIEW_NEXT_SNAP"

    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v5, "wasSkipped"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    iput-object v0, v3, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mViewNextSnapMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 433
    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    invoke-interface {v3}, Larj;->b()Laio;

    move-result-object v4

    invoke-interface {v4}, Laio;->c()Laje;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "SnapView"

    const-string v4, "SNAP-VIEW: Kicked out after %s, nextSnap is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3}, Larj;->a()Laje;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_3
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->KICKED_OUT:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 432
    goto :goto_2

    .line 433
    :cond_3
    invoke-virtual {v0}, Laje;->L()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Laje;->M()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const-string v5, "SnapView"

    const-string v6, "SNAP-VIEW: Moving from %s to nextSnap  %s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v3}, Larj;->a()Laje;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v0}, Laje;->aa()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3}, Larj;->e()Z

    move-result v1

    invoke-direct {p0, v0, v4, v1}, Lcom/snapchat/android/ui/SnapView;->c(Laje;Laio;Z)V

    goto/16 :goto_1

    :cond_5
    const-string v5, "SnapView"

    const-string v6, "SNAP-VIEW: Kicked out after %s, nextSnap is %s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v3}, Larj;->a()Laje;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-virtual {v0}, Laje;->aa()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Laje;->R()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v4}, Laio;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->p:Lzd;

    check-cast v0, Lajr;

    sget-object v2, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->LOAD_FROM_VIEWING:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual {v1, v0, v2}, Lzd;->a(Lajr;Lcom/snapchat/android/controller/stories/StoryLoadingContext;)Z

    goto :goto_3

    :cond_6
    new-instance v1, Lop;

    invoke-direct {v1, v0}, Lop;-><init>(Laje;)V

    invoke-virtual {v1}, Lop;->a()V

    goto :goto_3

    .line 435
    :cond_7
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    goto/16 :goto_1

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V
    .locals 11
    .annotation build Lavl;
    .end annotation

    .annotation build Lccm;
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x8

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 335
    invoke-static {}, Lbgp;->a()V

    .line 338
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    invoke-interface {v0}, Larj;->a()Laje;

    move-result-object v1

    .line 343
    :goto_1
    const-string v0, "SnapView"

    const-string v3, "SNAP-VIEW: Hide snap %s with reason %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object p1, v6, v4

    invoke-static {v0, v3, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    invoke-interface {v0}, Larj;->b()Laio;

    move-result-object v0

    move-object v3, v0

    .line 349
    :goto_2
    iget-object v6, p0, Lcom/snapchat/android/ui/SnapView;->n:Lng;

    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->KICKED_OUT:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    if-ne p1, v0, :cond_3

    move v0, v4

    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v6, v4}, Lng;->a(Z)V

    const-string v0, "kicked_out"

    invoke-virtual {v6, v0}, Lng;->a(Ljava/lang/String;)V

    .line 350
    :goto_4
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->b:Larh;

    iput v5, v0, Larh;->b:I

    const-wide/16 v6, -0x1

    iput-wide v6, v0, Larh;->a:J

    .line 352
    invoke-virtual {p0, v9}, Lcom/snapchat/android/ui/SnapView;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->j:Lcom/snapchat/android/ui/SnapTimerView;

    invoke-virtual {v0, v9}, Lcom/snapchat/android/ui/SnapTimerView;->setVisibility(I)V

    .line 355
    iget-object v6, p0, Lcom/snapchat/android/ui/SnapView;->l:Lank;

    move v0, v5

    :goto_5
    if-ge v0, v10, :cond_5

    iget-object v7, v6, Lank;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v7, v7, v0

    invoke-interface {v7}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->d()V

    iget-object v7, v6, Lank;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v7, v7, v0

    invoke-interface {v7}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1
    move-object v1, v2

    .line 342
    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 345
    goto :goto_2

    :cond_3
    move v0, v5

    .line 349
    goto :goto_3

    :cond_4
    invoke-virtual {v6, v5}, Lng;->a(Z)V

    iget-object v0, v6, Lng;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v6, "MEDIA_VIEW_INTERVAL"

    const-string v7, "last_action"

    const-string v8, "end_view_media"

    invoke-virtual {v0, v6, v7, v8, v5}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    goto :goto_4

    .line 357
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    if-eqz v0, :cond_7

    .line 358
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    invoke-interface {v0}, Larj;->h()V

    .line 361
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyu;

    .line 362
    iget-object v7, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    invoke-interface {v7}, Larj;->b()Laio;

    move-result-object v7

    invoke-interface {v0, v7}, Lyu;->a(Laio;)V

    goto :goto_6

    .line 365
    :cond_6
    iput-object v2, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    .line 368
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->s:Lavh;

    invoke-virtual {v0, p0, v4}, Lavh;->a(Landroid/view/View;Z)V

    .line 369
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->k:Laol;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v6

    invoke-virtual {v0, v6}, Laol;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "op_code"

    const/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "display_notifications"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v6, v7}, Laol;->a(Landroid/content/Context;Landroid/content/Intent;)I

    .line 372
    if-eqz v1, :cond_e

    if-eqz v3, :cond_e

    invoke-interface {v3}, Laio;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 373
    iget-object v6, p0, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    new-instance v7, Lbct;

    move-object v0, v1

    check-cast v0, Lajr;

    invoke-direct {v7, v0}, Lbct;-><init>(Lajr;)V

    invoke-virtual {v6, v7}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 379
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Larj;

    if-eqz v0, :cond_8

    .line 380
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Larj;

    invoke-interface {v0}, Larj;->h()V

    .line 381
    iput-object v2, p0, Lcom/snapchat/android/ui/SnapView;->u:Larj;

    .line 387
    :cond_8
    if-eqz v3, :cond_f

    invoke-interface {v3}, Laio;->d()Laje;

    move-result-object v0

    if-eqz v0, :cond_f

    move v0, v4

    .line 388
    :goto_8
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->r:Laop;

    if-nez v0, :cond_9

    move v5, v4

    :cond_9
    iget-object v0, v1, Laop;->b:Laop$a;

    if-eqz v0, :cond_b

    iget-object v0, v1, Laop;->b:Laop$a;

    iget-wide v6, v0, Laop$a;->d:D

    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-eqz v0, :cond_b

    iget-object v0, v1, Laop;->b:Laop$a;

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->getExitEvent()Lhl;

    move-result-object v6

    iput-object v6, v0, Laop$a;->e:Lhl;

    iget-object v0, v1, Laop;->b:Laop$a;

    iput-boolean v5, v0, Laop$a;->a:Z

    const-string v0, "VIEW_STORIES_END"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v5, "view_location"

    iget-object v6, v1, Laop;->b:Laop$a;

    iget-object v6, v6, Laop$a;->c:Ljava/lang/Long;

    invoke-virtual {v0, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "time_viewed"

    iget-object v6, v1, Laop;->b:Laop$a;

    iget-wide v6, v6, Laop$a;->d:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "full_view"

    iget-object v6, v1, Laop;->b:Laop$a;

    iget-boolean v6, v6, Laop$a;->a:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "exit_event"

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "reachability"

    iget-object v6, v1, Laop;->a:Lale;

    invoke-virtual {v6}, Lale;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    new-instance v0, Llq;

    invoke-direct {v0}, Llq;-><init>()V

    iget-object v4, v1, Laop;->b:Laop$a;

    iget-object v4, v4, Laop$a;->e:Lhl;

    iput-object v4, v0, Llq;->exitEvent:Lhl;

    iget-object v4, v1, Laop;->b:Laop$a;

    iget-object v4, v4, Laop$a;->c:Ljava/lang/Long;

    iput-object v4, v0, Llq;->viewLocation:Ljava/lang/Long;

    iget-object v4, v1, Laop;->b:Laop$a;

    iget-object v4, v4, Laop$a;->b:Ljava/lang/Long;

    iput-object v4, v0, Llq;->numSnapsViewed:Ljava/lang/Long;

    iget-object v4, v1, Laop;->b:Laop$a;

    iget-boolean v4, v4, Laop$a;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Llq;->fullView:Ljava/lang/Boolean;

    iget-object v4, v1, Laop;->b:Laop$a;

    iget-wide v4, v4, Laop$a;->d:D

    invoke-static {v4, v5}, Laop;->a(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v0, Llq;->timeViewed:Ljava/lang/Double;

    iget-object v4, v1, Laop;->b:Laop$a;

    iget-object v4, v4, Laop$a;->f:Llr;

    iput-object v4, v0, Llq;->storyType:Llr;

    iget-object v4, v1, Laop;->b:Laop$a;

    iget-object v4, v4, Laop$a;->g:Ljava/lang/String;

    iput-object v4, v0, Llq;->posterId:Ljava/lang/String;

    iget-object v4, v1, Laop;->b:Laop$a;

    iget-boolean v4, v4, Laop$a;->h:Z

    if-eqz v4, :cond_a

    const-string v4, "LOCAL"

    iput-object v4, v0, Llq;->geoFence:Ljava/lang/String;

    :cond_a
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    iput-object v2, v1, Laop;->b:Laop$a;

    .line 391
    :cond_b
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->v:Lala;

    if-eqz v0, :cond_c

    .line 392
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->q:Lalb;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->v:Lala;

    invoke-virtual {v0, v1}, Lalb;->a(Lala;)V

    .line 393
    iput-object v2, p0, Lcom/snapchat/android/ui/SnapView;->v:Lala;

    .line 396
    :cond_c
    if-eqz v3, :cond_d

    .line 397
    invoke-interface {v3}, Laio;->b()V

    .line 400
    :cond_d
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    new-instance v1, Lbby;

    invoke-direct {v1}, Lbby;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 375
    :cond_e
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdm;

    invoke-direct {v1, v5}, Lbdm;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_f
    move v0, v5

    .line 387
    goto/16 :goto_8
.end method

.method public final a(Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/model/StorySnapLogbook;
        .annotation build Lr;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 485
    if-nez p1, :cond_0

    .line 486
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setEnabled(Z)V

    .line 487
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setVisibility(I)V

    .line 497
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->invalidate()V

    .line 498
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v0

    if-le v0, v5, :cond_1

    .line 490
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->removeViewAt(I)V

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    new-instance v1, Lcom/snapchat/android/stories/ui/MyStoryView;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, p1}, Lcom/snapchat/android/stories/ui/MyStoryView;-><init>(Landroid/content/Context;Lcom/snapchat/android/stories/ui/MyStoryView$a;Lcom/snapchat/android/model/StorySnapLogbook;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->addView(Landroid/view/View;)V

    .line 493
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 494
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setEnabled(Z)V

    .line 495
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lyu;)V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->t:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 696
    return-void
.end method

.method protected final b(Laje;Laio;Z)Larj;
    .locals 9
    .param p2    # Laio;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 537
    invoke-interface {p2}, Laio;->e()Z

    move-result v0

    .line 538
    invoke-interface {p2}, Laio;->f()Z

    move-result v1

    .line 541
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v6, 0x1

    .line 544
    :goto_0
    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->i:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/snapchat/android/ui/SnapView;->j:Lcom/snapchat/android/ui/SnapTimerView;

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->l:Lank;

    invoke-virtual {p1}, Laje;->ai()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lank;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    iget v2, v0, Lank;->c:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lank;->c:I

    rem-int/lit8 v0, v2, 0x2

    aget-object v7, v1, v0

    :goto_1
    invoke-virtual {p1}, Laje;->Y()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Laje;->M()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Larm;

    invoke-direct {v0, p1, p2}, Larm;-><init>(Laje;Laio;)V

    :goto_2
    return-object v0

    .line 541
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 544
    :cond_1
    iget-object v1, v0, Lank;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    iget v2, v0, Lank;->d:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lank;->d:I

    rem-int/lit8 v0, v2, 0x2

    aget-object v7, v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Larg;

    invoke-static {}, Lnn;->a()Lnn;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Larg;-><init>(Laje;Laio;Landroid/view/ViewGroup;ZLcom/snapchat/android/ui/SnapTimerView;ZLcom/snapchat/android/rendering/SnapMediaRenderer;Lnn;)V

    goto :goto_2
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 504
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 505
    return-void
.end method

.method public final b(Lyu;)V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->t:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 700
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    .line 198
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->b()V

    .line 224
    return-void
.end method

.method public final e()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 707
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    iget v3, v2, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    if-eqz v3, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v1, v4, v5}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    .line 714
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 707
    goto :goto_0

    .line 709
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapView;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 710
    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->BACK_PRESSED:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    .line 711
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    new-instance v2, Lbdz;

    invoke-direct {v2}, Lbdz;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 714
    goto :goto_1
.end method

.method public getSnap()Laje;
    .locals 1
    .annotation build Lr;
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    invoke-interface {v0}, Larj;->a()Laje;

    move-result-object v0

    goto :goto_0
.end method
