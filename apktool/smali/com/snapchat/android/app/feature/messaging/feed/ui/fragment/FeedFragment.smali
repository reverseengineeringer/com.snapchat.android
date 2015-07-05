.class public Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$a;
.implements Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$b;
.implements Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$c;
.implements Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;
.implements Lus$a;
.implements Lve;
.implements Lvg$a;
.implements Lyu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/fragment/SnapchatFragment;",
        "Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$a",
        "<",
        "Lux;",
        ">;",
        "Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$b",
        "<",
        "Lux;",
        ">;",
        "Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$c",
        "<",
        "Lux;",
        ">;",
        "Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d",
        "<",
        "Lux;",
        ">;",
        "Lus$a;",
        "Lve;",
        "Lvg$a;",
        "Lyu;"
    }
.end annotation


# static fields
.field private static final M:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/notification/AndroidNotificationManager$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Lajx;

.field private final B:Lni;

.field private C:F

.field private final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lut;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Luy;

.field private F:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

.field private G:Lut;

.field private H:Luv;

.field private I:Lus;

.field private J:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d",
            "<",
            "Luw;",
            ">;"
        }
    .end annotation
.end field

.field private K:Z

.field private L:Z

.field private final N:Ljava/lang/Runnable;

.field public a:Lazo;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Lcom/snapchat/android/ui/SnapView;

.field private c:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/support/v7/widget/LinearLayoutManager;

.field private f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

.field private g:Lvg;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/view/View;

.field private m:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Laol;

.field private final r:Luu;

.field private final s:Laup;

.field private final t:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private final v:Lng;

.field private final w:Lcom/snapchat/android/analytics/CameraEventAnalytics;

.field private final x:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final y:Lbaa;

.field private final z:Lbgk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 187
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ADDFRIEND:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->TYPING:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-static {v0, v1}, Ldi;->a(Ljava/lang/Object;Ljava/lang/Object;)Ldi;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->M:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .prologue
    .line 193
    invoke-static {}, Laol;->a()Laol;

    move-result-object v1

    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v2

    invoke-static {}, Laup;->d()Laup;

    move-result-object v3

    sget-object v4, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v6

    invoke-static {}, Lng;->a()Lng;

    move-result-object v7

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v8

    invoke-static {}, Lni;->a()Lni;

    move-result-object v9

    invoke-static {}, Lbaa;->a()Lbaa;

    move-result-object v10

    new-instance v11, Lbgk;

    invoke-direct {v11}, Lbgk;-><init>()V

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v12

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;-><init>(Laol;Luu;Laup;Ljavax/inject/Provider;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lng;Lcom/snapchat/android/analytics/NetworkAnalytics;Lni;Lbaa;Lbgk;Lajx;)V

    .line 197
    return-void
.end method

.method private constructor <init>(Laol;Luu;Laup;Ljavax/inject/Provider;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lng;Lcom/snapchat/android/analytics/NetworkAnalytics;Lni;Lbaa;Lbgk;Lajx;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laol;",
            "Luu;",
            "Laup;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;",
            "Lcom/snapchat/android/analytics/CameraEventAnalytics;",
            "Lng;",
            "Lcom/snapchat/android/analytics/NetworkAnalytics;",
            "Lni;",
            "Lbaa;",
            "Lbgk;",
            "Lajx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 944
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$7;

    invoke-direct {v0, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$7;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->N:Ljava/lang/Runnable;

    .line 207
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    .line 209
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->q:Laol;

    .line 210
    iput-object p2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->r:Luu;

    .line 211
    iput-object p3, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->s:Laup;

    .line 212
    iput-object p4, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->t:Ljavax/inject/Provider;

    .line 213
    iput-object p5, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->u:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 214
    iput-object p6, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->w:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 215
    iput-object p7, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->v:Lng;

    .line 216
    iput-object p8, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->x:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 217
    iput-object p11, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->z:Lbgk;

    .line 218
    iput-object p12, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->A:Lajx;

    .line 219
    iput-object p9, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->B:Lni;

    .line 220
    iput-object p10, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->y:Lbaa;

    .line 222
    invoke-interface {p2}, Luu;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->D:Ljava/util/List;

    .line 223
    new-instance v0, Luy;

    invoke-direct {v0}, Luy;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->E:Luy;

    .line 224
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l:Landroid/view/View;

    return-object v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1001
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    .line 1002
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1003
    const-string v1, "teamsnapchat"

    invoke-static {v1}, Latv;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Laxi;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 1005
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lut;

    .line 1007
    invoke-interface {v0}, Lut;->B_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    check-cast v0, Luw;

    .line 1010
    if-eqz v0, :cond_0

    .line 1011
    new-instance v4, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;

    invoke-direct {v4, p0, p1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;I)V

    invoke-direct {p0, v0, v4}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(Luw;Ljava/lang/Runnable;)V

    .line 1005
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1029
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;I)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(I)V

    return-void
.end method

.method private a(Luw;Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 960
    iget-object v0, p1, Luw;->k:Landroid/view/View;

    .line 961
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->C:F

    invoke-direct {v1, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 962
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 963
    new-instance v2, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$8;

    invoke-direct {v2, p0, p2, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$8;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 989
    new-instance v2, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$9;

    invoke-direct {v2, p0, v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$9;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;Landroid/view/View;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 995
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lbgr;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->m:Lbgr;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lcom/snapchat/android/analytics/CameraEventAnalytics;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->w:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->F:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lvg;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->g:Lvg;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lbgr;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->k:Lbgr;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lbgr;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbgr;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->m()V

    return-void
.end method

.method static synthetic i(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->e:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->N:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l()Ljava/util/Set;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->M:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lus;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->I:Lus;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Luy;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->E:Luy;

    return-object v0
.end method

.method private m()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 874
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->H:Luv;

    if-nez v0, :cond_0

    .line 875
    new-instance v0, Lakp;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->r:Luu;

    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->t:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2}, Lakp;-><init>(Luu;Ljavax/inject/Provider;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->H:Luv;

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->g:Lvg;

    if-nez v0, :cond_1

    .line 878
    new-instance v0, Lvg;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->H:Luv;

    invoke-interface {v1}, Luv;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a:Lazo;

    invoke-direct {v0, v1, p0, v2}, Lvg;-><init>(Ljava/util/List;Lvg$a;Lazo;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->g:Lvg;

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->H:Luv;

    invoke-interface {v0}, Luv;->b()V

    .line 882
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->i:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 883
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->m:Lbgr;

    invoke-virtual {v0, v3}, Lbgr;->a(I)V

    .line 886
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 887
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 888
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lavh;->g(Landroid/content/Context;)V

    .line 889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->K:Z

    .line 890
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n:Lbgr;

    invoke-virtual {v0, v3}, Lbgr;->a(I)V

    .line 892
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->g:Lvg;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 893
    return-void
.end method

.method static synthetic n(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->D:Ljava/util/List;

    return-object v0
.end method

.method private n()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 896
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 897
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbgr;

    invoke-virtual {v0}, Lbgr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 901
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 902
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbgr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o:Lbgr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 905
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 906
    iput-boolean v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->K:Z

    .line 907
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o()V

    .line 909
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 910
    return-void
.end method

.method static synthetic o(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    return-object v0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 922
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 923
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lajv;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n:Lbgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 928
    :goto_0
    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n:Lbgr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    goto :goto_0
.end method

.method static synthetic p(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->t:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic q(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Laol;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->q:Laol;

    return-object v0
.end method

.method static synthetic r(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->C:F

    return v0
.end method

.method static synthetic s(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->L:Z

    return v0
.end method


# virtual methods
.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$s;)I
    .locals 1

    .prologue
    .line 113
    check-cast p1, Lux;

    invoke-virtual {p1, p0}, Lux;->d(Lve;)I

    move-result v0

    return v0
.end method

.method public final a(Laio;)V
    .locals 0
    .param p1    # Laio;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1069
    return-void
.end method

.method public final a(Laje;)V
    .locals 0
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1056
    return-void
.end method

.method public final a(Laje;Laio;)V
    .locals 0
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laio;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1051
    return-void
.end method

.method public final a(Laje;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 1
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1061
    instance-of v0, p1, Lajr;

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ABORT_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->p:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

    iget-object v0, v0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1064
    :cond_0
    return-void
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$s;Z)V
    .locals 3

    .prologue
    .line 113
    check-cast p1, Lux;

    invoke-virtual {p1, p0, p2}, Lux;->a(Lve;Z)V

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->F:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    invoke-virtual {p1}, Lux;->q()Lut;

    move-result-object v1

    iget-object v2, p1, Lux;->a:Landroid/view/View;

    invoke-interface {v0, v1, v2, p2}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;->a(Lut;Landroid/view/View;Z)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lut;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 914
    iget-boolean v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->K:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o:Lbgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 919
    :goto_0
    return-void

    .line 917
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o:Lbgr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    goto :goto_0
.end method

.method public final a(Luw;)V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v0, p1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->d(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 592
    return-void
.end method

.method public final a(Luw;Z)V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v0, p1, p2}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;Z)V

    .line 612
    return-void
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$s;FFFF)Z
    .locals 6

    .prologue
    .line 113
    move-object v0, p1

    check-cast v0, Lux;

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lux;->q()Lut;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->G:Lut;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->G:Lut;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->G:Lut;

    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->F:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    invoke-interface {v2, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;->c(Lut;)V

    :cond_1
    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lux;->a(Lve;FFFF)Z

    move-result v0

    return v0
.end method

.method public final a(Luw;FFFF)Z
    .locals 6

    .prologue
    .line 582
    iget-object v0, p1, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-string v1, "teamsnapchat"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->L:Z

    .line 584
    iget-object v0, p1, Luw;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;FFFF)Z

    move-result v0

    return v0
.end method

.method public final b(Luw;)F
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v0, p1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->c(Landroid/support/v7/widget/RecyclerView$s;)F

    move-result v0

    return v0
.end method

.method public final synthetic b(Landroid/support/v7/widget/RecyclerView$s;)Z
    .locals 1

    .prologue
    .line 113
    check-cast p1, Lux;

    invoke-virtual {p1, p0}, Lux;->c(Lve;)Z

    move-result v0

    return v0
.end method

.method public final b_()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->I:Lus;

    invoke-virtual {v0}, Lus;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->I:Lus;

    invoke-virtual {v0}, Lus;->b()V

    .line 690
    :cond_0
    return-void
.end method

.method public final synthetic c(Landroid/support/v7/widget/RecyclerView$s;)F
    .locals 1

    .prologue
    .line 113
    check-cast p1, Lux;

    invoke-virtual {p1, p0}, Lux;->b(Lve;)F

    move-result v0

    return v0
.end method

.method public final c(Luw;)Z
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v0, p1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->b(Landroid/support/v7/widget/RecyclerView$s;)Z

    move-result v0

    return v0
.end method

.method public final c_()V
    .locals 1

    .prologue
    .line 708
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 726
    return-void
.end method

.method public final d(Luw;)I
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v0, p1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;)I

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 753
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$6;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 761
    return-void
.end method

.method public final synthetic d(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 2

    .prologue
    .line 113
    check-cast p1, Lux;

    invoke-virtual {p1, p0}, Lux;->a(Lve;)V

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->F:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    invoke-virtual {p1}, Lux;->q()Lut;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;->d(Lut;)V

    return-void
.end method

.method public final d_()V
    .locals 1

    .prologue
    .line 730
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$4;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 738
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 261
    invoke-static {}, Lnf;->d()V

    .line 262
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->v:Lng;

    const-string v1, "feed"

    const-string v2, "move_to_page"

    invoke-virtual {v0, v2, v1}, Lng;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 265
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->b:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapView;->a(Lyu;)V

    .line 266
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->F:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    invoke-interface {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;->a()V

    .line 267
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 268
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 270
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->FEED:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a(Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;)J

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 279
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->K:Z

    if-eqz v0, :cond_3

    .line 280
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->m()V

    .line 285
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 286
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->BOUNCE_TEAM_SNAPCHAT_CONVERSATION_ONBOARDING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(I)V

    .line 290
    :cond_2
    invoke-static {}, Lnf;->e()V

    .line 291
    return-void

    .line 282
    :cond_3
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n()V

    goto :goto_0
.end method

.method public final synthetic e(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 2

    .prologue
    .line 113
    check-cast p1, Lux;

    invoke-virtual {p1, p0}, Lux;->e(Lve;)V

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->F:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    invoke-virtual {p1}, Lux;->q()Lut;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;->a(Lut;)V

    return-void
.end method

.method public final e(Luw;)V
    .locals 3

    .prologue
    .line 621
    iget-object v0, p1, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 622
    iget-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-string v2, "teamsnapchat"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->L:Z

    .line 624
    iget-object v1, p1, Luw;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 626
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->A()Z

    move-result v1

    if-nez v1, :cond_1

    .line 627
    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->s:Laup;

    invoke-virtual {v1, v0}, Laup;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 629
    :cond_1
    invoke-static {v0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 630
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(Luw;Ljava/lang/Runnable;)V

    .line 632
    :cond_2
    return-void
.end method

.method public final e_()V
    .locals 1

    .prologue
    .line 742
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$5;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 749
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 295
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 297
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->b:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapView;->b(Lyu;)V

    .line 298
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->m:Lbgr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 301
    iget-boolean v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->K:Z

    if-eqz v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n()V

    .line 304
    :cond_0
    return-void
.end method

.method public final synthetic f(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 2

    .prologue
    .line 113
    check-cast p1, Lux;

    invoke-virtual {p1, p0}, Lux;->f(Lve;)V

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->F:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    invoke-virtual {p1}, Lux;->q()Lut;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;->b(Lut;)V

    return-void
.end method

.method public final f(Luw;)V
    .locals 5

    .prologue
    .line 641
    iget-object v1, p1, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 642
    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->s:Laup;

    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, v2, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laje;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->n()Laje;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Laup$d;

    invoke-direct {v4, v2, v3, v1, v0}, Laup$d;-><init>(Laup;Laje;Laio;Landroid/content/Context;)V

    invoke-virtual {v4}, Laup$d;->run()V

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    iget-object v0, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-nez v0, :cond_2

    iget-object v0, v2, Laup;->mFeedIconManager:Lyn;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    iget-object v0, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    :cond_2
    instance-of v1, v0, Lain;

    if-eqz v1, :cond_0

    check-cast v0, Lain;

    iget-object v0, v0, Lain;->mActionUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Laup$a;

    invoke-direct {v1, v2, v0}, Laup$a;-><init>(Laup;Ljava/lang/String;)V

    invoke-virtual {v1}, Laup$a;->run()V

    goto :goto_0
.end method

.method public final bridge synthetic g(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 0

    .prologue
    .line 113
    check-cast p1, Lux;

    invoke-virtual {p1, p0}, Lux;->g(Lve;)V

    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->K:Z

    if-eqz v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n()V

    .line 489
    const/4 v0, 0x1

    .line 491
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final h()Lala;
    .locals 4

    .prologue
    .line 496
    new-instance v0, Lala;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "FEED"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lala;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->w:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->DOUBLE_TAP:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    .line 637
    return-void
.end method

.method public final k()Lalw;
    .locals 1

    .prologue
    .line 1033
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$11;

    invoke-direct {v0, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$11;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    return-object v0
.end method

.method public onConversationListUpdatedEvent(Lbbe;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 796
    const-string v0, "FeedFragmentV2"

    const-string v1, "FEED-LOG: onConversationListUpdatedEvent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 798
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 230
    new-instance v0, Luq;

    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Luq;-><init>(Landroid/content/Context;Lur;Lus$a;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->I:Lus;

    .line 231
    new-instance v0, Lva;

    invoke-direct {v0}, Lva;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    .line 232
    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->C:F

    .line 233
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f0a021d

    .line 237
    const v0, 0x7f040064

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    .line 238
    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a021c

    const v3, 0x7f0a0232

    new-instance v4, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$1;

    invoke-direct {v4, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$1;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lbgr;-><init>(Landroid/view/View;IILbgr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->m:Lbgr;

    const v0, 0x7f0a021b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$12;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$12;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$13;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$13;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0a021a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$14;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$14;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a021f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->h:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$15;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$15;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a021e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->i:Landroid/view/View;

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0233

    new-instance v3, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$16;

    invoke-direct {v3, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$16;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-direct {v0, v1, v5, v2, v3}, Lbgr;-><init>(Landroid/view/View;IILbgr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbgr;

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a002c

    new-instance v3, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$17;

    invoke-direct {v3, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$17;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-direct {v0, v1, v5, v2, v3}, Lbgr;-><init>(Landroid/view/View;IILbgr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->k:Lbgr;

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->i:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$18;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$18;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0222

    const v3, 0x7f0a0231

    invoke-direct {v0, v1, v2, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n:Lbgr;

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0223

    const v3, 0x7f0a0230

    invoke-direct {v0, v1, v2, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o:Lbgr;

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a011e

    const v3, 0x7f0a01e8

    invoke-direct {v0, v1, v2, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->p:Lbgr;

    .line 239
    const v0, 0x7f0a0238

    invoke-virtual {p0, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setPtrHandler(Lbur;)V

    .line 240
    const v0, 0x7f0a0239

    invoke-virtual {p0, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->e:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->D:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    new-instance v0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    sget-object v2, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;->RIGHT:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;)V

    iput-object p0, v0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->e:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$a;

    iput-object p0, v0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->f:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$b;

    iput-object p0, v0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->g:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->b:Z

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$1;

    invoke-direct {v2, v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$1;-><init>(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)V

    new-instance v3, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$2;

    invoke-direct {v3, p0, v2, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$2;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;Landroid/support/v7/widget/RecyclerView$j;Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laqm;

    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->y:Lbaa;

    const-string v3, "Feed"

    invoke-direct {v0, v2, v3}, Laqm;-><init>(Lbaa;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laqo;

    invoke-direct {v0, v1}, Laqo;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$j;)V

    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lari;

    invoke-interface {v0}, Lari;->l()Lcom/snapchat/android/ui/SnapView;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->b:Lcom/snapchat/android/ui/SnapView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o()V

    .line 244
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 241
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement SnapViewProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFeedIconRefreshedEvent(Lbbk;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 802
    const-string v0, "FeedFragmentV2"

    const-string v1, "FEED-LOG: onFeedIconRefreshedEvent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 804
    return-void
.end method

.method public onFeedRefreshedEvent(Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 773
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 774
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o()V

    .line 775
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->e()V

    .line 777
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->x:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/util/UUID;)V

    .line 779
    :cond_0
    return-void
.end method

.method public onFeedTimerChangeEvent(Lbbl;)V
    .locals 5
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 818
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    .line 819
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lbbl;->mFriendUsername:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 820
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p1, Lbbl;->mFriendUsername:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Laxi;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    move v1, v0

    .line 822
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lut;

    invoke-interface {v0}, Lut;->B_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 823
    :goto_1
    if-eq v1, v2, :cond_0

    .line 824
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;->c(I)V

    .line 827
    :cond_0
    return-void

    .line 822
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onLoadSnapMediaEvent(Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 788
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;->mType:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    sget-object v1, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;->ENDED:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    if-ne v0, v1, :cond_1

    .line 789
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->r:Luu;

    invoke-interface {v0}, Luu;->a()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lut;

    instance-of v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->m()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laje;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laje;

    move-result-object v0

    invoke-virtual {v0}, Laje;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->x:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 792
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 249
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lvb;

    .line 253
    invoke-interface {v0}, Lvb;->k()Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->F:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    return-void

    .line 255
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement FeedDelegateProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onScrollFeedToTopEvent(Lbdd;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 783
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    iget-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->i()V

    .line 784
    return-void
.end method

.method public onSyncAllCompletedEvent(Lbeh;)V
    .locals 4
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 831
    const-string v0, "FeedFragmentV2"

    const-string v2, "FEED-LOG: onSyncAllCompletedEvent"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    iget-boolean v0, p1, Lbeh;->mCalledOnLoginOrOnResume:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 835
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->x:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v2, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    iget-object v3, p1, Lbeh;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 837
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->m()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laje;

    move-result-object v0

    invoke-virtual {v0}, Laje;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->x:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    iget-object v2, p1, Lbeh;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 842
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 837
    goto :goto_0
.end method

.method public onUpdateFeedEvent(Lben;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 767
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 768
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o()V

    .line 769
    return-void
.end method

.method public onUserLoadedEvent(Lber;)V
    .locals 6
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 808
    if-eqz p1, :cond_1

    iget-object v0, p1, Lber;->user:Lajv;

    if-eqz v0, :cond_1

    .line 810
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "makeSyncRequest"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lajx;->af()Z

    move-result v1

    const-string v2, "FeedFragmentV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Make Sync syncreq = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "FeedFragmentV2"

    const-string v1, "Spinning off Sync request!"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->q:Laol;

    invoke-virtual {v0}, Laol;->f()I

    invoke-static {v5}, Lajx;->g(Z)V

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 813
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o()V

    .line 814
    return-void
.end method
