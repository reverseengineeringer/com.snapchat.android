.class public Lcom/snapchat/android/ui/SnapView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Laps$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/SnapView$3;,
        Lcom/snapchat/android/ui/SnapView$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/squareup/otto/Bus;

.field public final b:Lasg;

.field protected c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

.field protected d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

.field public e:Z

.field public f:Lasi;

.field protected final g:Lasj;

.field private final h:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

.field private final i:Landroid/view/ViewGroup;

.field private final j:Lcom/snapchat/android/ui/SnapTimerView;

.field private final k:Laph;

.field private final l:Laoh;

.field private final m:Lcom/snapchat/android/ui/SnapView$a;

.field private final n:Lnx;

.field private final o:Landroid/view/LayoutInflater;

.field private final p:Lzz;

.field private final q:Lalw;

.field private final r:Lapl;

.field private final s:Lawf;

.field private final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lzq;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lasi;

.field private v:Lalv;

.field private w:Laps;

.field private final x:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

.field private final y:Lasj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    .prologue
    .line 115
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v4

    new-instance v5, Lasg;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lasg;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a()Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v6

    invoke-static {}, Lnx;->a()Lnx;

    move-result-object v7

    invoke-static {}, Laph;->a()Laph;

    move-result-object v8

    new-instance v9, Laoh;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Laoh;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/snapchat/android/ui/SnapView$a;

    invoke-direct {v10}, Lcom/snapchat/android/ui/SnapView$a;-><init>()V

    invoke-static {}, Lzz;->a()Lzz;

    move-result-object v11

    invoke-static {}, Lalw;->a()Lalw;

    move-result-object v12

    invoke-static {}, Lapl;->a()Lapl;

    move-result-object v13

    new-instance v14, Lawf;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lawf;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lzq;

    const/4 v2, 0x0

    new-instance v3, Laak;

    invoke-direct {v3}, Laak;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lamu;->a()Lamu;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lec;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v15}, Lcom/snapchat/android/ui/SnapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/squareup/otto/Bus;Lasg;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lnx;Laph;Laoh;Lcom/snapchat/android/ui/SnapView$a;Lzz;Lalw;Lapl;Lawf;Ljava/util/Set;)V

    .line 120
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/squareup/otto/Bus;Lasg;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lnx;Laph;Laoh;Lcom/snapchat/android/ui/SnapView$a;Lzz;Lalw;Lapl;Lawf;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Lcom/squareup/otto/Bus;",
            "Lasg;",
            "Lcom/snapchat/android/analytics/SnapViewEventAnalytics;",
            "Lnx;",
            "Laph;",
            "Laoh;",
            "Lcom/snapchat/android/ui/SnapView$a;",
            "Lzz;",
            "Lalw;",
            "Lapl;",
            "Lawf;",
            "Ljava/util/Set",
            "<",
            "Lzq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/ui/SnapView;->e:Z

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->v:Lalv;

    .line 159
    new-instance v1, Lcom/snapchat/android/ui/SnapView$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/SnapView$1;-><init>(Lcom/snapchat/android/ui/SnapView;)V

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->x:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    .line 514
    new-instance v1, Lcom/snapchat/android/ui/SnapView$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/SnapView$2;-><init>(Lcom/snapchat/android/ui/SnapView;)V

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->g:Lasj;

    .line 615
    new-instance v1, Lask;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->g:Lasj;

    invoke-direct {v1, v2, v3}, Lask;-><init>(Landroid/os/Handler;Lasj;)V

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->y:Lasj;

    .line 129
    iput-object p3, p0, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    .line 130
    iput-object p4, p0, Lcom/snapchat/android/ui/SnapView;->b:Lasg;

    .line 131
    iput-object p5, p0, Lcom/snapchat/android/ui/SnapView;->h:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    .line 132
    iput-object p7, p0, Lcom/snapchat/android/ui/SnapView;->k:Laph;

    .line 133
    iput-object p8, p0, Lcom/snapchat/android/ui/SnapView;->l:Laoh;

    .line 134
    iput-object p9, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/SnapView$a;

    .line 135
    iput-object p10, p0, Lcom/snapchat/android/ui/SnapView;->p:Lzz;

    .line 136
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->q:Lalw;

    .line 137
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->t:Ljava/util/Set;

    .line 139
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->o:Landroid/view/LayoutInflater;

    .line 140
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->o:Landroid/view/LayoutInflater;

    const v2, 0x7f0400ce

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 142
    const v1, 0x7f0a0415

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SnapView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->i:Landroid/view/ViewGroup;

    .line 143
    const v1, 0x7f0a0416

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SnapView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/ui/SnapTimerView;

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->j:Lcom/snapchat/android/ui/SnapTimerView;

    .line 144
    const v1, 0x7f0a0417

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SnapView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/ui/VerticalSwipeLayout;

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    .line 145
    const v1, 0x7f0a0418

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SnapView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    .line 146
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setColorFilter(I)V

    .line 147
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->l:Laoh;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Laoh;->a(Landroid/view/ViewGroup;)V

    .line 148
    iput-object p6, p0, Lcom/snapchat/android/ui/SnapView;->n:Lnx;

    .line 149
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->r:Lapl;

    .line 150
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->s:Lawf;

    .line 151
    new-instance v1, Laps;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    iget-object v4, p0, Lcom/snapchat/android/ui/SnapView;->x:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    invoke-direct {v1, v2, v3, v4, p0}, Laps;-><init>(Landroid/content/Context;Lcom/snapchat/android/ui/VerticalSwipeLayout;Lcom/snapchat/android/ui/VerticalSwipeLayout$a;Laps$a;)V

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->w:Laps;

    .line 153
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapView;)Lasi;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapView;Lasi;)Lasi;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapView;->u:Lasi;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapView;Laka;)V
    .locals 2

    .prologue
    .line 77
    instance-of v0, p1, Lakl;

    if-eqz v0, :cond_2

    check-cast p1, Lakl;

    invoke-virtual {p1}, Lakl;->l()V

    invoke-virtual {p1}, Lakl;->ag()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laxo;->STORY_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-virtual {p1}, Lakl;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laxn;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->p:Lzz;

    invoke-virtual {v0, p1}, Lzz;->a(Lakl;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Laxo;->STORY_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-virtual {p1}, Lakl;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laxn;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Laka;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Laka;->l()V

    invoke-virtual {p1}, Laka;->ag()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Laxo;->SNAP_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-virtual {p1}, Laka;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laxn;->c(Ljava/lang/String;)V

    :goto_2
    new-instance v0, Lpg;

    invoke-direct {v0, p1}, Lpg;-><init>(Laka;)V

    invoke-virtual {v0}, Lpg;->a()V

    goto :goto_1

    :cond_3
    sget-object v0, Laxo;->SNAP_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-virtual {p1}, Laka;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laxn;->c(Ljava/lang/String;)V

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
    .line 77
    iput-boolean p1, p0, Lcom/snapchat/android/ui/SnapView;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/ui/SnapView;)Laoh;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->l:Laoh;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/ui/SnapView;)Lasj;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->y:Lasj;

    return-object v0
.end method

.method private c(Laka;Lajk;Z)V
    .locals 6
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lajk;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation build Lcdn;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 265
    invoke-static {}, Lbhp;->a()V

    .line 266
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    invoke-interface {v0}, Lasi;->a()Laka;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 270
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SNAP-VIEW: Session active? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    invoke-interface {v1}, Lasi;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 272
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-virtual {p1}, Laka;->y()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    invoke-virtual {p1}, Laka;->A()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    invoke-interface {v0}, Lasi;->h()V

    .line 276
    iput-object v2, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Lasi;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Lasi;

    invoke-interface {v0}, Lasi;->a()Laka;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SNAP-VIEW: Session preloaded for snap "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->u:Lasi;

    invoke-interface {v1}, Lasi;->a()Laka;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Lasi;

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    .line 283
    iput-object v2, p0, Lcom/snapchat/android/ui/SnapView;->u:Lasi;

    .line 292
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->q:Lalw;

    iget-object v0, v0, Lalw;->a:Lamd;

    invoke-virtual {p1}, Laka;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Laka;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lamd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    instance-of v0, p2, Lzx;

    if-eqz v0, :cond_6

    move-object v0, p2

    .line 295
    check-cast v0, Lzx;

    move-object v1, p1

    check-cast v1, Lakl;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lzx;->a:Ljava/util/Map;

    iget-object v1, v1, Lakl;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 297
    :goto_1
    invoke-virtual {p0, v0, v4}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/model/StorySnapLogbook;Z)V

    .line 302
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    if-nez v0, :cond_3

    .line 303
    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/ui/SnapView;->b(Laka;Lajk;Z)Lasi;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    .line 305
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->y:Lasj;

    invoke-interface {v0, v1}, Lasi;->a(Lasj;)V

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    if-eqz v0, :cond_7

    .line 309
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    invoke-interface {v0}, Lasi;->g()V

    .line 313
    :goto_3
    return-void

    .line 285
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SNAP-VIEW: Session preloaded for different snap "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->u:Lasi;

    invoke-interface {v1}, Lasi;->a()Laka;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Lasi;

    invoke-interface {v0}, Lasi;->h()V

    .line 287
    iput-object v2, p0, Lcom/snapchat/android/ui/SnapView;->u:Lasi;

    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 295
    goto :goto_1

    .line 299
    :cond_6
    invoke-virtual {p0, v2, v4}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/model/StorySnapLogbook;Z)V

    goto :goto_2

    .line 311
    :cond_7
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v4

    goto :goto_3
.end method

.method static synthetic d(Lcom/snapchat/android/ui/SnapView;)Lasi;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Lasi;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/SnapView;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->t:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/ui/SnapView;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/ui/SnapView;)Lzz;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->p:Lzz;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->DELETED_SNAP:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Lasi;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V

    .line 470
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdj;

    invoke-direct {v1}, Lbdj;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 471
    return-void
.end method

.method public final a(F)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setAlpha(F)V

    .line 203
    return-void
.end method

.method public final a(Laka;Lajk;)V
    .locals 1
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Lbhp;->a()V

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/snapchat/android/ui/SnapView;->a(Laka;Lajk;Z)V

    .line 213
    return-void
.end method

.method public final a(Laka;Lajk;Z)V
    .locals 5
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lajk;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcdn;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 223
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->v:Lalv;

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->q:Lalw;

    invoke-virtual {v0}, Lalw;->b()Lalv;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->v:Lalv;

    .line 225
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->q:Lalw;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->v:Lalv;

    invoke-virtual {p1}, Laka;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lalv;->a(Ljava/lang/String;)Lalv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalw;->a(Lalv;)V

    .line 228
    :cond_0
    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/SnapView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->b()V

    .line 232
    invoke-interface {p2}, Lajk;->e()Z

    move-result v0

    .line 233
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->b:Lasg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lasg;->a:J

    iput-boolean v0, v1, Lasg;->c:Z

    iget v0, v1, Lasg;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lasg;->b:I

    .line 235
    invoke-interface {p2}, Lajk;->f()Z

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->r:Lapl;

    invoke-virtual {v1, v0}, Lapl;->a(Z)V

    .line 238
    invoke-interface {p2}, Lajk;->a()V

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzq;

    .line 242
    invoke-interface {v0, p1, p2}, Lzq;->a(Laka;Lajk;)V

    goto :goto_0

    .line 245
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/ui/SnapView;->c(Laka;Lajk;Z)V

    .line 248
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->s:Lawf;

    invoke-virtual {v0, p0, v4}, Lawf;->a(Landroid/view/View;Z)V

    .line 249
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 252
    invoke-interface {p2}, Lajk;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->SNAP:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Laka;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/database/table/NotificationTable;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_2
    return-void
.end method

.method protected final a(Lasi;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 414
    sget-object v0, Lcom/snapchat/android/ui/SnapView$3;->a:[I

    invoke-virtual {p2}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->SWIPED_DOWN:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    .line 415
    :goto_0
    if-nez p1, :cond_0

    .line 416
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    .line 429
    :goto_1
    return-void

    .line 414
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

    .line 420
    :cond_0
    invoke-interface {p1}, Lasi;->b()Lajk;

    move-result-object v3

    .line 421
    iget-object v4, p0, Lcom/snapchat/android/ui/SnapView;->p:Lzz;

    invoke-virtual {v4}, Lzz;->c()I

    move-result v4

    invoke-interface {p1}, Lasi;->a()Laka;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lajk;->a(ILaka;)I

    .line 423
    invoke-interface {v3}, Lajk;->g()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 424
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

    .line 425
    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    invoke-interface {v3}, Lasi;->b()Lajk;

    move-result-object v4

    invoke-interface {v4}, Lajk;->c()Laka;

    move-result-object v0

    if-nez v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {v3}, Lasi;->a()Laka;

    move-result-object v1

    aput-object v1, v0, v2

    :cond_1
    :goto_3
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->KICKED_OUT:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 424
    goto :goto_2

    .line 425
    :cond_3
    invoke-virtual {v0}, Laka;->M()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Laka;->N()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3}, Lasi;->a()Laka;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0}, Laka;->Y()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-interface {v3}, Lasi;->e()Z

    move-result v1

    invoke-direct {p0, v0, v4, v1}, Lcom/snapchat/android/ui/SnapView;->c(Laka;Lajk;Z)V

    goto :goto_1

    :cond_5
    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3}, Lasi;->a()Laka;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-virtual {v0}, Laka;->Y()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {v0}, Laka;->S()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v4}, Lajk;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->p:Lzz;

    check-cast v0, Lakl;

    sget-object v2, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->LOAD_FROM_VIEWING:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual {v1, v0, v2}, Lzz;->a(Lakl;Lcom/snapchat/android/controller/stories/StoryLoadingContext;)Z

    goto :goto_3

    :cond_6
    new-instance v1, Lpg;

    invoke-direct {v1, v0}, Lpg;-><init>(Laka;)V

    invoke-virtual {v1}, Lpg;->a()V

    goto :goto_3

    .line 427
    :cond_7
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    goto/16 :goto_1

    .line 414
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
    .annotation build Lawj;
    .end annotation

    .annotation build Lcdn;
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x8

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 327
    invoke-static {}, Lbhp;->a()V

    .line 330
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    invoke-interface {v0}, Lasi;->a()Laka;

    move-result-object v1

    .line 335
    :goto_1
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v1, v0, v5

    aput-object p1, v0, v4

    .line 337
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    invoke-interface {v0}, Lasi;->b()Lajk;

    move-result-object v0

    move-object v3, v0

    .line 341
    :goto_2
    iget-object v6, p0, Lcom/snapchat/android/ui/SnapView;->n:Lnx;

    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->KICKED_OUT:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    if-ne p1, v0, :cond_3

    move v0, v4

    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v6, v4}, Lnx;->a(Z)V

    const-string v0, "kicked_out"

    invoke-virtual {v6, v0}, Lnx;->a(Ljava/lang/String;)V

    .line 342
    :goto_4
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->b:Lasg;

    iput v5, v0, Lasg;->b:I

    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lasg;->a:J

    .line 344
    invoke-virtual {p0, v9}, Lcom/snapchat/android/ui/SnapView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->j:Lcom/snapchat/android/ui/SnapTimerView;

    invoke-virtual {v0, v9}, Lcom/snapchat/android/ui/SnapTimerView;->setVisibility(I)V

    .line 347
    iget-object v6, p0, Lcom/snapchat/android/ui/SnapView;->l:Laoh;

    move v0, v5

    :goto_5
    if-ge v0, v10, :cond_5

    iget-object v7, v6, Laoh;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v7, v7, v0

    invoke-interface {v7}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->d()V

    iget-object v7, v6, Laoh;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v7, v7, v0

    invoke-interface {v7}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1
    move-object v1, v2

    .line 334
    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 337
    goto :goto_2

    :cond_3
    move v0, v5

    .line 341
    goto :goto_3

    :cond_4
    invoke-virtual {v6, v5}, Lnx;->a(Z)V

    iget-object v0, v6, Lnx;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v6, "MEDIA_VIEW_INTERVAL"

    const-string v7, "last_action"

    const-string v8, "end_view_media"

    invoke-virtual {v0, v6, v7, v8, v5}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    goto :goto_4

    .line 349
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    if-eqz v0, :cond_7

    .line 350
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    invoke-interface {v0}, Lasi;->h()V

    .line 353
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzq;

    .line 354
    iget-object v7, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    invoke-interface {v7}, Lasi;->b()Lajk;

    move-result-object v7

    invoke-interface {v0, v7}, Lzq;->a(Lajk;)V

    goto :goto_6

    .line 357
    :cond_6
    iput-object v2, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    .line 360
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->s:Lawf;

    invoke-virtual {v0, p0, v4}, Lawf;->a(Landroid/view/View;Z)V

    .line 361
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->k:Laph;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v6

    invoke-virtual {v0, v6}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "op_code"

    const/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "display_notifications"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v6, v7}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    .line 364
    if-eqz v1, :cond_e

    if-eqz v3, :cond_e

    invoke-interface {v3}, Lajk;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 365
    iget-object v6, p0, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    new-instance v7, Lbdt;

    move-object v0, v1

    check-cast v0, Lakl;

    invoke-direct {v7, v0}, Lbdt;-><init>(Lakl;)V

    invoke-virtual {v6, v7}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 371
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Lasi;

    if-eqz v0, :cond_8

    .line 372
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Lasi;

    invoke-interface {v0}, Lasi;->h()V

    .line 373
    iput-object v2, p0, Lcom/snapchat/android/ui/SnapView;->u:Lasi;

    .line 379
    :cond_8
    if-eqz v3, :cond_f

    invoke-interface {v3}, Lajk;->d()Laka;

    move-result-object v0

    if-eqz v0, :cond_f

    move v0, v4

    .line 380
    :goto_8
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->r:Lapl;

    if-nez v0, :cond_10

    :goto_9
    iget-object v0, v1, Lapl;->b:Lapl$a;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lapl;->b:Lapl$a;

    iget-wide v6, v0, Lapl$a;->d:D

    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-eqz v0, :cond_b

    iget-object v0, v1, Lapl;->b:Lapl$a;

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->getExitEvent()Lhu;

    move-result-object v6

    iput-object v6, v0, Lapl$a;->e:Lhu;

    iget-object v0, v1, Lapl;->b:Lapl$a;

    iput-boolean v4, v0, Lapl$a;->a:Z

    const-string v0, "VIEW_STORIES_END"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v4, "view_location"

    iget-object v6, v1, Lapl;->b:Lapl$a;

    iget-object v6, v6, Lapl$a;->c:Ljava/lang/Long;

    invoke-virtual {v0, v4, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "time_viewed"

    iget-object v6, v1, Lapl;->b:Lapl$a;

    iget-wide v6, v6, Lapl$a;->d:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "full_view"

    iget-object v6, v1, Lapl;->b:Lapl$a;

    iget-boolean v6, v6, Lapl$a;->a:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "exit_event"

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "reachability"

    iget-object v6, v1, Lapl;->a:Lama;

    invoke-virtual {v6}, Lama;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    new-instance v0, Lmi;

    invoke-direct {v0}, Lmi;-><init>()V

    iget-object v4, v1, Lapl;->b:Lapl$a;

    iget-object v4, v4, Lapl$a;->e:Lhu;

    iput-object v4, v0, Lmi;->exitEvent:Lhu;

    iget-object v4, v1, Lapl;->b:Lapl$a;

    iget-object v4, v4, Lapl$a;->c:Ljava/lang/Long;

    iput-object v4, v0, Lmi;->viewLocation:Ljava/lang/Long;

    iget-object v4, v1, Lapl;->b:Lapl$a;

    iget-object v4, v4, Lapl$a;->b:Ljava/lang/Long;

    iput-object v4, v0, Lmi;->numSnapsViewed:Ljava/lang/Long;

    iget-object v4, v1, Lapl;->b:Lapl$a;

    iget-boolean v4, v4, Lapl$a;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Lmi;->fullView:Ljava/lang/Boolean;

    iget-object v4, v1, Lapl;->b:Lapl$a;

    iget-wide v4, v4, Lapl$a;->d:D

    invoke-static {v4, v5}, Lapl;->a(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v0, Lmi;->timeViewed:Ljava/lang/Double;

    iget-object v4, v1, Lapl;->b:Lapl$a;

    iget-object v4, v4, Lapl$a;->f:Lmj;

    iput-object v4, v0, Lmi;->storyType:Lmj;

    iget-object v4, v1, Lapl;->b:Lapl$a;

    iget-object v4, v4, Lapl$a;->g:Ljava/lang/String;

    iput-object v4, v0, Lmi;->posterId:Ljava/lang/String;

    iget-object v4, v1, Lapl;->b:Lapl$a;

    iget-wide v4, v4, Lapl$a;->i:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    iget-object v4, v1, Lapl;->b:Lapl$a;

    iget-wide v4, v4, Lapl$a;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lmi;->viewLocationPos:Ljava/lang/Long;

    :cond_9
    iget-object v4, v1, Lapl;->b:Lapl$a;

    iget-boolean v4, v4, Lapl$a;->h:Z

    if-eqz v4, :cond_a

    const-string v4, "LOCAL"

    iput-object v4, v0, Lmi;->geoFence:Ljava/lang/String;

    :cond_a
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    iput-object v2, v1, Lapl;->b:Lapl$a;

    .line 383
    :cond_b
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->v:Lalv;

    if-eqz v0, :cond_c

    .line 384
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->q:Lalw;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->v:Lalv;

    invoke-virtual {v0, v1}, Lalw;->a(Lalv;)V

    .line 385
    iput-object v2, p0, Lcom/snapchat/android/ui/SnapView;->v:Lalv;

    .line 388
    :cond_c
    if-eqz v3, :cond_d

    .line 389
    invoke-interface {v3}, Lajk;->b()V

    .line 392
    :cond_d
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcy;

    invoke-direct {v1}, Lbcy;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 367
    :cond_e
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    new-instance v1, Lbem;

    invoke-direct {v1, v5}, Lbem;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_f
    move v0, v5

    .line 379
    goto/16 :goto_8

    :cond_10
    move v4, v5

    .line 380
    goto/16 :goto_9
.end method

.method public final a(Lcom/snapchat/android/model/StorySnapLogbook;Z)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 316
    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->w:Laps;

    iget-object v0, v3, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->removeAllViews()V

    iget-object v0, v3, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f()V

    if-nez p1, :cond_0

    iget-object v0, v3, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setEnabled(Z)V

    iget-object v0, v3, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, v3, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->invalidate()V

    .line 318
    return-void

    .line 316
    :cond_0
    iget-object v0, v3, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setEnabled(Z)V

    iget-object v0, v3, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setVisibility(I)V

    new-instance v4, Lcom/snapchat/android/stories/ui/MyStoryView;

    iget-object v0, v3, Laps;->b:Landroid/content/Context;

    invoke-direct {v4, v0, p1, v3}, Lcom/snapchat/android/stories/ui/MyStoryView;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/stories/ui/MyStoryView$a;)V

    invoke-virtual {v4, v2, v2}, Lcom/snapchat/android/stories/ui/MyStoryView;->measure(II)V

    if-eqz p2, :cond_2

    invoke-virtual {v4}, Lcom/snapchat/android/stories/ui/MyStoryView;->getViewersInfoHeight()I

    move-result v1

    new-instance v0, Landroid/view/View;

    iget-object v5, v3, Laps;->b:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v5, v3, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v5, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4}, Lcom/snapchat/android/stories/ui/MyStoryView;->getViewersInfoHeight()I

    move-result v0

    invoke-virtual {v4}, Lcom/snapchat/android/stories/ui/MyStoryView;->getVisibleViewersListHeight()I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, v3, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v5, v4, v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(Landroid/view/View;II)V

    if-eq v0, v1, :cond_1

    iget-object v0, v3, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    iget-object v1, v3, Laps;->c:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(Lcom/snapchat/android/ui/VerticalSwipeLayout$a;)V

    iget-object v0, v3, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    new-instance v1, Laps$3;

    invoke-direct {v1, v3, v4}, Laps$3;-><init>(Laps;Lcom/snapchat/android/stories/ui/MyStoryView;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(Lcom/snapchat/android/ui/VerticalSwipeLayout$a;)V

    :cond_1
    iget-object v0, v3, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    goto :goto_0

    :cond_2
    new-instance v0, Laen;

    iget-object v1, v3, Laps;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Laen;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Laps;->d:Laen;

    iget-object v0, v3, Laps;->d:Laen;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v6, v1}, Laen;->a(II)V

    iget-object v0, v3, Laps;->d:Laen;

    invoke-virtual {v0}, Laen;->a()V

    iget-object v0, v3, Laps;->d:Laen;

    new-instance v1, Laps$1;

    invoke-direct {v1, v3}, Laps$1;-><init>(Laps;)V

    invoke-virtual {v0, v1}, Laen;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, v3, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    new-instance v1, Laps$2;

    invoke-direct {v1, v3}, Laps$2;-><init>(Laps;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(Lcom/snapchat/android/ui/VerticalSwipeLayout$a;)V

    iget-object v0, v3, Laps;->d:Laen;

    iget-object v0, v0, Laen;->c:Landroid/view/View;

    move v1, v2

    goto :goto_1
.end method

.method public final a(Lzq;)V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->t:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 661
    return-void
.end method

.method protected final b(Laka;Lajk;Z)Lasi;
    .locals 9
    .param p2    # Lajk;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 503
    invoke-interface {p2}, Lajk;->e()Z

    move-result v0

    .line 504
    invoke-interface {p2}, Lajk;->f()Z

    move-result v1

    .line 507
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v6, 0x1

    .line 510
    :goto_0
    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->i:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/snapchat/android/ui/SnapView;->j:Lcom/snapchat/android/ui/SnapTimerView;

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->l:Laoh;

    invoke-virtual {p1}, Laka;->ag()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Laoh;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    iget v2, v0, Laoh;->c:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Laoh;->c:I

    rem-int/lit8 v0, v2, 0x2

    aget-object v7, v1, v0

    :goto_1
    invoke-virtual {p1}, Laka;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Laka;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lasl;

    invoke-direct {v0, p1, p2}, Lasl;-><init>(Laka;Lajk;)V

    :goto_2
    return-object v0

    .line 507
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 510
    :cond_1
    iget-object v1, v0, Laoh;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    iget v2, v0, Laoh;->d:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Laoh;->d:I

    rem-int/lit8 v0, v2, 0x2

    aget-object v7, v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lasf;

    invoke-static {}, Loe;->a()Loe;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lasf;-><init>(Laka;Lajk;Landroid/view/ViewGroup;ZLcom/snapchat/android/ui/SnapTimerView;ZLcom/snapchat/android/rendering/SnapMediaRenderer;Loe;)V

    goto :goto_2
.end method

.method public final b(Lzq;)V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->t:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 665
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    .line 181
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->b()V

    .line 207
    return-void
.end method

.method public final d()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 672
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

    .line 679
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 672
    goto :goto_0

    .line 674
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapView;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 675
    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->BACK_PRESSED:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    .line 676
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    new-instance v2, Lbey;

    invoke-direct {v2}, Lbey;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 679
    goto :goto_1
.end method

.method public getSnap()Laka;
    .locals 1
    .annotation build Lr;
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    invoke-interface {v0}, Lasi;->a()Laka;

    move-result-object v0

    goto :goto_0
.end method
