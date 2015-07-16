.class public Lcom/snapchat/android/fragments/stories/StoriesFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Laej$a;
.implements Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;
.implements Lps$b;


# annotations
.annotation build Lawj;
.end annotation


# instance fields
.field private A:Landroid/view/inputmethod/InputMethodManager;

.field private B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field private C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

.field private final D:Lzp;

.field private final E:Laki;

.field private F:Ljava/lang/String;

.field private G:I

.field private final H:Lain;

.field private I:Z

.field private final J:Lcom/snapchat/android/analytics/CameraEventAnalytics;

.field private final K:Lapl;

.field private final L:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final M:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private final N:Lnx;

.field private final O:Lbbb;

.field private final P:Lcom/squareup/otto/Bus;

.field private final Q:Lacz;

.field private R:Lbfz;

.field private S:Lakc;

.field private T:Lcom/snapchat/android/model/Friend;

.field private U:Landroid/view/View;

.field private V:Landroid/view/View;

.field private W:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private X:Landroid/widget/ImageView;

.field private Y:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

.field private Z:Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

.field protected a:Lakc;

.field private final aa:Lbal;

.field private ab:Lavn;

.field private final ac:Lps$a;

.field private final ad:Lakr;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lakc;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lakk;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lach;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

.field protected final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lahy;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Z

.field protected i:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Landroid/view/View;

.field protected k:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field protected final m:Lavw;

.field protected n:Z

.field protected final o:Ljava/lang/Runnable;

.field private final p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/StoryGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lagl;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lzz;

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lapm;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lafh;

.field private final x:Laej;

.field private y:Lady;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 21

    .prologue
    .line 283
    new-instance v1, Lzp;

    invoke-direct {v1}, Lzp;-><init>()V

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v2

    invoke-static {}, Lacz;->a()Lacz;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v4

    invoke-static {}, Lnx;->a()Lnx;

    move-result-object v5

    invoke-static {}, Laki;->a()Laki;

    move-result-object v6

    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v7

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v8

    invoke-static {}, Lain;->a()Lain;

    move-result-object v9

    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v10

    sget-object v11, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lavw;->a()Lavw;

    move-result-object v12

    invoke-static {}, Lzz;->a()Lzz;

    move-result-object v13

    invoke-static {}, Lapl;->a()Lapl;

    move-result-object v14

    invoke-static {}, Lbbb;->b()Lbbb;

    move-result-object v15

    invoke-static {}, Lbal;->a()Lbal;

    move-result-object v16

    invoke-static {}, Lafh;->a()Lafh;

    move-result-object v17

    invoke-static {}, Lavn;->d()Lavn;

    move-result-object v18

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v19

    invoke-static {}, Laej;->a()Laej;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v20}, Lcom/snapchat/android/fragments/stories/StoriesFragment;-><init>(Lzp;Lcom/snapchat/android/analytics/NetworkAnalytics;Lacz;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lnx;Laki;Lakk;Lcom/squareup/otto/Bus;Lain;Lcom/snapchat/android/analytics/CameraEventAnalytics;Ljavax/inject/Provider;Lavw;Lzz;Lapl;Lbbb;Lbal;Lafh;Lavn;Lakr;Laej;)V

    .line 291
    return-void
.end method

.method private constructor <init>(Lzp;Lcom/snapchat/android/analytics/NetworkAnalytics;Lacz;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lnx;Laki;Lakk;Lcom/squareup/otto/Bus;Lain;Lcom/snapchat/android/analytics/CameraEventAnalytics;Ljavax/inject/Provider;Lavw;Lzz;Lapl;Lbbb;Lbal;Lafh;Lavn;Lakr;Laej;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzp;",
            "Lcom/snapchat/android/analytics/NetworkAnalytics;",
            "Lacz;",
            "Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;",
            "Lnx;",
            "Laki;",
            "Lakk;",
            "Lcom/squareup/otto/Bus;",
            "Lain;",
            "Lcom/snapchat/android/analytics/CameraEventAnalytics;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Lavw;",
            "Lzz;",
            "Lapl;",
            "Lbbb;",
            "Lbal;",
            "Lafh;",
            "Lavn;",
            "Lakr;",
            "Laej;",
            ")V"
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 185
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p:Ljava/util/HashMap;

    .line 186
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Ljava/util/HashSet;

    .line 187
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r:Ljava/util/Set;

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u:Ljava/util/List;

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljava/util/List;

    .line 209
    const/4 v1, 0x2

    iput v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->z:I

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    .line 229
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->F:Ljava/lang/String;

    .line 237
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->I:Z

    .line 274
    new-instance v1, Lps$a;

    invoke-direct {v1, p0}, Lps$a;-><init>(Lps$b;)V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ac:Lps$a;

    .line 279
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->n:Z

    .line 1910
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$11;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$11;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->o:Ljava/lang/Runnable;

    .line 303
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v1

    invoke-interface {v1, p0}, Lazy;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    .line 304
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->D:Lzp;

    .line 305
    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->L:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 306
    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Q:Lacz;

    .line 307
    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->M:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 308
    iput-object p5, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Lnx;

    .line 309
    iput-object p6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->E:Laki;

    .line 310
    iput-object p7, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lakk;

    .line 311
    iput-object p8, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    .line 312
    iput-object p9, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->H:Lain;

    .line 313
    iput-object p10, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->J:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 314
    iput-object p11, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljavax/inject/Provider;

    .line 315
    iput-object p12, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->m:Lavw;

    .line 316
    iput-object p13, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Lzz;

    .line 317
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->K:Lapl;

    .line 318
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->O:Lbbb;

    .line 319
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->aa:Lbal;

    .line 320
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->w:Lafh;

    .line 321
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ab:Lavn;

    .line 322
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ad:Lakr;

    .line 323
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x:Laej;

    .line 324
    return-void
.end method

.method private A()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x0

    .line 1642
    .line 1644
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lakk;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lakc;

    invoke-virtual {v2}, Lakc;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lakk;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v4

    .line 1645
    if-nez v4, :cond_0

    .line 1646
    iput-object v10, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lakc;

    .line 1683
    :goto_0
    return-void

    :cond_0
    move v1, v0

    move v2, v0

    move v3, v0

    .line 1650
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1651
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakc;

    invoke-virtual {v0}, Lakc;->l()Ljava/lang/String;

    move-result-object v0

    .line 1653
    if-nez v2, :cond_1

    iget-object v5, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lakc;

    invoke-virtual {v5}, Lakc;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1654
    const/4 v2, 0x1

    .line 1657
    :cond_1
    iget-object v5, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lakk;

    invoke-virtual {v5, v0}, Lakk;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    .line 1658
    if-eqz v0, :cond_2

    .line 1659
    invoke-virtual {v4}, Lcom/snapchat/android/model/StoryCollection;->B()Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    move-result-object v5

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->B()Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    move-result-object v6

    if-ne v5, v6, :cond_3

    .line 1664
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->d()Lakl;

    move-result-object v0

    .line 1665
    invoke-virtual {v0}, Lakl;->U()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/snapchat/android/model/StoryCollection;->d()Lakl;

    move-result-object v0

    invoke-virtual {v0}, Lakl;->U()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    .line 1666
    add-int/lit8 v3, v1, 0x1

    .line 1650
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1668
    :cond_3
    invoke-virtual {v4}, Lcom/snapchat/android/model/StoryCollection;->B()Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->ordinal()I

    move-result v5

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->B()Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->ordinal()I

    move-result v0

    if-le v5, v0, :cond_2

    .line 1670
    add-int/lit8 v3, v1, 0x1

    goto :goto_2

    .line 1674
    :cond_4
    if-nez v2, :cond_6

    .line 1675
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v3, v0, :cond_5

    .line 1676
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lakc;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1678
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lakc;

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1681
    :cond_6
    iput-object v10, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lakc;

    goto/16 :goto_0
.end method

.method private B()V
    .locals 10
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1688
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapm;

    .line 1689
    invoke-virtual {v0}, Lapm;->f()V

    goto :goto_0

    .line 1695
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v0, v4

    move v2, v4

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakc;

    .line 1696
    invoke-virtual {v1}, Lakc;->e()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1702
    invoke-virtual {v1}, Lakc;->A()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1703
    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Lzz;

    invoke-virtual {v3}, Lzz;->e()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 1705
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    move v7, v2

    move v0, v8

    move v2, v4

    .line 1714
    :goto_2
    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    .line 1715
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Lzz;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Lzz;

    invoke-virtual {v2}, Lzz;->b()I

    move-result v2

    const/4 v3, 0x0

    sget-object v5, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->AUTO_LOADED:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual/range {v0 .. v5}, Lzz;->a(Lcom/snapchat/android/model/StoryCollection;ILaka;ZLcom/snapchat/android/controller/stories/StoryLoadingContext;)I

    .line 1722
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Lzz;

    invoke-virtual {v0}, Lzz;->d()I

    move-result v0

    if-ne v7, v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Lzz;

    invoke-virtual {v0}, Lzz;->e()I

    move-result v0

    if-eq v6, v0, :cond_6

    :cond_4
    move v0, v6

    move v2, v7

    .line 1724
    goto :goto_1

    .line 1708
    :cond_5
    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Lzz;

    invoke-virtual {v3}, Lzz;->d()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 1710
    add-int/lit8 v2, v2, 0x1

    move v6, v0

    move v7, v2

    move v0, v4

    move v2, v8

    goto :goto_2

    .line 1727
    :cond_6
    return-void

    :cond_7
    move v6, v0

    move v7, v2

    move v0, v4

    move v2, v4

    goto :goto_2
.end method

.method private C()V
    .locals 4
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1731
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->U:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1732
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->V:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1733
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Lbhr;

    invoke-virtual {v0}, Lbhr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1735
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1736
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1737
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Lbhr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    .line 1739
    :cond_0
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    .line 1740
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1741
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r()V

    .line 1742
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p()V

    .line 1743
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    invoke-virtual {v0}, Lakp;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    iget-object v2, v0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    sget-object v3, Lcom/snapchat/android/model/Friend$SuggestState;->EXISTS:Lcom/snapchat/android/model/Friend$SuggestState;

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestState;->NOT_SUGGESTION:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v2, v0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    goto :goto_0

    .line 1744
    :cond_2
    return-void
.end method

.method private D()V
    .locals 2

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1858
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1859
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagl;

    .line 1860
    invoke-virtual {v0}, Lagl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1861
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1864
    :cond_1
    return-void
.end method

.method private E()V
    .locals 3
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1876
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1877
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1878
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 1879
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->s()I

    move-result v0

    if-nez v0, :cond_0

    .line 1880
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1885
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 1886
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r()V

    .line 1888
    :cond_3
    return-void
.end method

.method private F()V
    .locals 2

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->post(Ljava/lang/Runnable;)Z

    .line 1908
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->F:Ljava/lang/String;

    return-object p1
.end method

.method private a(Laia;Lcom/snapchat/android/model/StoryGroup;)Ljava/util/List;
    .locals 3
    .param p1    # Laia;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/StoryGroup;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laia;",
            "Lcom/snapchat/android/model/StoryGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Lahy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1024
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1029
    :cond_0
    return-object v0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k:Lbhr;

    invoke-virtual {v0, p1}, Lbhr;->a(I)V

    .line 948
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->l:Lbhr;

    invoke-virtual {v0, p1}, Lbhr;->a(I)V

    .line 949
    return-void
.end method

.method private a(Lakp;)V
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1492
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-virtual {p1}, Lakp;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1493
    return-void
.end method

.method private a(Lbfg;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1579
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 1580
    if-nez v0, :cond_1

    .line 1638
    :cond_0
    :goto_0
    return-void

    .line 1582
    :cond_1
    iget-boolean v3, p1, Lbfg;->mWasSuccessful:Z

    .line 1583
    iget-object v1, p1, Lbfg;->mSyncAllResult:Lakp$a;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lbfg;->mSyncAllResult:Lakp$a;

    iget-boolean v1, v1, Lakp$a;->mStoriesUpdated:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    .line 1584
    :goto_1
    iget-boolean v4, p1, Lbfg;->mCalledOnLoginOrOnResume:Z

    .line 1585
    iget-object v5, p1, Lbfg;->mUUID:Ljava/util/UUID;

    .line 1587
    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v6}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1588
    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v6}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->e()V

    .line 1589
    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->L:Lcom/snapchat/android/analytics/NetworkAnalytics;

    invoke-virtual {v6, v5}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/util/UUID;)V

    .line 1592
    :cond_2
    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1593
    if-eqz v3, :cond_9

    .line 1594
    if-eqz v1, :cond_0

    .line 1599
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->z()V

    .line 1600
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x()V

    .line 1601
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y()V

    .line 1602
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lakp;)V

    .line 1604
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lakc;

    if-eqz v0, :cond_3

    .line 1605
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A()V

    .line 1607
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r()V

    .line 1608
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->D()V

    .line 1612
    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1613
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->L:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->STORY:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-virtual {v0, v1, v5}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 1615
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakc;

    invoke-virtual {v0}, Lakc;->z()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1617
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->L:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->STORY:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-virtual {v0, v1, v5}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 1621
    :cond_5
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B()V

    .line 1624
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lakk;

    invoke-virtual {v0}, Lakk;->f()Ljava/util/ArrayList;

    move-result-object v0

    .line 1625
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 1626
    iget-object v2, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    invoke-virtual {v2}, Lakl;->M()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    invoke-virtual {v2}, Lakl;->S()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1627
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Lzz;

    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    invoke-virtual {v2, v0}, Lzz;->b(Lakl;)Z

    goto :goto_2

    :cond_7
    move v1, v2

    .line 1583
    goto/16 :goto_1

    .line 1631
    :cond_8
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lakk;

    invoke-virtual {v0}, Lakk;->m()V

    .line 1633
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdv;

    invoke-direct {v1}, Lbdv;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1635
    :cond_9
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    const v0, 0x7f0c00dc

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesFragment;Lcom/snapchat/android/model/Friend;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lakp;->e(Lcom/snapchat/android/model/Friend;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lakk;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakk;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lakp;)V

    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y()V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r()V

    :cond_0
    return-void
.end method

.method private a(Lcom/snapchat/android/model/StoryGroup;Z)V
    .locals 10
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 837
    if-nez p1, :cond_0

    .line 927
    :goto_0
    return-void

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 840
    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->k()I

    move-result v4

    .line 841
    if-eqz p2, :cond_7

    if-lez v4, :cond_7

    .line 843
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v5

    .line 844
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLastVisiblePosition()I

    move-result v0

    .line 845
    sub-int v2, v0, v5

    move v1, v3

    .line 847
    :goto_1
    if-ge v1, v2, :cond_8

    .line 848
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahz;

    .line 850
    iget-object v0, v0, Lahz;->O:Lahy;

    .line 852
    instance-of v6, v0, Laia;

    if-eqz v6, :cond_1

    check-cast v0, Laia;

    invoke-virtual {v0}, Laia;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    .line 860
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 862
    add-int v0, v2, v4

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 866
    add-int/lit8 v0, v2, 0x1

    :goto_3
    if-gt v0, v1, :cond_2

    .line 867
    iget-object v7, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v7, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v7

    .line 868
    const/4 v8, 0x2

    new-array v8, v8, [I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    aput v9, v8, v3

    const/4 v9, 0x1

    aput v3, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-instance v9, Lcom/snapchat/android/fragments/stories/StoriesFragment$8;

    invoke-direct {v9, p0, v7}, Lcom/snapchat/android/fragments/stories/StoriesFragment$8;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 869
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 847
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 872
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 873
    add-int v0, v5, v1

    add-int/lit8 v0, v0, 0x1

    .line 874
    :goto_4
    add-int v1, v5, v2

    add-int/2addr v1, v4

    if-gt v0, v1, :cond_3

    .line 875
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 879
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lahy;

    .line 880
    add-int v0, v5, v2

    add-int/lit8 v0, v0, 0x1

    move v3, v0

    .line 881
    :goto_6
    add-int v0, v5, v2

    add-int/2addr v0, v4

    if-gt v3, v0, :cond_4

    .line 882
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahy;

    .line 883
    instance-of v8, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v8, :cond_5

    .line 884
    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 885
    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 886
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 881
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    .line 895
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 897
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 898
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 899
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 900
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesFragment$7;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Lcom/snapchat/android/model/StoryGroup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 923
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 925
    :cond_7
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r()V

    goto/16 :goto_0

    :cond_8
    move v2, v3

    goto/16 :goto_2
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 1117
    if-eqz p1, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    invoke-static {}, Lbal;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc

    if-gt v0, v1, :cond_3

    .line 1124
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 1125
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lakk;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lakk;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v2

    .line 1127
    if-eqz v2, :cond_2

    .line 1128
    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryCollection;->s()I

    move-result v3

    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryCollection;->e()I

    move-result v2

    if-eq v3, v2, :cond_2

    .line 1131
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1135
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lbhr;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->W:Lbhr;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lps$a;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ac:Lps$a;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C()V

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lbfz;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->R:Lbfz;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/discover/ui/DiscoverButtonView;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Y:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->w()V

    return-void
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u()V

    return-void
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->L:Lcom/snapchat/android/analytics/NetworkAnalytics;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    if-eqz v0, :cond_0

    new-instance v1, Lqq;

    invoke-direct {v1}, Lqq;-><init>()V

    invoke-virtual {v1}, Lqq;->execute()V

    iget-object v0, v0, Lakp;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lpx;

    invoke-direct {v0}, Lpx;-><init>()V

    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpx;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lakc;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->S:Lakc;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/model/Friend;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->T:Lcom/snapchat/android/model/Friend;

    return-object v0
.end method

.method static synthetic n(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->X:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected static o()I
    .locals 1

    .prologue
    .line 681
    const v0, 0x7f02012c

    return v0
.end method

.method static synthetic o(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lapl;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->K:Lapl;

    return-object v0
.end method

.method static synthetic p(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljava/util/List;

    return-object v0
.end method

.method static synthetic q(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lady;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y:Lady;

    return-object v0
.end method

.method private u()V
    .locals 5
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 661
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahy;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahy;

    .line 662
    instance-of v3, v0, Lapm;

    if-eqz v3, :cond_2

    .line 663
    check-cast v0, Lapm;

    .line 664
    invoke-virtual {v0}, Lapm;->d()V

    goto :goto_1

    .line 665
    :cond_2
    invoke-interface {v0}, Lahy;->p()Lavx;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 668
    invoke-interface {v0}, Lahy;->p()Lavx;

    move-result-object v0

    .line 670
    new-instance v3, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;

    invoke-direct {v3, p0, v2, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/content/Context;Lavx;)V

    invoke-static {v3}, Lbhp;->b(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 678
    :cond_3
    return-void
.end method

.method private v()V
    .locals 1
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 981
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 982
    if-nez v0, :cond_0

    .line 990
    :goto_0
    return-void

    .line 985
    :cond_0
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lakp;)V

    .line 986
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x()V

    .line 987
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y()V

    .line 988
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->z()V

    .line 989
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r()V

    goto :goto_0
.end method

.method private w()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1308
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->U:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1309
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->V:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1310
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Lbhr;

    invoke-virtual {v0, v2}, Lbhr;->a(I)V

    .line 1311
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1312
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Lbhr;

    invoke-virtual {v1}, Lbhr;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    .line 1314
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapm;

    .line 1498
    invoke-virtual {v0}, Lapm;->b()V

    goto :goto_0

    .line 1500
    :cond_0
    return-void
.end method

.method private y()V
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1506
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lakk;

    invoke-virtual {v1}, Lakk;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1507
    return-void
.end method

.method private z()V
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1536
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lakk;

    iget-object v1, v1, Lakk;->mStories:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1537
    return-void
.end method


# virtual methods
.method public final a(Lakc;)V
    .locals 5

    .prologue
    .line 705
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->S:Lakc;

    invoke-virtual {p1, v0}, Lakc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->J:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->DOUBLE_TAP:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    .line 707
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdz;

    invoke-virtual {p1}, Lakc;->l()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lbdz;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 713
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 719
    return-void

    .line 710
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->S:Lakc;

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/Friend;)V
    .locals 5

    .prologue
    .line 723
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->T:Lcom/snapchat/android/model/Friend;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/Friend;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->J:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->DOUBLE_TAP:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    .line 725
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdz;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lbdz;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 731
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$5;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 737
    return-void

    .line 728
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->T:Lcom/snapchat/android/model/Friend;

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 3

    .prologue
    .line 741
    iget-object v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    iget-object v0, v0, Lakl;->mClientId:Ljava/lang/String;

    .line 742
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->E:Laki;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->D:Lzp;

    invoke-virtual {v1, v0, v2}, Laki;->a(Ljava/lang/String;Lzp;)V

    .line 743
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d()V

    .line 744
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lagl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1893
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1894
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->D()V

    .line 1895
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r()V

    .line 1896
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y:Lady;

    if-eqz v0, :cond_0

    invoke-static {}, Lbal;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1977
    :cond_0
    :goto_0
    return-void

    .line 1975
    :cond_1
    iget v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->z:I

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;

    invoke-direct {v2, p0, p1, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1976
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->z:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final b(Lcom/snapchat/android/model/Friend;)Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 1515
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->z()V

    .line 1516
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r()V

    .line 1517
    return-void
.end method

.method protected final e()V
    .locals 3

    .prologue
    .line 1760
    invoke-static {}, Lnw;->d()V

    .line 1761
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Lnx;

    const-string v1, "story"

    const-string v2, "move_to_page"

    invoke-virtual {v0, v2, v1}, Lnx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 1763
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c()V

    .line 1764
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v0, :cond_0

    .line 1765
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->MY_FRIENDS:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a(Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;)J

    .line 1770
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->I:Z

    if-nez v0, :cond_1

    .line 1771
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->H:Lain;

    invoke-virtual {v0}, Lain;->b()V

    .line 1772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->I:Z

    .line 1775
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v1, Lbbu;

    invoke-direct {v1}, Lbbu;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1776
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lakk;

    invoke-virtual {v0}, Lakk;->m()V

    .line 1777
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdv;

    invoke-direct {v1}, Lbdv;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1778
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v1, Lbed;

    invoke-direct {v1}, Lbed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1779
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 1780
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u()V

    .line 1782
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1783
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapm;

    invoke-virtual {v0}, Lapm;->i()V

    .line 1782
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1786
    :cond_2
    invoke-static {}, Lbat;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1787
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbat;->a(Landroid/app/Activity;)V

    .line 1790
    :cond_3
    invoke-static {}, Lnw;->e()V

    .line 1791
    return-void
.end method

.method public final e(Z)V
    .locals 3

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v1, Lbbq;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1870
    return-void
.end method

.method protected final f()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1824
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 1825
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d()V

    .line 1826
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->M:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 1827
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Lnx;

    const-string v1, "story"

    const-string v3, "exit_page"

    invoke-virtual {v0, v3, v1}, Lnx;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahy;

    instance-of v4, v0, Lcom/snapchat/android/model/StoryCollection;

    if-eqz v4, :cond_0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "~"

    invoke-static {v1, v0}, Lavz;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    new-instance v1, Llz;

    invoke-direct {v1}, Llz;-><init>()V

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    :cond_2
    new-instance v3, Lma;

    invoke-direct {v3}, Lma;-><init>()V

    iput-object v0, v3, Lma;->posterId:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lma;->storyCellCount:Ljava/lang/Long;

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapm;

    invoke-virtual {v0, v3}, Lapm;->a(Lma;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 1833
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1834
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1835
    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {p0, v0, v2}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/model/StoryGroup;Z)V

    goto :goto_2

    .line 1837
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1839
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    if-eqz v0, :cond_5

    .line 1840
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setSelectionAfterHeaderView()V

    .line 1842
    :cond_5
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-eqz v0, :cond_6

    .line 1843
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C()V

    .line 1846
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapm;

    .line 1847
    invoke-virtual {v0}, Lapm;->h()V

    goto :goto_3

    .line 1850
    :cond_7
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->E()V

    .line 1851
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lakc;

    .line 1853
    invoke-static {}, Lbat;->a()V

    .line 1854
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 412
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ab:Lavn;

    invoke-virtual {v1}, Lavn;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    :goto_0
    return v0

    .line 416
    :cond_0
    iget-boolean v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-eqz v1, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C()V

    goto :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->w:Lafh;

    invoke-virtual {v0}, Lafh;->b()Z

    move-result v0

    goto :goto_0
.end method

.method protected final h()Lalv;
    .locals 4

    .prologue
    .line 328
    new-instance v0, Lalv;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "STORIES"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lalv;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method protected final h_()Z
    .locals 1

    .prologue
    .line 1933
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public final i()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 1521
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->STORIES:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1526
    const-string v0, "StoriesFragment"

    return-object v0
.end method

.method public final k()Lamt;
    .locals 1

    .prologue
    .line 1938
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$13;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$13;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->b()Z

    move-result v0

    .line 357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lapm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljava/util/List;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 426
    invoke-static {}, Lnw;->d()V

    .line 427
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onAttach(Landroid/app/Activity;)V

    .line 429
    check-cast p1, Lbfz;

    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->R:Lbfz;

    .line 430
    invoke-static {}, Lnw;->e()V

    .line 431
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 378
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 381
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->w:Lafh;

    invoke-virtual {v0}, Lafh;->c()V

    .line 382
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f0a03c3

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 362
    invoke-static {}, Lnw;->d()V

    .line 363
    const v0, 0x7f0400b2

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    .line 364
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Landroid/view/inputmethod/InputMethodManager;

    .line 365
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljava/util/List;

    new-instance v3, Lady;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->w:Lafh;

    const v0, 0x7f0a01d9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-direct {v3, v4, v5, v0}, Lady;-><init>(Landroid/content/Context;Lafh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V

    iput-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y:Lady;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y:Lady;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lapo;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Lzz;

    invoke-direct {v3, v4, v5}, Lapo;-><init>(Landroid/content/Context;Lzz;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const v0, 0x7f0a03c5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->U:Landroid/view/View;

    const v0, 0x7f0a03c2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->V:Landroid/view/View;

    const v0, 0x7f0a03c4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Y:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    new-instance v0, Lbhr;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a03d3

    new-instance v4, Lcom/snapchat/android/fragments/stories/StoriesFragment$1;

    invoke-direct {v4, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-direct {v0, v2, v7, v3, v4}, Lbhr;-><init>(Landroid/view/View;IILbhr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Lbhr;

    new-instance v0, Lbhr;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a002d

    new-instance v4, Lcom/snapchat/android/fragments/stories/StoriesFragment$12;

    invoke-direct {v4, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$12;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-direct {v0, v2, v7, v3, v4}, Lbhr;-><init>(Landroid/view/View;IILbhr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->W:Lbhr;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Y:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesFragment$15;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$15;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Q:Lacz;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesFragment$16;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$16;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    iget-object v3, v0, Lacz;->a:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v0, v0, Lacz;->a:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Q:Lacz;

    invoke-virtual {v0}, Lacz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Y:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->setFilled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->U:Landroid/view/View;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesFragment$17;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$17;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03c1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesFragment$18;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$18;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03c8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->X:Landroid/widget/ImageView;

    const v0, 0x7f0a03cb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/view/View;

    const v0, 0x7f0a03cc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Z:Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

    new-instance v0, Lbhr;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a03c9

    const v4, 0x7f0a03cf

    invoke-direct {v0, v2, v3, v4}, Lbhr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k:Lbhr;

    new-instance v0, Lbhr;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a03ca

    const v4, 0x7f0a03ce

    new-instance v5, Lcom/snapchat/android/fragments/stories/StoriesFragment$19;

    invoke-direct {v5, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$19;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-direct {v0, v2, v3, v4, v5}, Lbhr;-><init>(Landroid/view/View;IILbhr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->l:Lbhr;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->m:Lavw;

    invoke-direct {v0, v2, v3, p0, v4}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Lavw;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    const v0, 0x7f0a03c7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesFragment$20;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$20;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesFragment$21;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$21;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lari;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->O:Lbbb;

    const-string v4, "Stories"

    invoke-direct {v2, v3, v4}, Lari;-><init>(Lbbb;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lark;

    invoke-direct {v2, v0}, Lark;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const v0, 0x7f0a03c6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesFragment$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$2;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setPtrHandler(Lbvs;)V

    .line 367
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x101004d

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v0, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    :goto_1
    iput v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->G:I

    .line 368
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x:Laej;

    invoke-virtual {v0, p0}, Laej;->a(Laej$a;)V

    .line 369
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x:Laej;

    new-array v2, v6, [Laej$a;

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Laej;->a([Laej$a;)V

    .line 371
    invoke-static {}, Lnw;->e()V

    .line 373
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 365
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 367
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 386
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroy()V

    .line 387
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x:Laej;

    invoke-virtual {v0, p0}, Laej;->b(Laej$a;)V

    .line 388
    return-void
.end method

.method public onGetLocationDataTaskCompletedEvent(Lbcs;)V
    .locals 5
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1572
    new-instance v0, Lbfg;

    const/4 v1, 0x0

    new-instance v2, Lakp$a;

    invoke-direct {v2, v3, v3, v4, v3}, Lakp$a;-><init>(ZZZZ)V

    invoke-direct {v0, v1, v4, v3, v2}, Lbfg;-><init>(Ljava/util/UUID;ZZLakp$a;)V

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lbfg;)V

    .line 1576
    return-void
.end method

.method public onHideSnapStoryEvent(Lbcy;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1238
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    .line 1239
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1240
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v1, Lbet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbet;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1241
    return-void
.end method

.method public onLoadStoryMediaCompleteEvent(Lbdf;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakc;

    invoke-virtual {v0}, Lakc;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->L:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->STORY:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 1170
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1434
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 1435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lakc;

    .line 1436
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapm;

    .line 1437
    invoke-virtual {v0}, Lapm;->j()V

    goto :goto_0

    .line 1439
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->z:I

    .line 1440
    return-void
.end method

.method public onPostStorySnapRequestCompleteEvent(Lbdn;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1191
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d()V

    .line 1192
    return-void
.end method

.method public onRecentStoryCollectionCompletedViewingEvent(Lbdt;)V
    .locals 6
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1196
    iget-object v2, p1, Lbdt;->mStorySnap:Lakl;

    .line 1198
    invoke-static {}, Lbal;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, v2, Lakl;->mIsShared:Z

    if-eqz v0, :cond_0

    .line 1209
    :goto_0
    return-void

    .line 1203
    :cond_0
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakc;

    invoke-virtual {v0}, Lakc;->s()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lakc;->l()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lakl;->mUsername:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lakc;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lakc;

    invoke-virtual {v1}, Lakc;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lakc;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lakc;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lakc;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lakc;

    .line 1205
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1207
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u()V

    .line 1208
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B()V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public onRefreshFriendExistsTask(Lbdx;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1469
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbdw;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1450
    iget-object v0, p1, Lbdw;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 1451
    if-eqz v0, :cond_0

    iget-object v1, p1, Lbdw;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    if-ne v1, v2, :cond_0

    .line 1452
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x_()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1458
    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestType;->USERNAME:Lcom/snapchat/android/model/Friend$SuggestType;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

    .line 1463
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    .line 1464
    return-void

    .line 1460
    :cond_1
    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestType;->ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestType;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

    goto :goto_0
.end method

.method public onResetStoriesFragmentScrollEvent(Lbea;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1900
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->F()V

    .line 1901
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1388
    invoke-static {}, Lnw;->d()V

    .line 1389
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 1392
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->I:Z

    .line 1394
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapm;

    .line 1395
    invoke-virtual {v0}, Lapm;->k()V

    goto :goto_0

    .line 1398
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 1399
    if-eqz v0, :cond_2

    .line 1401
    iget-object v0, v0, Lakp;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1402
    new-instance v0, Lpx;

    invoke-direct {v0}, Lpx;-><init>()V

    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpx;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1404
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    .line 1406
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->F()V

    .line 1407
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lach;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_3
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->w()V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lakp;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lacg;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lacg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lacg;->show()V

    .line 1409
    :cond_4
    invoke-static {}, Lnw;->e()V

    .line 1410
    return-void
.end method

.method public onSanitizeStoriesFragmentEvent(Lbec;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 1148
    if-nez v0, :cond_0

    .line 1157
    :goto_0
    return-void

    .line 1151
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y()V

    .line 1152
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lakp;)V

    .line 1153
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lakc;

    if-eqz v0, :cond_1

    .line 1154
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A()V

    .line 1156
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r()V

    goto :goto_0
.end method

.method public onSharedStoryButtonClickedEvent(Lbeh;)V
    .locals 5
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1318
    iget-object v2, p1, Lbeh;->storyGroup:Lcom/snapchat/android/model/StoryGroup;

    .line 1320
    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryGroup;->e()Ljava/lang/String;

    move-result-object v3

    .line 1321
    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryGroup;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1322
    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryGroup;->g()Ljava/lang/String;

    move-result-object v0

    .line 1324
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1325
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryGroup;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const v2, 0x7f0c019b

    invoke-static {v1, v2, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1327
    :cond_0
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$9;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$9;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/content/Context;Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1333
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1334
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public onSharedStoryFriendButtonClickedEvent(Lbei;)V
    .locals 10
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 1339
    iget-object v6, p1, Lbei;->friend:Lcom/snapchat/android/model/Friend;

    .line 1341
    iget-object v0, v6, Lcom/snapchat/android/model/Friend;->mCustomTitle:Ljava/lang/String;

    .line 1342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1343
    iget-boolean v0, v6, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-eqz v0, :cond_1

    .line 1344
    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->e()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 1353
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lakk;

    iget-object v1, p1, Lbei;->friend:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakk;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v7

    .line 1354
    iget-object v3, v6, Lcom/snapchat/android/model/Friend;->mCustomDescription:Ljava/lang/String;

    .line 1355
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0c002b

    invoke-static {v8, v1, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1359
    :cond_0
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-array v1, v5, [Ljava/lang/Object;

    const v4, 0x7f0c0195

    invoke-static {v8, v4, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v5, [Ljava/lang/Object;

    const v5, 0x7f0c014f

    invoke-static {v8, v5, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/StoryCollection;Lbei;)V

    .line 1372
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1373
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1374
    return-void

    .line 1346
    :cond_1
    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    .line 1347
    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_2
    move-object v9, v0

    goto :goto_0
.end method

.method public onStoriesNotifyDatasetChangedEvent(Lbex;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1445
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u()V

    .line 1446
    return-void
.end method

.method public onStoryDismissAnimationEvent(Lbey;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Z:Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

    iget-object v0, v0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1234
    return-void
.end method

.method public onStorySnapDeleteEvent(Lbdj;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1186
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d()V

    .line 1187
    return-void
.end method

.method public onStorySnapPostEvent(Lbfa;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1181
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d()V

    .line 1182
    return-void
.end method

.method public onStoryThumbnailLoadedEvent(Lbfc;)V
    .locals 12
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1248
    iget-object v2, p1, Lbfc;->mStoriesThumbnailCacheItem:Lavx;

    .line 1250
    invoke-static {}, Lbal;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1255
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 1256
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v0

    .line 1257
    if-eqz v0, :cond_2

    .line 1258
    const v3, 0x7f0a0298

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    .line 1262
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1263
    invoke-virtual {v10}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v2, Lavx;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1269
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->m:Lavw;

    invoke-virtual {v0, v2}, Lavw;->a(Lavx;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v11, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3e800000    # 0.25f

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0xe6

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1273
    :cond_1
    return-void

    .line 1255
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method

.method public onSyncAllCompletedEvent(Lbfg;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1567
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lbfg;)V

    .line 1568
    return-void
.end method

.method public onToggleStoryEvent(Lbfl;)V
    .locals 12
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 691
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->F:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget-object v4, p1, Lbfl;->mStoryGroup:Lcom/snapchat/android/model/StoryGroup;

    .line 695
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    invoke-direct {p0, v4, v11}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/model/StoryGroup;Z)V

    goto :goto_0

    .line 699
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/snapchat/android/model/StoryGroup;->k()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v6, v0, v1

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v6, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahz;

    iget-object v0, v0, Lahz;->O:Lahy;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v9, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v9}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v7, v8, v7

    add-int/2addr v1, v7

    instance-of v7, v0, Laia;

    if-eqz v7, :cond_4

    check-cast v0, Laia;

    invoke-virtual {v0}, Laia;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->getHeaderHeight()I

    move-result v0

    add-int/2addr v0, v1

    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->X:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->X:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_6
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r()V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0, v11}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->X:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->X:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->G:I

    mul-int/2addr v0, v5

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v10, v10, v10, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$6;

    invoke-direct {v0, p0, v4}, Lcom/snapchat/android/fragments/stories/StoriesFragment$6;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Lcom/snapchat/android/model/StoryGroup;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->X:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v0, v3, v2, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setDrawingCacheEnabled(Z)V

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_2
.end method

.method public onUserLoadedEvent(Lbfq;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1161
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    .line 1162
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1163
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->n:Z

    .line 1165
    return-void
.end method

.method protected final p()V
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    if-nez v0, :cond_0

    .line 942
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->n:Z

    if-nez v0, :cond_2

    .line 938
    :cond_1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(I)V

    goto :goto_0

    .line 940
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(I)V

    goto :goto_0
.end method

.method protected final q()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1045
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 1046
    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    iget-boolean v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Lbhr;

    invoke-virtual {v1}, Lbhr;->a()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    move v2, v1

    .line 1053
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1056
    if-nez v2, :cond_6

    .line 1057
    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->k()I

    move-result v7

    if-lez v7, :cond_2

    instance-of v7, v1, Lajx;

    if-eqz v7, :cond_4

    new-instance v7, Laht;

    invoke-direct {v7}, Laht;-><init>()V

    invoke-direct {p0, v7, v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Laia;Lcom/snapchat/android/model/StoryGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v3, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_2

    :cond_3
    move v2, v3

    .line 1051
    goto :goto_1

    .line 1057
    :cond_4
    new-instance v7, Laia;

    invoke-direct {v7, v1}, Laia;-><init>(Lcom/snapchat/android/model/StoryGroup;)V

    invoke-direct {p0, v7, v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Laia;Lcom/snapchat/android/model/StoryGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1061
    :cond_6
    if-nez v2, :cond_8

    .line 1062
    invoke-static {}, Lbal;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1063
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapm;

    .line 1064
    invoke-virtual {v1}, Lapm;->k_()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1065
    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1072
    :cond_8
    if-nez v2, :cond_9

    .line 1073
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1076
    :cond_9
    invoke-direct {p0, v2}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Z)V

    .line 1079
    if-eqz v2, :cond_e

    .line 1080
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    new-instance v3, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1082
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {v0}, Lakp;->o()Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1085
    invoke-virtual {v0}, Lakp;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/Friend;

    .line 1086
    iget-boolean v6, v1, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v6, :cond_a

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1088
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1093
    :cond_b
    invoke-virtual {v0}, Lakp;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1095
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1096
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1099
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1100
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 1101
    iget-boolean v4, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v4, :cond_c

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1103
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1107
    :cond_d
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1108
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1111
    :cond_e
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u()V

    goto/16 :goto_0
.end method

.method protected final r()V
    .locals 1
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 1549
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    .line 1550
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t()V

    .line 1551
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1552
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p()V

    .line 1553
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u()V

    .line 1554
    return-void
.end method

.method protected final t()V
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 1559
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-eqz v0, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1561
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1563
    :cond_0
    return-void
.end method

.method public final x_()Ljava/lang/String;
    .locals 1
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Lbhr;

    invoke-virtual {v0}, Lbhr;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
