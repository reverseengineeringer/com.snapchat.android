.class public Lcom/snapchat/android/fragments/stories/StoriesFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;
.implements Lpb$b;


# annotations
.annotation build Lavl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/fragment/SnapchatFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;",
        "Lpb$b;"
    }
.end annotation


# instance fields
.field private A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field private B:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

.field private final C:Lyt;

.field private final D:Lajn;

.field private E:Ljava/lang/String;

.field private F:I

.field private final G:Lahr;

.field private H:Z

.field private final I:Lcom/snapchat/android/analytics/CameraEventAnalytics;

.field private final J:Laop;

.field private final K:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final L:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private final M:Lng;

.field private final N:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final O:Lbaa;

.field private final P:Lcom/squareup/otto/Bus;

.field private final Q:Labz;

.field private R:Lbfa;

.field private S:Lajg;

.field private T:Landroid/view/View;

.field private U:Landroid/view/View;

.field private V:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private W:Landroid/widget/ImageView;

.field private X:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

.field private Y:Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

.field private final Z:Lazm;

.field protected a:Lajg;

.field private aa:Laup;

.field private final ab:Lpb$a;

.field private final ac:Lajx;

.field private final ad:Laeh;

.field private ae:Lacy;

.field private af:Z

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajg;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lajq;

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

.field public e:Labh;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

.field protected final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lahb;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Z

.field i:Z

.field protected j:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Landroid/view/View;

.field protected l:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Landroid/widget/TextView;

.field protected final p:Lauy;

.field protected q:Z

.field protected final r:Ljava/lang/Runnable;

.field private final s:Ljava/util/HashMap;
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

.field private final t:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lafl;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lzd;

.field private final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laoq;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .locals 20

    .prologue
    .line 297
    new-instance v1, Lyt;

    invoke-direct {v1}, Lyt;-><init>()V

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v2

    invoke-static {}, Labz;->a()Labz;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v4

    invoke-static {}, Lng;->a()Lng;

    move-result-object v5

    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v6

    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v7

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v8

    invoke-static {}, Lahr;->a()Lahr;

    move-result-object v9

    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v10

    sget-object v11, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v12

    invoke-static {}, Lzd;->a()Lzd;

    move-result-object v13

    invoke-static {}, Laop;->a()Laop;

    move-result-object v14

    invoke-static {}, Lbaa;->a()Lbaa;

    move-result-object v15

    invoke-static {}, Lazm;->a()Lazm;

    move-result-object v16

    invoke-static {}, Laeh;->a()Laeh;

    move-result-object v17

    invoke-static {}, Laup;->d()Laup;

    move-result-object v18

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v19

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v19}, Lcom/snapchat/android/fragments/stories/StoriesFragment;-><init>(Lyt;Lcom/snapchat/android/analytics/NetworkAnalytics;Labz;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lng;Lajn;Lajq;Lcom/squareup/otto/Bus;Lahr;Lcom/snapchat/android/analytics/CameraEventAnalytics;Ljavax/inject/Provider;Lauy;Lzd;Laop;Lbaa;Lazm;Laeh;Laup;Lajx;)V

    .line 304
    return-void
.end method

.method private constructor <init>(Lyt;Lcom/snapchat/android/analytics/NetworkAnalytics;Labz;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lng;Lajn;Lajq;Lcom/squareup/otto/Bus;Lahr;Lcom/snapchat/android/analytics/CameraEventAnalytics;Ljavax/inject/Provider;Lauy;Lzd;Laop;Lbaa;Lazm;Laeh;Laup;Lajx;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt;",
            "Lcom/snapchat/android/analytics/NetworkAnalytics;",
            "Labz;",
            "Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;",
            "Lng;",
            "Lajn;",
            "Lajq;",
            "Lcom/squareup/otto/Bus;",
            "Lahr;",
            "Lcom/snapchat/android/analytics/CameraEventAnalytics;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Lauy;",
            "Lzd;",
            "Laop;",
            "Lbaa;",
            "Lazm;",
            "Laeh;",
            "Laup;",
            "Lajx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 196
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljava/util/HashMap;

    .line 197
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljava/util/HashSet;

    .line 198
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u:Ljava/util/Set;

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x:Ljava/util/List;

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y:Ljava/util/List;

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->E:Ljava/lang/String;

    .line 241
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->H:Z

    .line 249
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Z

    .line 250
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    .line 283
    new-instance v1, Lpb$a;

    invoke-direct {v1, p0}, Lpb$a;-><init>(Lpb$b;)V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ab:Lpb$a;

    .line 288
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Z

    .line 294
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->af:Z

    .line 1951
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$11;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$11;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    iput-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r:Ljava/lang/Runnable;

    .line 316
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v1

    invoke-interface {v1, p0}, Laza;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    .line 317
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lyt;

    .line 318
    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->K:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 319
    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Q:Labz;

    .line 320
    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->L:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 321
    iput-object p5, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->M:Lng;

    .line 322
    iput-object p6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->D:Lajn;

    .line 323
    iput-object p7, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lajq;

    .line 324
    iput-object p8, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    .line 325
    iput-object p9, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->G:Lahr;

    .line 326
    iput-object p10, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->I:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 327
    iput-object p11, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljavax/inject/Provider;

    .line 328
    iput-object p12, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p:Lauy;

    .line 329
    iput-object p13, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->w:Lzd;

    .line 330
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->J:Laop;

    .line 331
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->O:Lbaa;

    .line 332
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Z:Lazm;

    .line 333
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ad:Laeh;

    .line 334
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->aa:Laup;

    .line 335
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ac:Lajx;

    .line 336
    return-void
.end method

.method private A()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 1635
    .line 1637
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lajq;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lajg;

    invoke-virtual {v1}, Lajg;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajq;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v5

    .line 1638
    if-nez v5, :cond_0

    .line 1639
    iput-object v10, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lajg;

    .line 1676
    :goto_0
    return-void

    :cond_0
    move v1, v2

    move v3, v2

    move v4, v2

    .line 1643
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1644
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajg;

    invoke-virtual {v0}, Lajg;->h()Ljava/lang/String;

    move-result-object v0

    .line 1646
    if-nez v3, :cond_1

    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lajg;

    invoke-virtual {v6}, Lajg;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1647
    const/4 v3, 0x1

    .line 1650
    :cond_1
    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lajq;

    invoke-virtual {v6, v0}, Lajq;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    .line 1651
    if-eqz v0, :cond_2

    .line 1652
    invoke-virtual {v5}, Lcom/snapchat/android/model/StoryCollection;->F()Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    move-result-object v6

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->F()Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 1657
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 1658
    invoke-virtual {v0}, Lajr;->W()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/snapchat/android/model/StoryCollection;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    invoke-virtual {v0}, Lajr;->W()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    .line 1659
    add-int/lit8 v4, v1, 0x1

    .line 1643
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1661
    :cond_3
    invoke-virtual {v5}, Lcom/snapchat/android/model/StoryCollection;->F()Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->ordinal()I

    move-result v6

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->F()Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->ordinal()I

    move-result v0

    if-le v6, v0, :cond_2

    .line 1663
    add-int/lit8 v4, v1, 0x1

    goto :goto_2

    .line 1667
    :cond_4
    if-nez v3, :cond_6

    .line 1668
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v4, v0, :cond_5

    .line 1669
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lajg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1671
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lajg;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1674
    :cond_6
    iput-object v10, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lajg;

    goto/16 :goto_0
.end method

.method private B()V
    .locals 11
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x3

    const/4 v4, 0x0

    .line 1693
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoq;

    .line 1694
    invoke-virtual {v0}, Laoq;->f()V

    goto :goto_0

    .line 1700
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v0, v4

    move v3, v4

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajg;

    .line 1701
    invoke-virtual {v1}, Lajg;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1707
    invoke-virtual {v1}, Lajg;->E()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1708
    if-ge v0, v10, :cond_7

    .line 1710
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    move v7, v3

    move v0, v8

    move v3, v4

    .line 1719
    :goto_2
    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    .line 1720
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->w:Lzd;

    const/4 v3, 0x0

    sget-object v5, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->AUTO_LOADED:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual/range {v0 .. v5}, Lzd;->a(Lcom/snapchat/android/model/StoryCollection;ILaje;ZLcom/snapchat/android/controller/stories/StoryLoadingContext;)I

    .line 1727
    :cond_3
    if-ne v7, v2, :cond_4

    if-eq v6, v10, :cond_6

    :cond_4
    move v0, v6

    move v3, v7

    .line 1729
    goto :goto_1

    .line 1713
    :cond_5
    if-ge v3, v2, :cond_7

    .line 1715
    add-int/lit8 v3, v3, 0x1

    move v6, v0

    move v7, v3

    move v0, v4

    move v3, v8

    goto :goto_2

    .line 1732
    :cond_6
    return-void

    :cond_7
    move v6, v0

    move v7, v3

    move v0, v4

    move v3, v4

    goto :goto_2
.end method

.method private C()V
    .locals 4
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1736
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->T:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1737
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->U:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1738
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Lbgr;

    invoke-virtual {v0}, Lbgr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1740
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1741
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->z:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1742
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Lbgr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 1744
    :cond_0
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    .line 1745
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1746
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    .line 1747
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->o()V

    .line 1748
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    invoke-virtual {v0}, Lajv;->o()Ljava/util/List;

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

    .line 1749
    :cond_2
    return-void
.end method

.method private D()V
    .locals 4
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1866
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1867
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1870
    :cond_1
    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1896
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1897
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafl;

    .line 1898
    invoke-virtual {v0}, Lafl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1899
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1902
    :cond_1
    return-void
.end method

.method private F()V
    .locals 4
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1914
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1915
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1916
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 1917
    instance-of v1, v0, Lajo;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 1918
    check-cast v1, Lajo;

    invoke-virtual {v1}, Lajo;->q()V

    .line 1920
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1926
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 1927
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    .line 1929
    :cond_4
    return-void
.end method

.method private G()V
    .locals 2

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->post(Ljava/lang/Runnable;)Z

    .line 1949
    return-void
.end method

.method private J()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lahb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1997
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1998
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    if-eqz v0, :cond_0

    .line 1999
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2000
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2001
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahb;

    .line 2003
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2001
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2006
    :cond_0
    return-object v2
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->E:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lahd;Lcom/snapchat/android/model/StoryGroup;)Ljava/util/List;
    .locals 3
    .param p1    # Lahd;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/StoryGroup;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahd;",
            "Lcom/snapchat/android/model/StoryGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Lahb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1025
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1028
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1030
    :cond_0
    return-object v0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->l:Lbgr;

    invoke-virtual {v0, p1}, Lbgr;->a(I)V

    .line 949
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->m:Lbgr;

    invoke-virtual {v0, p1}, Lbgr;->a(I)V

    .line 950
    return-void
.end method

.method private a(Lajv;)V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1487
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-virtual {p1}, Lajv;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1488
    return-void
.end method

.method private a(Lbeh;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1573
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 1574
    if-nez v0, :cond_1

    .line 1631
    :cond_0
    :goto_0
    return-void

    .line 1576
    :cond_1
    iget-boolean v3, p1, Lbeh;->mWasSuccessful:Z

    .line 1577
    iget-object v1, p1, Lbeh;->mSyncAllResult:Lajv$a;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lbeh;->mSyncAllResult:Lajv$a;

    iget-boolean v1, v1, Lajv$a;->mStoriesUpdated:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    .line 1578
    :goto_1
    iget-boolean v4, p1, Lbeh;->mCalledOnLoginOrOnResume:Z

    .line 1579
    iget-object v5, p1, Lbeh;->mUUID:Ljava/util/UUID;

    .line 1581
    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v6}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1582
    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v6}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->e()V

    .line 1583
    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->K:Lcom/snapchat/android/analytics/NetworkAnalytics;

    invoke-virtual {v6, v5}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/util/UUID;)V

    .line 1586
    :cond_2
    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1587
    if-eqz v3, :cond_b

    .line 1588
    if-eqz v1, :cond_0

    .line 1593
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->z()V

    .line 1594
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y()V

    .line 1595
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lajv;)V

    .line 1597
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lajg;

    if-eqz v0, :cond_3

    .line 1598
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A()V

    .line 1600
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    .line 1601
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->E()V

    .line 1605
    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1606
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->K:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->STORY:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-virtual {v0, v1, v5}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 1608
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajg;

    invoke-virtual {v0}, Lajg;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1609
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->K:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->STORY:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-virtual {v0, v1, v5}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 1613
    :cond_5
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B()V

    .line 1614
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajg;

    invoke-virtual {v0}, Lajg;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->w:Lzd;

    invoke-virtual {v2, v0}, Lzd;->a(Lcom/snapchat/android/model/StoryCollection;)I

    goto :goto_2

    :cond_7
    move v1, v2

    .line 1577
    goto/16 :goto_1

    .line 1617
    :cond_8
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lajq;

    invoke-virtual {v0}, Lajq;->f()Ljava/util/ArrayList;

    move-result-object v0

    .line 1618
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 1619
    iget-object v2, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-virtual {v2}, Lajr;->L()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-virtual {v2}, Lajr;->R()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1620
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->w:Lzd;

    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-virtual {v2, v0}, Lzd;->b(Lajr;)Z

    goto :goto_3

    .line 1624
    :cond_a
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lajq;

    invoke-virtual {v0}, Lajq;->m()V

    .line 1626
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcv;

    invoke-direct {v1}, Lbcv;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1628
    :cond_b
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1629
    const v0, 0x7f0c00dc

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesFragment;Lcom/snapchat/android/model/Friend;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lajv;->e(Lcom/snapchat/android/model/Friend;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lajq;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajq;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lajv;)V

    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y()V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    :cond_0
    return-void
.end method

.method private a(Lcom/snapchat/android/model/StoryGroup;Z)V
    .locals 10
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 839
    if-nez p1, :cond_0

    .line 929
    :goto_0
    return-void

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 842
    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->k()I

    move-result v4

    .line 843
    if-eqz p2, :cond_7

    if-lez v4, :cond_7

    .line 845
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v5

    .line 846
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLastVisiblePosition()I

    move-result v0

    .line 847
    sub-int v2, v0, v5

    move v1, v3

    .line 849
    :goto_1
    if-ge v1, v2, :cond_8

    .line 850
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v0

    .line 851
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahc;

    .line 852
    iget-object v0, v0, Lahc;->P:Lahb;

    .line 854
    instance-of v6, v0, Lahd;

    if-eqz v6, :cond_1

    check-cast v0, Lahd;

    invoke-virtual {v0}, Lahd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    .line 862
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 864
    add-int v0, v2, v4

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 868
    add-int/lit8 v0, v2, 0x1

    :goto_3
    if-gt v0, v1, :cond_2

    .line 869
    iget-object v7, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v7, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v7

    .line 870
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

    .line 871
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 849
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 874
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 875
    add-int v0, v5, v1

    add-int/lit8 v0, v0, 0x1

    .line 876
    :goto_4
    add-int v1, v5, v2

    add-int/2addr v1, v4

    if-gt v0, v1, :cond_3

    .line 877
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 881
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

    check-cast v1, Lahb;

    .line 882
    add-int v0, v5, v2

    add-int/lit8 v0, v0, 0x1

    move v3, v0

    .line 883
    :goto_6
    add-int v0, v5, v2

    add-int/2addr v0, v4

    if-gt v3, v0, :cond_4

    .line 884
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahb;

    .line 885
    instance-of v8, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v8, :cond_5

    .line 886
    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 887
    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 888
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 883
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    .line 897
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 899
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 900
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 901
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 902
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesFragment$7;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Lcom/snapchat/android/model/StoryGroup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 925
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 927
    :cond_7
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    goto/16 :goto_0

    :cond_8
    move v2, v3

    goto/16 :goto_2
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 1118
    if-eqz p1, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    invoke-static {}, Lazm;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc

    if-gt v0, v1, :cond_3

    .line 1125
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

    .line 1126
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lajq;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lajq;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v2

    .line 1128
    if-eqz v2, :cond_2

    .line 1129
    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryCollection;->w()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryCollection;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v3, v2, :cond_2

    .line 1132
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1136
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lbgr;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->V:Lbgr;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lpb$a;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ab:Lpb$a;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C()V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lbfa;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->R:Lbfa;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/discover/ui/DiscoverButtonView;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->X:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->w()V

    return-void
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->z:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t()V

    return-void
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->K:Lcom/snapchat/android/analytics/NetworkAnalytics;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    if-eqz v0, :cond_0

    new-instance v1, Lqa;

    invoke-direct {v1}, Lqa;-><init>()V

    invoke-virtual {v1}, Lqa;->f()V

    iget-object v0, v0, Lajv;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lpg;

    invoke-direct {v0}, Lpg;-><init>()V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpg;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lajg;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->S:Lajg;

    return-object v0
.end method

.method protected static n()I
    .locals 1

    .prologue
    .line 702
    const v0, 0x7f02012c

    return v0
.end method

.method static synthetic n(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->W:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic o(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Laop;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->J:Laop;

    return-object v0
.end method

.method static synthetic p(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y:Ljava/util/List;

    return-object v0
.end method

.method private t()V
    .locals 4
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 663
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->J()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahb;

    .line 664
    instance-of v3, v0, Laoq;

    if-eqz v3, :cond_1

    .line 665
    check-cast v0, Laoq;

    .line 666
    invoke-virtual {v0}, Laoq;->d()V

    goto :goto_0

    .line 667
    :cond_1
    invoke-interface {v0}, Lahb;->m()Lauz;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 670
    invoke-interface {v0}, Lahb;->m()Lauz;

    move-result-object v0

    .line 672
    new-instance v3, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/content/Context;Lauz;)V

    invoke-static {v3}, Lbgp;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 680
    :cond_2
    return-void
.end method

.method private u()V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 694
    invoke-static {}, Lajx;->aQ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->n:Lbgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 699
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->n:Lbgr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    goto :goto_0
.end method

.method private v()V
    .locals 1
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 982
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 983
    if-nez v0, :cond_0

    .line 991
    :goto_0
    return-void

    .line 986
    :cond_0
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lajv;)V

    .line 987
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x()V

    .line 988
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y()V

    .line 989
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->z()V

    .line 990
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    goto :goto_0
.end method

.method private w()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1311
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->T:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1312
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->U:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1313
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Lbgr;

    invoke-virtual {v0, v2}, Lbgr;->a(I)V

    .line 1314
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1315
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->z:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Lbgr;

    invoke-virtual {v1}, Lbgr;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    .line 1317
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoq;

    .line 1492
    invoke-virtual {v0}, Laoq;->b()V

    goto :goto_0

    .line 1494
    :cond_0
    return-void
.end method

.method private y()V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1500
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lajq;

    invoke-virtual {v1}, Lajq;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1501
    return-void
.end method

.method private z()V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1530
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lajq;

    iget-object v1, v1, Lajq;->mStories:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1531
    return-void
.end method


# virtual methods
.method public final a(Lajg;)V
    .locals 5

    .prologue
    .line 726
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->S:Lajg;

    invoke-virtual {p1, v0}, Lajg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->I:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->DOUBLE_TAP:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    .line 728
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcz;

    invoke-virtual {p1}, Lajg;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lbcz;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 734
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$5;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 740
    return-void

    .line 731
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->S:Lajg;

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 3

    .prologue
    .line 744
    iget-object v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    iget-object v0, v0, Lajr;->mClientId:Ljava/lang/String;

    .line 745
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->D:Lajn;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lyt;

    invoke-virtual {v1, v0, v2}, Lajn;->a(Ljava/lang/String;Lyt;)V

    .line 746
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d()V

    .line 747
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lafl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1934
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1935
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->E()V

    .line 1936
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    .line 1937
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 387
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 1509
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->z()V

    .line 1510
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    .line 1511
    return-void
.end method

.method protected final e()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 1765
    invoke-static {}, Lnf;->d()V

    .line 1766
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->M:Lng;

    const-string v1, "story"

    const-string v2, "move_to_page"

    invoke-virtual {v0, v2, v1}, Lng;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 1768
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c()V

    .line 1769
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v0, :cond_0

    .line 1770
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->MY_FRIENDS:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a(Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;)J

    .line 1775
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->H:Z

    if-nez v0, :cond_1

    .line 1776
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->G:Lahr;

    invoke-virtual {v0}, Lahr;->b()V

    .line 1777
    iput-boolean v8, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->H:Z

    .line 1780
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v1, Lbat;

    invoke-direct {v1}, Lbat;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1781
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lajq;

    invoke-virtual {v0}, Lajq;->m()V

    .line 1782
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcv;

    invoke-direct {v1}, Lbcv;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1783
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdd;

    invoke-direct {v1}, Lbdd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1784
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 1785
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t()V

    .line 1787
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u()V

    .line 1788
    invoke-static {}, Lajx;->bz()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lajx;->bA()V

    iget-object v7, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v0, Lbbg;

    const v1, 0x7f0c029e

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/4 v4, -0x1

    const-string v6, "StoriesFragment"

    invoke-direct/range {v0 .. v6}, Lbbg;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZLjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1790
    :cond_2
    invoke-static {}, Lazu;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1791
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lazu;->a(Landroid/app/Activity;)V

    .line 1794
    :cond_3
    iput-boolean v8, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Z

    .line 1795
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->J()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahb;

    instance-of v1, v0, Lajo;

    if-eqz v1, :cond_4

    check-cast v0, Lajo;

    invoke-virtual {v0}, Lajo;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1796
    :cond_8
    invoke-static {}, Lnf;->e()V

    .line 1797
    return-void
.end method

.method public final e(Z)V
    .locals 3

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v1, Lbap;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbap;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1908
    return-void
.end method

.method protected final f()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1830
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 1831
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d()V

    .line 1832
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->L:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 1833
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->M:Lng;

    const-string v1, "story"

    const-string v2, "exit_page"

    invoke-virtual {v0, v2, v1}, Lng;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahb;

    instance-of v3, v0, Lcom/snapchat/android/model/StoryCollection;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, ","

    invoke-static {v1, v0}, Lavb;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    new-instance v1, Llh;

    invoke-direct {v1}, Llh;-><init>()V

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    :cond_2
    new-instance v1, Lli;

    invoke-direct {v1}, Lli;-><init>()V

    iput-object v0, v1, Lli;->posterId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lli;->storyCellCount:Ljava/lang/Long;

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 1839
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1840
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1841
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {p0, v0, v6}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/model/StoryGroup;Z)V

    goto :goto_1

    .line 1843
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1845
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    if-eqz v0, :cond_4

    .line 1846
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setSelectionAfterHeaderView()V

    .line 1848
    :cond_4
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-eqz v0, :cond_5

    .line 1849
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C()V

    .line 1852
    :cond_5
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->F()V

    .line 1853
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lajg;

    .line 1855
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u()V

    .line 1857
    invoke-static {}, Lazu;->a()V

    .line 1859
    iput-boolean v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Z

    .line 1860
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->D()V

    .line 1861
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 405
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->aa:Laup;

    invoke-virtual {v1}, Laup;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    :goto_0
    return v0

    .line 409
    :cond_0
    iget-boolean v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-eqz v1, :cond_1

    .line 410
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C()V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ad:Laeh;

    invoke-virtual {v0}, Laeh;->b()Z

    move-result v0

    goto :goto_0
.end method

.method protected final h()Lala;
    .locals 4

    .prologue
    .line 340
    new-instance v0, Lala;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "STORIES"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lala;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public final i()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 1515
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->STORIES:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1520
    const-string v0, "StoriesFragment"

    return-object v0
.end method

.method protected final j_()Z
    .locals 1

    .prologue
    .line 1974
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public final k()Lalw;
    .locals 1

    .prologue
    .line 1979
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$13;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$13;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    return v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laoq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y:Ljava/util/List;

    return-object v0
.end method

.method protected final o()V
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    if-nez v0, :cond_0

    .line 943
    :goto_0
    return-void

    .line 938
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

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Z

    if-nez v0, :cond_2

    .line 939
    :cond_1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(I)V

    goto :goto_0

    .line 941
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 419
    invoke-static {}, Lnf;->d()V

    .line 420
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onAttach(Landroid/app/Activity;)V

    .line 422
    check-cast p1, Lbfa;

    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->R:Lbfa;

    .line 423
    invoke-static {}, Lnf;->e()V

    .line 424
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 380
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 381
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader$71be8de6(ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 382
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2011
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 2019
    :goto_0
    return-object v0

    .line 2013
    :pswitch_0
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    sget-object v4, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->a:[Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2011
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f0a03c6

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 366
    invoke-static {}, Lnf;->d()V

    .line 367
    const v0, 0x7f0400b0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    .line 368
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->z:Landroid/view/inputmethod/InputMethodManager;

    .line 369
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y:Ljava/util/List;

    new-instance v3, Lacy;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ad:Laeh;

    const v0, 0x7f0a01db

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-direct {v3, v4, v5, v0}, Lacy;-><init>(Landroid/content/Context;Laeh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V

    iput-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ae:Lacy;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ae:Lacy;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laos;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->w:Lzd;

    invoke-direct {v3, v4, v5}, Laos;-><init>(Landroid/content/Context;Lzd;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const v0, 0x7f0a03c8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->T:Landroid/view/View;

    const v0, 0x7f0a03c5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->U:Landroid/view/View;

    const v0, 0x7f0a03c7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->X:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a03da

    new-instance v4, Lcom/snapchat/android/fragments/stories/StoriesFragment$1;

    invoke-direct {v4, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-direct {v0, v2, v7, v3, v4}, Lbgr;-><init>(Landroid/view/View;IILbgr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Lbgr;

    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a002c

    new-instance v4, Lcom/snapchat/android/fragments/stories/StoriesFragment$12;

    invoke-direct {v4, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$12;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-direct {v0, v2, v7, v3, v4}, Lbgr;-><init>(Landroid/view/View;IILbgr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->V:Lbgr;

    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a03d0

    const v4, 0x7f0a03d2

    new-instance v5, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;

    invoke-direct {v5, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-direct {v0, v2, v3, v4, v5}, Lbgr;-><init>(Landroid/view/View;IILbgr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->n:Lbgr;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->X:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesFragment$15;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$15;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Q:Labz;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesFragment$16;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$16;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    iget-object v3, v0, Labz;->a:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v0, v0, Labz;->a:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Q:Labz;

    invoke-virtual {v0}, Labz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->X:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a()V

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->T:Landroid/view/View;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesFragment$17;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$17;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03c4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesFragment$18;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$18;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u()V

    const v0, 0x7f0a03cc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->W:Landroid/widget/ImageView;

    const v0, 0x7f0a03cf

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k:Landroid/view/View;

    const v0, 0x7f0a03d1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Y:Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a03cd

    const v4, 0x7f0a03d6

    invoke-direct {v0, v2, v3, v4}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->l:Lbgr;

    new-instance v0, Lbgr;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    const v3, 0x7f0a03ce

    const v4, 0x7f0a03d5

    new-instance v5, Lcom/snapchat/android/fragments/stories/StoriesFragment$19;

    invoke-direct {v5, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$19;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-direct {v0, v2, v3, v4, v5}, Lbgr;-><init>(Landroid/view/View;IILbgr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->m:Lbgr;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p:Lauy;

    invoke-direct {v0, v2, v3, p0, v4}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Lauy;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    const v0, 0x7f0a03cb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesFragment$20;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$20;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesFragment$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$2;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laql;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->O:Lbaa;

    const-string v4, "Stories"

    invoke-direct {v2, v3, v4}, Laql;-><init>(Lbaa;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laqn;

    invoke-direct {v2, v0}, Laqn;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const v0, 0x7f0a03ca

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setPtrHandler(Lbur;)V

    .line 371
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

    move-result-object v1

    const v4, 0x101004d

    invoke-virtual {v1, v4, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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
    iput v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->F:I

    .line 373
    invoke-static {}, Lnf;->e()V

    .line 375
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 369
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 371
    goto :goto_1
.end method

.method public onGetLocationDataTaskCompletedEvent(Lbbs;)V
    .locals 5
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1566
    new-instance v0, Lbeh;

    const/4 v1, 0x0

    new-instance v2, Lajv$a;

    invoke-direct {v2, v3, v3, v4, v3}, Lajv$a;-><init>(ZZZZ)V

    invoke-direct {v0, v1, v4, v3, v2}, Lbeh;-><init>(Ljava/util/UUID;ZZLajv$a;)V

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lbeh;)V

    .line 1570
    return-void
.end method

.method public onHideSnapStoryEvent(Lbby;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1241
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    .line 1242
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1243
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbdt;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1244
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 184
    check-cast p2, Landroid/database/Cursor;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ae:Lacy;

    if-eqz v2, :cond_0

    invoke-static {}, Lazm;->d()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    const-string v3, "StoriesFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onLoadFinished - loaderId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ae:Lacy;

    iget-boolean v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->af:Z

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, p2, v0}, Lacy;->a(Landroid/database/Cursor;Z)V

    iput-boolean v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->af:Z

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadStoryMediaCompleteEvent(Lbcf;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajg;

    invoke-virtual {v0}, Lajg;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->K:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->STORY:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 1171
    :cond_0
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ae:Lacy;

    if-eqz v0, :cond_0

    invoke-static {}, Lazm;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2050
    :cond_0
    :goto_0
    return-void

    .line 2049
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->ae:Lacy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lacy;->a(Landroid/database/Cursor;Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1433
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 1434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lajg;

    .line 1435
    return-void
.end method

.method public onPostStorySnapRequestCompleteEvent(Lbcn;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d()V

    .line 1193
    return-void
.end method

.method public onRecentStoryCollectionCompletedViewingEvent(Lbct;)V
    .locals 5
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1203
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajg;

    invoke-virtual {v0}, Lajg;->w()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lajg;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lbct;->mStorySnap:Lajr;

    iget-object v4, v4, Lajr;->mUsername:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lajg;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lajg;

    invoke-virtual {v1}, Lajg;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lajg;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lajg;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lajg;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lajg;

    .line 1206
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x()V

    .line 1208
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1210
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t()V

    .line 1211
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B()V

    .line 1212
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public onRefreshFriendExistsTask(Lbcx;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1464
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbcw;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1445
    iget-object v0, p1, Lbcw;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 1446
    if-eqz v0, :cond_0

    iget-object v1, p1, Lbcw;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    if-ne v1, v2, :cond_0

    .line 1447
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1452
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y_()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1453
    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestType;->USERNAME:Lcom/snapchat/android/model/Friend$SuggestType;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

    .line 1458
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    .line 1459
    return-void

    .line 1455
    :cond_1
    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestType;->ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestType;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

    goto :goto_0
.end method

.method public onResetStoriesFragmentScrollEvent(Lbda;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1941
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->G()V

    .line 1942
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1391
    invoke-static {}, Lnf;->d()V

    .line 1392
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 1395
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->H:Z

    .line 1397
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 1398
    if-eqz v0, :cond_1

    .line 1400
    iget-object v0, v0, Lajv;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1401
    new-instance v0, Lpg;

    invoke-direct {v0}, Lpg;-><init>()V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpg;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1403
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    .line 1405
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->G()V

    .line 1406
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Labh;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->w()V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lajv;->a(Landroid/content/Context;)Lajv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lajv;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Labg;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Labg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Labg;->show()V

    .line 1408
    :cond_3
    invoke-static {}, Lnf;->e()V

    .line 1409
    return-void
.end method

.method public onSanitizeStoriesFragmentEvent(Lbdc;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 1149
    if-nez v0, :cond_0

    .line 1158
    :goto_0
    return-void

    .line 1152
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y()V

    .line 1153
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lajv;)V

    .line 1154
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lajg;

    if-eqz v0, :cond_1

    .line 1155
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A()V

    .line 1157
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    goto :goto_0
.end method

.method public onSharedStoryButtonClickedEvent(Lbdh;)V
    .locals 5
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1321
    iget-object v2, p1, Lbdh;->storyGroup:Lcom/snapchat/android/model/StoryGroup;

    .line 1323
    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryGroup;->e()Ljava/lang/String;

    move-result-object v3

    .line 1324
    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryGroup;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1325
    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryGroup;->g()Ljava/lang/String;

    move-result-object v0

    .line 1327
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1328
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryGroup;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const v2, 0x7f0c019b

    invoke-static {v1, v2, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1330
    :cond_0
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$9;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$9;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/content/Context;Ljava/lang/String;)V

    .line 1335
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1336
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1337
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public onSharedStoryFriendButtonClickedEvent(Lbdi;)V
    .locals 10
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 1342
    iget-object v6, p1, Lbdi;->friend:Lcom/snapchat/android/model/Friend;

    .line 1344
    iget-object v0, v6, Lcom/snapchat/android/model/Friend;->mCustomTitle:Ljava/lang/String;

    .line 1345
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1346
    iget-boolean v0, v6, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-eqz v0, :cond_1

    .line 1347
    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->k()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 1356
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lajq;

    iget-object v1, p1, Lbdi;->friend:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajq;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v7

    .line 1357
    iget-object v3, v6, Lcom/snapchat/android/model/Friend;->mCustomDescription:Ljava/lang/String;

    .line 1358
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->k()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0c002b

    invoke-static {v8, v1, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1362
    :cond_0
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-array v1, v5, [Ljava/lang/Object;

    const v4, 0x7f0c0195

    invoke-static {v8, v4, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v5, [Ljava/lang/Object;

    const v5, 0x7f0c014f

    invoke-static {v8, v5, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/StoryCollection;Lbdi;)V

    .line 1375
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1376
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1377
    return-void

    .line 1349
    :cond_1
    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    .line 1350
    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1351
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

.method public onSponsoredStoryViewingStartedEvent(Lbdv;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1198
    return-void
.end method

.method public onStoriesNotifyDatasetChangedEvent(Lbdy;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1440
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t()V

    .line 1441
    return-void
.end method

.method public onStoryDismissAnimationEvent(Lbdz;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Y:Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

    iget-object v0, v0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1237
    return-void
.end method

.method public onStorySnapDeleteEvent(Lbcj;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1187
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d()V

    .line 1188
    return-void
.end method

.method public onStorySnapPostEvent(Lbeb;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d()V

    .line 1183
    return-void
.end method

.method public onStoryThumbnailLoadedEvent(Lbed;)V
    .locals 12
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1251
    iget-object v2, p1, Lbed;->mStoriesThumbnailCacheItem:Lauz;

    .line 1253
    invoke-static {}, Lazm;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1258
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 1259
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v0

    .line 1260
    if-eqz v0, :cond_2

    .line 1261
    const v3, 0x7f0a0297

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    .line 1265
    if-eqz v10, :cond_2

    .line 1266
    invoke-virtual {v10}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v2, Lauz;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1272
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p:Lauy;

    invoke-virtual {v0, v2}, Lauy;->a(Lauz;)Landroid/graphics/Bitmap;

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

    .line 1276
    :cond_1
    return-void

    .line 1258
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method

.method public onSyncAllCompletedEvent(Lbeh;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1561
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lbeh;)V

    .line 1562
    return-void
.end method

.method public onToggleStoryEvent(Lbem;)V
    .locals 11
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 712
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->E:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v4, p1, Lbem;->mStoryGroup:Lcom/snapchat/android/model/StoryGroup;

    .line 716
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 717
    invoke-direct {p0, v4, v10}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/model/StoryGroup;Z)V

    goto :goto_0

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljava/util/HashSet;

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
    move v1, v2

    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v0, v6

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahc;

    iget-object v0, v0, Lahc;->P:Lahb;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v8}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int v6, v7, v6

    add-int/2addr v3, v6

    instance-of v6, v0, Lahd;

    if-eqz v6, :cond_4

    check-cast v0, Lahd;

    invoke-virtual {v0}, Lahd;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->getHeaderHeight()I

    move-result v0

    add-int/2addr v0, v3

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->W:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->W:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->mFragmentLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_6
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0, v10}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->W:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->W:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->F:I

    mul-int/2addr v0, v5

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v9, v9, v9, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$6;

    invoke-direct {v0, p0, v4}, Lcom/snapchat/android/fragments/stories/StoriesFragment$6;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Lcom/snapchat/android/model/StoryGroup;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->W:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v0, v2, v1, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setDrawingCacheEnabled(Z)V

    goto :goto_3

    :cond_8
    move v1, v3

    goto :goto_2
.end method

.method public onUserLoadedEvent(Lber;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1162
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    .line 1163
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1164
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Z

    .line 1166
    return-void
.end method

.method protected final p()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1046
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 1047
    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1052
    :cond_1
    iget-boolean v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Lbgr;

    invoke-virtual {v1}, Lbgr;->a()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    move v2, v1

    .line 1054
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1057
    if-nez v2, :cond_6

    .line 1058
    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljava/util/HashMap;

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

    instance-of v7, v1, Lajb;

    if-eqz v7, :cond_4

    new-instance v7, Lagw;

    invoke-direct {v7}, Lagw;-><init>()V

    invoke-direct {p0, v7, v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lahd;Lcom/snapchat/android/model/StoryGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v3, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_2

    :cond_3
    move v2, v3

    .line 1052
    goto :goto_1

    .line 1058
    :cond_4
    new-instance v7, Lahd;

    invoke-direct {v7, v1}, Lahd;-><init>(Lcom/snapchat/android/model/StoryGroup;)V

    invoke-direct {p0, v7, v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lahd;Lcom/snapchat/android/model/StoryGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1062
    :cond_6
    if-nez v2, :cond_8

    .line 1063
    invoke-static {}, Lazm;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1064
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoq;

    .line 1065
    invoke-virtual {v1}, Laoq;->m_()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1066
    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1073
    :cond_8
    if-nez v2, :cond_9

    .line 1074
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1077
    :cond_9
    invoke-direct {p0, v2}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Z)V

    .line 1080
    if-eqz v2, :cond_e

    .line 1081
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    new-instance v3, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1083
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {v0}, Lajv;->o()Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1086
    invoke-virtual {v0}, Lajv;->n()Ljava/util/List;

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

    .line 1087
    iget-boolean v6, v1, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v6, :cond_a

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

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

    .line 1089
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1094
    :cond_b
    invoke-virtual {v0}, Lajv;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1096
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1097
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1101
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

    .line 1102
    iget-boolean v4, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v4, :cond_c

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1104
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1108
    :cond_d
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1109
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1112
    :cond_e
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t()V

    goto/16 :goto_0
.end method

.method protected final q()V
    .locals 1
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 1543
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p()V

    .line 1544
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r()V

    .line 1545
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1546
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->o()V

    .line 1547
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t()V

    .line 1548
    return-void
.end method

.method protected final r()V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 1553
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-eqz v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1555
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1557
    :cond_0
    return-void
.end method

.method public final y_()Ljava/lang/String;
    .locals 1
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Lbgr;

    invoke-virtual {v0}, Lbgr;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
