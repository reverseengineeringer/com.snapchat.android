.class public Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$a;
.implements Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$b;
.implements Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$c;
.implements Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;
.implements Lvm$a;
.implements Lwa;
.implements Lwc$a;
.implements Lzq;
.implements Lzu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/fragment/SnapchatFragment;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$a",
        "<",
        "Lvt;",
        ">;",
        "Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$b",
        "<",
        "Lvt;",
        ">;",
        "Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$c",
        "<",
        "Lvt;",
        ">;",
        "Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d",
        "<",
        "Lvt;",
        ">;",
        "Lvm$a;",
        "Lwa;",
        "Lwc$a;",
        "Lzq;",
        "Lzu;"
    }
.end annotation


# static fields
.field private static final U:Ljava/util/Set;
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
.field private final A:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

.field private final B:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private final C:Lnx;

.field private final D:Lcom/snapchat/android/analytics/CameraEventAnalytics;

.field private final E:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final F:Lbbb;

.field private final G:Lbhk;

.field private final H:Lakr;

.field private I:F

.field private final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvp;",
            ">;"
        }
    .end annotation
.end field

.field private final K:Lvu;

.field private L:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

.field private M:Lvr;

.field private N:Lvm;

.field private O:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d",
            "<",
            "Lvs;",
            ">;"
        }
    .end annotation
.end field

.field private P:Lvp;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lvp;",
            ">;"
        }
    .end annotation
.end field

.field private final V:Ljava/lang/Runnable;

.field public a:Lban;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Lcom/snapchat/android/ui/SnapView;

.field private c:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/support/v7/widget/LinearLayoutManager;

.field private f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

.field private g:Lwc;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/view/View;

.field private m:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Lcom/snapchat/android/ui/InAppPromptFlipper;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Laph;

.field private final u:Lvq;

.field private final v:Lavn;

.field private final w:Larn;

.field private final x:Lvo;

.field private final y:Lvn;

.field private final z:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ADDFRIEND:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->TYPING:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-static {v0, v1}, Ldr;->a(Ljava/lang/Object;Ljava/lang/Object;)Ldr;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->U:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .prologue
    .line 216
    invoke-static {}, Laph;->a()Laph;

    move-result-object v1

    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v2

    invoke-static {}, Lavn;->d()Lavn;

    move-result-object v3

    sget-object v4, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a()Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v6

    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v7

    invoke-static {}, Lnx;->a()Lnx;

    move-result-object v8

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v9

    invoke-static {}, Lbbb;->b()Lbbb;

    move-result-object v10

    new-instance v11, Lbhk;

    invoke-direct {v11}, Lbhk;-><init>()V

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v12

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;-><init>(Laph;Lvq;Lavn;Ljavax/inject/Provider;Lcom/snapchat/android/controller/countdown/SnapCountdownController;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lnx;Lcom/snapchat/android/analytics/NetworkAnalytics;Lbbb;Lbhk;Lakr;)V

    .line 221
    return-void
.end method

.method private constructor <init>(Laph;Lvq;Lavn;Ljavax/inject/Provider;Lcom/snapchat/android/controller/countdown/SnapCountdownController;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lnx;Lcom/snapchat/android/analytics/NetworkAnalytics;Lbbb;Lbhk;Lakr;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laph;",
            "Lvq;",
            "Lavn;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Lcom/snapchat/android/controller/countdown/SnapCountdownController;",
            "Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;",
            "Lcom/snapchat/android/analytics/CameraEventAnalytics;",
            "Lnx;",
            "Lcom/snapchat/android/analytics/NetworkAnalytics;",
            "Lbbb;",
            "Lbhk;",
            "Lakr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 1064
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$8;

    invoke-direct {v0, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$8;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->V:Ljava/lang/Runnable;

    .line 232
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    .line 234
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->t:Laph;

    .line 235
    iput-object p2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->u:Lvq;

    .line 236
    iput-object p3, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->v:Lavn;

    .line 237
    iput-object p4, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->z:Ljavax/inject/Provider;

    .line 238
    iput-object p5, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->A:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    .line 239
    iput-object p6, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->B:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 240
    iput-object p7, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->D:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 241
    iput-object p8, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->C:Lnx;

    .line 242
    iput-object p9, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->E:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 243
    iput-object p11, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->G:Lbhk;

    .line 244
    iput-object p12, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->H:Lakr;

    .line 245
    iput-object p10, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->F:Lbbb;

    .line 247
    invoke-interface {p2}, Lvq;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Ljava/util/List;

    .line 248
    new-instance v0, Lvo;

    invoke-direct {v0}, Lvo;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->x:Lvo;

    .line 249
    new-instance v0, Lvk;

    invoke-direct {v0, p0}, Lvk;-><init>(Lbga;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->y:Lvn;

    .line 250
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->x:Lvo;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->y:Lvn;

    iput-object v1, v0, Lvo;->a:Larm;

    .line 251
    new-instance v0, Lvu;

    invoke-direct {v0}, Lvu;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->K:Lvu;

    .line 252
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->T:Ljava/util/Map;

    .line 253
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$1;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->w:Larn;

    .line 264
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 958
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp;

    .line 960
    invoke-interface {v0}, Lvp;->A_()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    :goto_1
    return v1

    .line 958
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 964
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l:Landroid/view/View;

    return-object v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1171
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    .line 1172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1173
    const-string v1, "teamsnapchat"

    invoke-static {v1}, Laut;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Layg;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 1175
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1176
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp;

    .line 1177
    invoke-interface {v0}, Lvp;->A_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    check-cast v0, Lvs;

    .line 1180
    if-eqz v0, :cond_0

    .line 1181
    new-instance v4, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$13;

    invoke-direct {v4, p0, p1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$13;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;I)V

    invoke-direct {p0, v0, v4}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(Lvs;Ljava/lang/Runnable;)V

    .line 1175
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1195
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;I)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;Lvp;I)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(Lvp;I)V

    return-void
.end method

.method private a(Lvp;I)V
    .locals 3

    .prologue
    .line 1198
    invoke-interface {p1}, Lvp;->A_()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(Ljava/lang/String;)I

    move-result v0

    .line 1199
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1200
    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    check-cast v0, Lvt;

    .line 1201
    if-eqz v0, :cond_0

    .line 1202
    invoke-virtual {v0, p2}, Lvt;->b(I)V

    .line 1205
    :cond_0
    return-void
.end method

.method private a(Lvs;Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1130
    iget-object v0, p1, Lvs;->k:Landroid/view/View;

    .line 1131
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->I:F

    invoke-direct {v1, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1132
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1133
    new-instance v2, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;

    invoke-direct {v2, p0, p2, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1159
    new-instance v2, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$11;

    invoke-direct {v2, p0, v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$11;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;Landroid/view/View;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1165
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lbhr;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->m:Lbhr;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lcom/snapchat/android/analytics/CameraEventAnalytics;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->D:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->L:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lwc;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->g:Lwc;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lbhr;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->k:Lbhr;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lbhr;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbhr;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n()V

    return-void
.end method

.method static synthetic i(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->e:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->V:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l()Ljava/util/Set;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->U:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lvm;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->N:Lvm;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lvu;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->K:Lvu;

    return-object v0
.end method

.method private m()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 968
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "makeSyncRequest"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 970
    invoke-static {}, Lakr;->ae()Z

    move-result v1

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Make Sync syncreq = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 972
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->z:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 976
    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->t:Laph;

    invoke-virtual {v0}, Laph;->f()I

    .line 978
    invoke-static {v4}, Lakr;->g(Z)V

    .line 981
    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Ljava/util/List;

    return-object v0
.end method

.method private n()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 989
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->M:Lvr;

    if-nez v0, :cond_0

    .line 990
    new-instance v0, Lalk;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->u:Lvq;

    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->z:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2}, Lalk;-><init>(Lvq;Ljavax/inject/Provider;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->M:Lvr;

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->g:Lwc;

    if-nez v0, :cond_1

    .line 993
    new-instance v0, Lwc;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->M:Lvr;

    invoke-interface {v1}, Lvr;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a:Lban;

    invoke-direct {v0, v1, p0, v2}, Lwc;-><init>(Ljava/util/List;Lwc$a;Lban;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->g:Lwc;

    .line 994
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->g:Lwc;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->x:Lvo;

    invoke-virtual {v0, v1}, Lwc;->a(Larm;)V

    .line 996
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->M:Lvr;

    invoke-interface {v0}, Lvr;->c()V

    .line 998
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->i:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 999
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1001
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->m:Lbhr;

    invoke-virtual {v0, v3}, Lbhr;->a(I)V

    .line 1002
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbhr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    .line 1003
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1004
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lawf;->g(Landroid/content/Context;)V

    .line 1005
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->Q:Z

    .line 1006
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n:Lbhr;

    invoke-virtual {v0, v3}, Lbhr;->a(I)V

    .line 1008
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->g:Lwc;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 1009
    return-void
.end method

.method static synthetic o(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1012
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1014
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbhr;

    invoke-virtual {v0}, Lbhr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1018
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbhr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o:Lbhr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    .line 1021
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 1022
    iput-boolean v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->Q:Z

    .line 1023
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->p()V

    .line 1025
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 1026
    return-void
.end method

.method static synthetic p(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->z:Ljavax/inject/Provider;

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->z:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 1039
    iget-boolean v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->Q:Z

    if-nez v1, :cond_0

    .line 1040
    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lakp;->mInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n:Lbhr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n:Lbhr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    goto :goto_0
.end method

.method static synthetic q(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->E:Lcom/snapchat/android/analytics/NetworkAnalytics;

    return-object v0
.end method

.method private q()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1094
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_UPGRADE_PROMPT_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lava;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->SUGGESTION_PROMPT_TEXT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Upgrade your app"

    invoke-static {v0, v2}, Lava;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->SUGGESTION_PROMPT_LINK:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0c016f

    invoke-virtual {p0, v2}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lava;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 1116
    :goto_1
    return-void

    .line 1094
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lakr;->ba()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {}, Lakr;->bb()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {}, Lakr;->aX()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lakr;->aV()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    .line 1098
    :cond_4
    invoke-static {}, Lakr;->aZ()Ljava/lang/String;

    move-result-object v1

    .line 1100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1101
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->s:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->s:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$9;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1111
    invoke-static {}, Lakr;->aX()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1112
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->r:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lakr;->aY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->q:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/InAppPromptFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/InAppPromptFlipper;->a()V

    goto :goto_1
.end method

.method static synthetic r(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lnx;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->C:Lnx;

    return-object v0
.end method

.method private r()V
    .locals 3

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->P:Lvp;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->P:Lvp;

    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(Lvp;I)V

    .line 1211
    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Laph;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->t:Laph;

    return-object v0
.end method

.method static synthetic t(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lakr;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->H:Lakr;

    return-object v0
.end method

.method static synthetic u(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->I:F

    return v0
.end method

.method static synthetic v(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->S:Z

    return v0
.end method


# virtual methods
.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$s;)I
    .locals 1

    .prologue
    .line 129
    check-cast p1, Lvt;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lvt;->d(Lwa;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lajk;)V
    .locals 0
    .param p1    # Lajk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1257
    return-void
.end method

.method public final a(Laka;)V
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->T:Ljava/util/Map;

    invoke-virtual {p1}, Laka;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp;

    .line 859
    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->VIEWED:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-interface {v0, p1, v1}, Lvp;->a(Ljava/lang/Object;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 860
    return-void
.end method

.method public final a(Laka;J)V
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->T:Ljava/util/Map;

    invoke-virtual {p1}, Laka;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp;

    .line 852
    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->VIEWING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-interface {v0, p1, v1}, Lvp;->a(Ljava/lang/Object;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 853
    return-void
.end method

.method public final a(Laka;Lajk;)V
    .locals 0
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lajk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1233
    return-void
.end method

.method public final a(Laka;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 1
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1249
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->r()V

    .line 1251
    instance-of v0, p1, Lakl;

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ABORT_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->p:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

    iget-object v0, v0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1254
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Landroid/support/v7/widget/RecyclerView$s;Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 129
    check-cast p1, Lvt;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->R:Z

    invoke-virtual {p1, p0, p2}, Lvt;->a(Lwa;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$s;Z)V
    .locals 3

    .prologue
    .line 129
    check-cast p1, Lvt;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0, p2}, Lvt;->a(Lwa;Z)V

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->L:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    invoke-virtual {p1}, Lvt;->s()Lvp;

    move-result-object v1

    iget-object v2, p1, Lvt;->a:Landroid/view/View;

    invoke-interface {v0, v1, v2, p2}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;->a(Lvp;Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lvp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->Q:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o:Lbhr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    .line 1035
    :goto_0
    return-void

    .line 1033
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o:Lbhr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    goto :goto_0
.end method

.method public final a(Lvs;)V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->O:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v0, p1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->d(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 713
    return-void
.end method

.method public final a(Lvs;Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p1, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-string v1, "teamsnapchat"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->S:Z

    .line 700
    iget-object v0, p1, Lvs;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->O:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v0, p1, p2}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;Landroid/view/MotionEvent;)V

    .line 703
    return-void
.end method

.method public final a(Lvs;Z)V
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->O:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v0, p1, p2}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;Z)V

    .line 733
    return-void
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$s;FFFF)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 129
    move-object v0, p1

    check-cast v0, Lvt;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lvt;->s()Lvp;

    move-result-object v2

    iget-boolean v3, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->R:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->L:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    invoke-interface {v3, v2}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;->c(Lvp;)V

    iput-boolean v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->R:Z

    :cond_0
    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lvt;->a(Lwa;FFFF)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lvs;FFFF)Z
    .locals 6

    .prologue
    .line 707
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->O:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;FFFF)Z

    move-result v0

    return v0
.end method

.method public final a_()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->N:Lvm;

    invoke-virtual {v0}, Lvm;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->N:Lvm;

    invoke-virtual {v0}, Lvm;->b()V

    .line 781
    :cond_0
    return-void
.end method

.method public final b(Lvs;)F
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->O:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v0, p1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->c(Landroid/support/v7/widget/RecyclerView$s;)F

    move-result v0

    return v0
.end method

.method public final b(Laka;)V
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->T:Ljava/util/Map;

    invoke-virtual {p1}, Laka;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp;

    .line 866
    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->VIEWED:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-interface {v0, p1, v1}, Lvp;->a(Ljava/lang/Object;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 867
    return-void
.end method

.method public final synthetic b(Landroid/support/v7/widget/RecyclerView$s;)Z
    .locals 1

    .prologue
    .line 129
    check-cast p1, Lvt;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lvt;->c(Lwa;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b_()V
    .locals 1

    .prologue
    .line 789
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$4;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 807
    return-void
.end method

.method public final synthetic c(Landroid/support/v7/widget/RecyclerView$s;)F
    .locals 1

    .prologue
    .line 129
    check-cast p1, Lvt;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lvt;->b(Lwa;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Laka;)V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->T:Ljava/util/Map;

    invoke-virtual {p1}, Laka;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp;

    .line 873
    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->VIEWED:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-interface {v0, p1, v1}, Lvp;->a(Ljava/lang/Object;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 874
    return-void
.end method

.method public final c(Lvs;)Z
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->O:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v0, p1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->b(Landroid/support/v7/widget/RecyclerView$s;)Z

    move-result v0

    return v0
.end method

.method public final c_()V
    .locals 1

    .prologue
    .line 811
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$5;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 819
    return-void
.end method

.method public final d(Lvs;)I
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->O:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v0, p1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;)I

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 834
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$7;

    invoke-direct {v0, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$7;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 842
    return-void
.end method

.method public final d(Laka;)V
    .locals 4
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1237
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->r()V

    .line 1238
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->T:Ljava/util/Map;

    invoke-virtual {p1}, Laka;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->P:Lvp;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->A:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Laka;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b(Laka;)Lzt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lzt;->a(Lzu;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic d(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 2

    .prologue
    .line 129
    check-cast p1, Lvt;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lvt;->a(Lwa;)V

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->L:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    invoke-virtual {p1}, Lvt;->s()Lvp;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;->d(Lvp;)V

    :cond_0
    return-void
.end method

.method public final d_()V
    .locals 1

    .prologue
    .line 823
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$6;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 830
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 316
    invoke-static {}, Lnw;->d()V

    .line 318
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->C:Lnx;

    const-string v1, "feed"

    const-string v2, "move_to_page"

    invoke-virtual {v0, v2, v1}, Lnx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 321
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->b:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapView;->a(Lzq;)V

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->v:Lavn;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->w:Larn;

    iget-object v0, v0, Lavn;->mListeners:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->L:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    invoke-interface {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;->a()V

    .line 323
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 324
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 326
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->FEED:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a(Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;)J

    .line 331
    :cond_0
    invoke-static {}, Lakr;->bA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(I)V

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->u:Lvq;

    invoke-interface {v0}, Lvq;->b()V

    .line 341
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 345
    :cond_2
    iget-boolean v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->Q:Z

    if-eqz v0, :cond_4

    .line 346
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n()V

    .line 351
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->q()V

    .line 353
    invoke-static {}, Lbat;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbat;->a(Landroid/app/Activity;)V

    .line 357
    :cond_3
    invoke-static {}, Lnw;->e()V

    .line 358
    return-void

    .line 348
    :cond_4
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o()V

    goto :goto_0
.end method

.method public final synthetic e(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 2

    .prologue
    .line 129
    check-cast p1, Lvt;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lvt;->s()Lvp;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->P:Lvp;

    invoke-virtual {p1, p0}, Lvt;->e(Lwa;)V

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->L:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->P:Lvp;

    invoke-interface {v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;->a(Lvp;)V

    :cond_0
    return-void
.end method

.method public final e(Lvs;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 743
    iget-object v3, p1, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 746
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->B()Z

    move-result v2

    if-nez v2, :cond_0

    .line 748
    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->v:Lavn;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laka;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, v2, Lavn;->mSnapViewEventAnalytics:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    sget-object v6, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->FEED:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    invoke-virtual {v5, v6}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;)V

    const-string v5, "feed"

    invoke-virtual {v2, v4, v3, v5}, Lavn;->a(Laka;Lajk;Ljava/lang/String;)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_3

    .line 750
    :cond_0
    :goto_1
    invoke-static {v3}, Layg;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 751
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(Lvs;Ljava/lang/Runnable;)V

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->y:Lvn;

    invoke-virtual {v0, p1}, Lvn;->b(Lvt;)V

    .line 754
    return-void

    :cond_2
    move v2, v1

    .line 748
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 362
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 364
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->B:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->C:Lnx;

    const-string v1, "feed"

    const-string v2, "exit_page"

    invoke-virtual {v0, v2, v1}, Lnx;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->b:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapView;->b(Lzq;)V

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->v:Lavn;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->w:Larn;

    iget-object v0, v0, Lavn;->mListeners:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->m:Lbhr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    .line 370
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->y:Lvn;

    invoke-virtual {v0}, Lvn;->a()V

    .line 371
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 373
    iget-boolean v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->Q:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->q:Lbhr;

    invoke-virtual {v0}, Lbhr;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->q:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/InAppPromptFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/InAppPromptFlipper;->b()V

    .line 379
    :cond_1
    invoke-static {}, Lbat;->a()V

    .line 380
    return-void
.end method

.method public final synthetic f(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 2

    .prologue
    .line 129
    check-cast p1, Lvt;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lvt;->f(Lwa;)V

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->L:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    invoke-virtual {p1}, Lvt;->s()Lvp;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;->b(Lvp;)V

    :cond_0
    return-void
.end method

.method public final f(Lvs;)V
    .locals 5

    .prologue
    .line 766
    iget-object v1, p1, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 767
    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->v:Lavn;

    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, v2, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laka;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->n()Laka;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Lavn$d;

    invoke-direct {v4, v2, v3, v1, v0}, Lavn$d;-><init>(Lavn;Laka;Lajk;Landroid/content/Context;)V

    invoke-virtual {v4}, Lavn$d;->run()V

    .line 768
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->y:Lvn;

    invoke-virtual {v0, p1}, Lvn;->a(Lvt;)V

    .line 769
    return-void

    .line 767
    :cond_1
    iget-object v0, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->r()V

    iget-object v0, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v1, v0, Lajj;

    if-eqz v1, :cond_0

    check-cast v0, Lajj;

    iget-object v0, v0, Lajj;->mActionUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lavn$a;

    invoke-direct {v1, v2, v0}, Lavn$a;-><init>(Lavn;Ljava/lang/String;)V

    invoke-virtual {v1}, Lavn$a;->run()V

    goto :goto_0
.end method

.method public final bridge synthetic g(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Lvt;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lvt;->g(Lwa;)V

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->Q:Z

    if-eqz v0, :cond_0

    .line 571
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o()V

    .line 572
    const/4 v0, 0x1

    .line 574
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final h()Lalv;
    .locals 4

    .prologue
    .line 579
    new-instance v0, Lalv;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "FEED"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lalv;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->b:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->D:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->DOUBLE_TAP:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    .line 761
    :cond_0
    return-void
.end method

.method public final k()Lamt;
    .locals 1

    .prologue
    .line 1215
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$14;

    invoke-direct {v0, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$14;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    return-object v0
.end method

.method public onConversationListUpdatedEvent(Lbce;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 916
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 918
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 270
    new-instance v0, Lvj;

    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lvj;-><init>(Landroid/content/Context;Lvl;Lvm$a;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->N:Lvm;

    .line 271
    new-instance v0, Lvw;

    invoke-direct {v0}, Lvw;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->O:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    .line 272
    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lawf;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->I:F

    .line 273
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const v5, 0x7f0a021b

    const v6, 0x7f0a0222

    .line 277
    invoke-static {}, Lnw;->d()V

    .line 278
    const v0, 0x7f040065

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    .line 279
    new-instance v0, Lbhr;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a021a

    const v3, 0x7f0a0230

    new-instance v4, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$12;

    invoke-direct {v4, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$12;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lbhr;-><init>(Landroid/view/View;IILbhr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->m:Lbhr;

    const v0, 0x7f0a0219

    invoke-virtual {p0, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$15;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$15;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$16;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$16;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0a0218

    invoke-virtual {p0, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$17;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$17;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a021d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->h:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$18;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$18;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a021c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->i:Landroid/view/View;

    new-instance v0, Lbhr;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0231

    new-instance v3, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;

    invoke-direct {v3, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-direct {v0, v1, v5, v2, v3}, Lbhr;-><init>(Landroid/view/View;IILbhr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j:Lbhr;

    new-instance v0, Lbhr;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a002d

    new-instance v3, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$20;

    invoke-direct {v3, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$20;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-direct {v0, v1, v5, v2, v3}, Lbhr;-><init>(Landroid/view/View;IILbhr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->k:Lbhr;

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->i:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$21;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$21;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lbhr;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0220

    const v3, 0x7f0a022f

    invoke-direct {v0, v1, v2, v3}, Lbhr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n:Lbhr;

    new-instance v0, Lbhr;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0221

    const v3, 0x7f0a022e

    invoke-direct {v0, v1, v2, v3}, Lbhr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o:Lbhr;

    new-instance v0, Lbhr;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a011e

    const v3, 0x7f0a01e6

    invoke-direct {v0, v1, v2, v3}, Lbhr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->p:Lbhr;

    new-instance v0, Lbhr;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0232

    invoke-direct {v0, v1, v6, v2}, Lbhr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->q:Lbhr;

    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->q:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/InAppPromptFlipper;

    const-wide/16 v2, -0x1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    long-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/InAppPromptFlipper;->setTranslationY(F)V

    new-instance v0, Lbhr;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0235

    invoke-direct {v0, v1, v6, v2}, Lbhr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->s:Lbhr;

    new-instance v0, Lbhr;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0234

    invoke-direct {v0, v1, v6, v2}, Lbhr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->r:Lbhr;

    .line 280
    const v0, 0x7f0a0236

    invoke-virtual {p0, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$2;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setPtrHandler(Lbvs;)V

    .line 281
    const v0, 0x7f0a0237

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

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->x:Lvo;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;->a(Larm;)V

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

    new-instance v3, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;

    invoke-direct {v3, p0, v2, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;Landroid/support/v7/widget/RecyclerView$j;Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Larj;

    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->F:Lbbb;

    const-string v3, "Feed"

    invoke-direct {v0, v2, v3}, Larj;-><init>(Lbbb;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Larl;

    invoke-direct {v0, v1}, Larl;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$j;)V

    .line 282
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lash;

    invoke-interface {v0}, Lash;->l()Lcom/snapchat/android/ui/SnapView;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->b:Lcom/snapchat/android/ui/SnapView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->p()V

    .line 285
    invoke-static {}, Lnw;->e()V

    .line 286
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 282
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

.method public onFeedIconChangedEvent(Lbck;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FEEDICON-LOG: onFeedIconChangedEvent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lbck;->mFeedItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    iget-object v0, p1, Lbck;->mFeedItemId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(Ljava/lang/String;)I

    move-result v0

    .line 924
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;->c(I)V

    .line 927
    :cond_0
    return-void
.end method

.method public onFeedRefreshedEvent(Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 894
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->p()V

    .line 895
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->c:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->e()V

    .line 897
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->E:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/util/UUID;)V

    .line 899
    :cond_0
    return-void
.end method

.method public onLoadSnapMediaEvent(Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 908
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;->mType:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    sget-object v1, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;->ENDED:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    if-ne v0, v1, :cond_1

    .line 909
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->u:Lvq;

    invoke-interface {v0}, Lvq;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp;

    instance-of v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->m()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laka;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laka;

    move-result-object v0

    invoke-virtual {v0}, Laka;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->E:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 912
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 297
    invoke-static {}, Lnw;->d()V

    .line 298
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lvx;

    invoke-interface {v0}, Lvx;->k()Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->L:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->t:Laph;

    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "op_code"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "clear"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "notification_type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    .line 303
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->m()V

    .line 305
    invoke-static {}, Lnw;->e()V

    .line 306
    return-void

    .line 300
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

.method public onScrollFeedToTopEvent(Lbed;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 903
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

    .line 904
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 880
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->SHOULD_SHOW_SUGGESTION_PROMPT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->q()V

    .line 883
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStart()V

    .line 292
    invoke-static {p0}, Lakr;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 293
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 310
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStop()V

    .line 311
    invoke-static {p0}, Lakr;->b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 312
    return-void
.end method

.method public onSyncAllCompletedEvent(Lbfg;)V
    .locals 4
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 941
    iget-boolean v0, p1, Lbfg;->mCalledOnLoginOrOnResume:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 945
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->E:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v2, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    iget-object v3, p1, Lbfg;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 947
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->J:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->m()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laka;

    move-result-object v0

    invoke-virtual {v0}, Laka;->M()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->E:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    iget-object v2, p1, Lbfg;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 952
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 947
    goto :goto_0
.end method

.method public onUpdateFeedEvent(Lbfm;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 887
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 888
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->p()V

    .line 889
    return-void
.end method

.method public onUserLoadedEvent(Lbfq;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 931
    if-eqz p1, :cond_0

    iget-object v0, p1, Lbfq;->user:Lakp;

    if-eqz v0, :cond_0

    .line 933
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->m()V

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 936
    invoke-direct {p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->p()V

    .line 937
    return-void
.end method
