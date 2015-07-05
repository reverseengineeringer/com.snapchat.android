.class public Lcom/snapchat/android/fragments/feed/FeedFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lagd$a;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Laqk$a;
.implements Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;
.implements Lyu;


# annotations
.annotation build Lavl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/feed/FeedFragment$14;
    }
.end annotation


# static fields
.field private static final I:Ljava/util/Set;
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
.field private A:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private D:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;",
            ">;"
        }
    .end annotation
.end field

.field private E:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private F:Lcom/snapchat/android/model/chat/ChatConversation;

.field private G:Landroid/view/inputmethod/InputMethodManager;

.field private H:Laqk;

.field private J:Ljava/lang/Runnable;

.field private K:Landroid/view/MotionEvent;

.field protected a:Lcom/snapchat/android/ui/SnapView;

.field protected b:Z

.field private final c:Laol;

.field private final d:Lcom/squareup/otto/Bus;

.field private final e:Lakc;

.field private final f:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private final g:Lng;

.field private final h:Lcom/snapchat/android/analytics/CameraEventAnalytics;

.field private final i:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final j:Lbaa;

.field private final k:Lbgk;

.field private final l:Lajx;

.field private m:Lagd;

.field private n:Landroid/widget/ListView;

.field private o:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

.field private p:Landroid/os/Handler;

.field private q:Lajv;

.field private r:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Lcom/snapchat/android/ui/InAppPromptFlipper;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ADDFRIEND:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->TYPING:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-static {v0, v1}, Ldi;->a(Ljava/lang/Object;Ljava/lang/Object;)Ldi;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/feed/FeedFragment;->I:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    .line 203
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v4

    invoke-static {}, Lng;->a()Lng;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v6

    invoke-static {}, Lbaa;->a()Lbaa;

    move-result-object v7

    new-instance v8, Lbgk;

    invoke-direct {v8}, Lbgk;-><init>()V

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v9

    invoke-static {}, Laol;->a()Laol;

    move-result-object v10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/snapchat/android/fragments/feed/FeedFragment;-><init>(Lcom/squareup/otto/Bus;Lakc;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lng;Lcom/snapchat/android/analytics/NetworkAnalytics;Lbaa;Lbgk;Lajx;Laol;)V

    .line 206
    return-void
.end method

.method private constructor <init>(Lcom/squareup/otto/Bus;Lakc;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lng;Lcom/snapchat/android/analytics/NetworkAnalytics;Lbaa;Lbgk;Lajx;Laol;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 403
    new-instance v0, Lcom/snapchat/android/fragments/feed/FeedFragment$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$4;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->J:Ljava/lang/Runnable;

    .line 215
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/squareup/otto/Bus;

    .line 216
    iput-object p2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lakc;

    .line 217
    iput-object p3, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->f:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 218
    iput-object p4, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->h:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 219
    iput-object p5, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->g:Lng;

    .line 220
    iput-object p6, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->i:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 221
    iput-object p7, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->j:Lbaa;

    .line 222
    iput-object p8, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->k:Lbgk;

    .line 223
    iput-object p9, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->l:Lajx;

    .line 224
    iput-object p10, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->c:Laol;

    .line 225
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/feed/FeedFragment;Lajv;)Lajv;
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lajv;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->z:Landroid/view/View;

    return-object v0
.end method

.method private a(FF)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 3

    .prologue
    .line 943
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v1

    .line 944
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0}, Lagd;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    .line 945
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    :goto_1
    return-object v0

    .line 944
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 945
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/feed/FeedFragment;Z)V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/snapchat/android/fragments/feed/FeedFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/fragments/feed/FeedFragment$3;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;Z)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lbgr;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->A:Lbgr;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/analytics/CameraEventAnalytics;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->h:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->E:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lagd;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lbgr;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->x:Lbgr;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lbgr;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->w:Lbgr;

    return-object v0
.end method

.method static synthetic i()Ljava/util/Set;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/snapchat/android/fragments/feed/FeedFragment;->I:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->n()V

    return-void
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->o()V

    return-void
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lajv;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lajv;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lakc;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lakc;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lbgr;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->C:Lbgr;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/snapchat/android/fragments/feed/FeedFragment$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$2;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-static {v0}, Lbgp;->b(Ljava/lang/Runnable;)V

    .line 388
    return-void
.end method

.method static synthetic n(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->i:Lcom/snapchat/android/analytics/NetworkAnalytics;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lakc;

    iget-object v0, v0, Lakc;->mIterToken:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 526
    :cond_0
    :goto_1
    return-void

    .line 512
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 518
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lajv;

    if-nez v1, :cond_3

    .line 519
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lajv;

    .line 522
    :cond_3
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lajv;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v1}, Lagd;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v1}, Lagd;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    if-le v0, v1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lajv;

    invoke-static {p0, v0}, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;Lajv;)V

    goto :goto_1
.end method

.method static synthetic o(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lng;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->g:Lng;

    return-object v0
.end method

.method private o()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 529
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->v:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->z:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->A:Lbgr;

    invoke-virtual {v0, v2}, Lbgr;->a(I)V

    .line 533
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->w:Lbgr;

    invoke-virtual {v0, v3}, Lbgr;->a(I)V

    .line 534
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->w:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 535
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->G:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->w:Lbgr;

    invoke-virtual {v1}, Lbgr;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->b:Z

    .line 537
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->u()V

    .line 538
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->q()V

    .line 539
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->C:Lbgr;

    invoke-virtual {v0, v2}, Lbgr;->a(I)V

    .line 541
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0, v3}, Lagd;->setNotifyOnChange(Z)V

    .line 542
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lakc;

    iget-object v0, v0, Lakc;->mConversationsForListView:Latw;

    .line 543
    invoke-static {}, Lym;->a()Latw;

    move-result-object v1

    .line 546
    iput-object v4, v0, Latw;->mAdapter:Landroid/widget/BaseAdapter;

    .line 547
    iput-object v4, v1, Latw;->mAdapter:Landroid/widget/BaseAdapter;

    .line 548
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0}, Lagd;->clear()V

    .line 549
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0, v1}, Lagd;->addAll(Ljava/util/Collection;)V

    .line 550
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0}, Lagd;->notifyDataSetChanged()V

    .line 551
    return-void
.end method

.method static synthetic p(Lcom/snapchat/android/fragments/feed/FeedFragment;)Laol;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->c:Laol;

    return-object v0
.end method

.method private p()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 554
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->z:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->w:Lbgr;

    invoke-virtual {v0}, Lbgr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->w:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->w:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 560
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->w:Lbgr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Lbgr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 563
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->G:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 564
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->b:Z

    .line 565
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->u()V

    .line 566
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->m()V

    .line 568
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lakc;

    iget-object v0, v0, Lakc;->mConversationsForListView:Latw;

    .line 569
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    iput-object v1, v0, Latw;->mAdapter:Landroid/widget/BaseAdapter;

    .line 571
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lakc;

    iget-object v2, v1, Lakc;->mConversations:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lakc;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v4, :cond_1

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lakc;->f()V

    .line 572
    return-void
.end method

.method static synthetic q(Lcom/snapchat/android/fragments/feed/FeedFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->J:Ljava/lang/Runnable;

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 600
    if-nez v0, :cond_0

    .line 604
    :goto_0
    return-void

    .line 601
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 602
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic r(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->p:Landroid/os/Handler;

    return-object v0
.end method

.method private r()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 620
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "makeSyncRequest"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 622
    invoke-static {}, Lajx;->af()Z

    move-result v1

    .line 623
    const-string v2, "FeedFragment"

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

    .line 624
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 625
    :cond_0
    const-string v0, "FeedFragment"

    const-string v1, "Spinning off Sync request!"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lajv;

    if-eqz v0, :cond_1

    .line 628
    invoke-static {v5}, Lajx;->g(Z)V

    .line 629
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->c:Laol;

    invoke-virtual {v0}, Laol;->f()I

    .line 632
    :cond_1
    return-void
.end method

.method static synthetic s(Lcom/snapchat/android/fragments/feed/FeedFragment;)Laqk;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->H:Laqk;

    return-object v0
.end method

.method static synthetic t(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->b:Z

    if-eqz v0, :cond_0

    .line 744
    invoke-static {}, Lym;->a()Latw;

    move-result-object v0

    .line 745
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v1}, Lagd;->clear()V

    .line 746
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v1, v0}, Lagd;->addAll(Ljava/util/Collection;)V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0}, Lagd;->notifyDataSetChanged()V

    .line 751
    return-void
.end method

.method static synthetic u(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method private u()V
    .locals 3

    .prologue
    .line 784
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-static {v0}, Lavh;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 785
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagd$b;

    .line 786
    if-eqz v0, :cond_0

    .line 788
    const/4 v2, 0x1

    iput-boolean v2, v0, Lagd$b;->e:Z

    .line 789
    iget-object v2, v0, Lagd$b;->d:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    .line 790
    iget-object v2, v0, Lagd$b;->d:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 791
    const/4 v2, 0x0

    iput-object v2, v0, Lagd$b;->d:Landroid/animation/Animator;

    .line 793
    :cond_1
    iget-object v2, v0, Lagd$b;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAnimation()V

    .line 794
    iget-object v0, v0, Lagd$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    goto :goto_0

    .line 797
    :cond_2
    return-void
.end method

.method static synthetic v(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    return-object v0
.end method

.method private v()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1026
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_UPGRADE_PROMPT_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lauc;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->SUGGESTION_PROMPT_TEXT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Upgrade your app"

    invoke-static {v0, v2}, Lauc;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->SUGGESTION_PROMPT_LINK:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0c016f

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lauc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 1048
    :goto_1
    return-void

    .line 1026
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lajx;->bd()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {}, Lajx;->be()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {}, Lajx;->ba()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lajx;->aY()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    .line 1030
    :cond_4
    invoke-static {}, Lajx;->bc()Ljava/lang/String;

    move-result-object v1

    .line 1032
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1033
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->t:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->t:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$10;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$10;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1043
    invoke-static {}, Lajx;->ba()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1044
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->s:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lajx;->bb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->r:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/InAppPromptFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/InAppPromptFlipper;->a()V

    goto :goto_1
.end method

.method static synthetic w(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lajx;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->l:Lajx;

    return-object v0
.end method

.method private w()V
    .locals 7

    .prologue
    .line 1066
    invoke-static {}, Lajx;->bF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lakc;

    invoke-virtual {v0}, Lakc;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    const v0, 0x7f0c029d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1069
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 1070
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08005b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1071
    new-instance v0, Lbbg;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string v6, "FeedFragment"

    invoke-direct/range {v0 .. v6}, Lbbg;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZLjava/lang/String;)V

    .line 1074
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lbbg;->a(J)Lbbg;

    .line 1075
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1077
    invoke-static {}, Lajx;->bG()V

    .line 1080
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1177
    if-nez p1, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return v0

    .line 1178
    :cond_1
    const v1, 0x7f0a022a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1179
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 6

    .prologue
    .line 877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->a(FF)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    .line 878
    const-string v2, "FeedFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "TTV-LOG: onTouch ("

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const v4, 0xff00

    and-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") on conversation "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 880
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 881
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->K:Landroid/view/MotionEvent;

    .line 883
    if-eqz v1, :cond_0

    .line 884
    invoke-static {}, Laup;->d()Laup;

    move-result-object v2

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, v2, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laje;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->n()Laje;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0, v3, v1}, Laup;->a(Landroid/content/Context;Lcom/snapchat/android/model/Snap;Laio;)V

    .line 888
    :cond_0
    :goto_2
    return-object v1

    .line 878
    :pswitch_1
    const-string v0, "ACTION_DOWN"

    goto :goto_0

    :pswitch_2
    const-string v0, "ACTION_UP"

    goto :goto_0

    :pswitch_3
    const-string v0, "ACTION_CANCEL"

    goto :goto_0

    :pswitch_4
    const-string v0, "ACTION_OUTSIDE"

    goto :goto_0

    :pswitch_5
    const-string v0, "ACTION_MOVE"

    goto :goto_0

    :pswitch_6
    const-string v0, "ACTION_HOVER_MOVE"

    goto :goto_0

    :pswitch_7
    const-string v0, "ACTION_SCROLL"

    goto :goto_0

    :pswitch_8
    const-string v0, "ACTION_HOVER_ENTER"

    goto :goto_0

    :pswitch_9
    const-string v0, "ACTION_HOVER_EXIT"

    goto :goto_0

    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "ACTION_POINTER_DOWN("

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "ACTION_POINTER_UP("

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    goto :goto_1

    .line 884
    :cond_2
    iget-object v0, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-nez v0, :cond_3

    iget-object v0, v2, Laup;->mFeedIconManager:Lyn;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    iget-object v0, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    :cond_3
    instance-of v3, v0, Lain;

    if-eqz v3, :cond_0

    check-cast v0, Lain;

    invoke-virtual {v2, v0}, Laup;->a(Lain;)V

    goto :goto_2

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final a(Laio;)V
    .locals 0
    .param p1    # Laio;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1263
    return-void
.end method

.method public final a(Laje;)V
    .locals 0
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1250
    return-void
.end method

.method public final a(Laje;Laio;)V
    .locals 3
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laio;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcd;

    const-string v2, "FeedFragment"

    invoke-direct {v1, v2}, Lbcd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1245
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
    .line 1255
    instance-of v0, p1, Lajr;

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ABORT_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->D:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

    iget-object v0, v0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1258
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;IZ)V
    .locals 0

    .prologue
    .line 1208
    return-void
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/squareup/otto/Bus;

    new-instance v1, Lbam;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbam;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1203
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/squareup/otto/Bus;

    new-instance v1, Lbes;

    invoke-direct {v1, p1, p2}, Lbes;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1204
    return-void
.end method

.method public final a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;)V
    .locals 8

    .prologue
    const v7, 0x7f0a0227

    const v6, 0x7f0a0123

    const/4 v5, 0x4

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 575
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 576
    if-nez v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 578
    :cond_0
    sget-object v1, Lcom/snapchat/android/fragments/feed/FeedFragment$14;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 580
    :pswitch_0
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 581
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 587
    :pswitch_1
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 588
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 594
    :pswitch_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->q()V

    goto :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->b:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Lbgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 940
    :goto_0
    return-void

    .line 938
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Lbgr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->b:Z

    return v0
.end method

.method public final a(Landroid/view/View;FFF)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 1145
    if-nez p1, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return v0

    .line 1146
    :cond_1
    const v1, 0x7f0a022a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1147
    if-eqz v1, :cond_0

    .line 1150
    iget-object v2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->K:Landroid/view/MotionEvent;

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    .line 1151
    invoke-direct {p0, p3, p4}, Lcom/snapchat/android/fragments/feed/FeedFragment;->a(FF)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lajv;

    invoke-static {v2, v3}, Latm;->b(Ljava/lang/String;Lajv;)Lcom/snapchat/android/model/Friend;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/squareup/otto/Bus;

    new-instance v4, Lbay;

    invoke-direct {v4, v2}, Lbay;-><init>(Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1152
    :cond_2
    iput-object v5, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->K:Landroid/view/MotionEvent;

    .line 1156
    :cond_3
    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, p2

    .line 1158
    invoke-virtual {p0, v5}, Lcom/snapchat/android/fragments/feed/FeedFragment;->b(Landroid/view/View;)I

    move-result v3

    .line 1160
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->a(Landroid/view/View;)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    .line 1166
    :cond_4
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v4, v3

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->a(Landroid/view/View;)F

    move-result v0

    int-to-float v4, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    .line 1167
    int-to-float v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1172
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1169
    :cond_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1
.end method

.method public final b(Landroid/view/View;)I
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 1188
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1189
    if-nez v1, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return v0

    .line 1190
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 1191
    if-eqz v2, :cond_0

    .line 1192
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1193
    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1194
    iget v2, v0, Landroid/util/TypedValue;->type:I

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v2, v3}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    .line 1196
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1197
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 893
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 894
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 895
    iget-object v2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    .line 897
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 898
    invoke-static {v0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapView;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->h:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    sget-object v2, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->DOUBLE_TAP:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/squareup/otto/Bus;

    new-instance v2, Lbcz;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v3}, Lbcz;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$9;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    goto :goto_1
.end method

.method protected final e()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 956
    invoke-static {}, Lnf;->d()V

    .line 957
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->g:Lng;

    const-string v1, "feed"

    const-string v4, "move_to_page"

    invoke-virtual {v0, v4, v1}, Lng;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 960
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapView;->a(Lyu;)V

    .line 962
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/squareup/otto/Bus;

    new-instance v1, Lbat;

    invoke-direct {v1}, Lbat;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 963
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 964
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->FEED:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a(Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;)J

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->H:Laqk;

    if-eqz v0, :cond_1

    .line 970
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->H:Laqk;

    invoke-virtual {v0, v3}, Laqk;->a(Z)V

    .line 973
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 974
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->BOUNCE_TEAM_SNAPCHAT_CONVERSATION_ONBOARDING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 976
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lakc;

    invoke-virtual {v0}, Lakc;->e()Ljava/util/List;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-string v5, "teamsnapchat"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 977
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->H:Laqk;

    if-eqz v1, :cond_3

    .line 978
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->H:Laqk;

    const/4 v4, 0x2

    invoke-virtual {v1, v0, v4}, Laqk;->a(Landroid/view/View;I)V

    .line 986
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lakc;

    iget-object v4, v0, Lakc;->mConversations:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v0, v0, Lakc;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_6

    iget-wide v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_6

    iget-wide v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_6

    iget-wide v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lakb;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Snap;->q()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->v()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move v1, v3

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    move v1, v2

    goto :goto_2

    :cond_7
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 988
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    if-eqz v0, :cond_8

    .line 989
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0}, Lagd;->notifyDataSetChanged()V

    .line 992
    :cond_8
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->b:Z

    if-eqz v0, :cond_a

    .line 993
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->o()V

    .line 998
    :goto_3
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->v()V

    .line 999
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->w()V

    .line 1001
    invoke-static {}, Lazu;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1002
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lazu;->a(Landroid/app/Activity;)V

    .line 1005
    :cond_9
    invoke-static {}, Lnf;->e()V

    .line 1006
    return-void

    .line 995
    :cond_a
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->p()V

    goto :goto_3
.end method

.method public final e(Z)V
    .locals 3

    .prologue
    .line 1123
    if-eqz p1, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/squareup/otto/Bus;

    new-instance v1, Lbap;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbap;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcd;

    const-string v2, "FeedFragment"

    invoke-direct {v1, v2}, Lbcd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1127
    return-void
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->f:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->g:Lng;

    const-string v1, "feed"

    const-string v2, "exit_page"

    invoke-virtual {v0, v2, v1}, Lng;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapView;->b(Lyu;)V

    .line 1103
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    iget-object v0, v0, Lagd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1105
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0}, Lagd;->notifyDataSetChanged()V

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->z:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->A:Lbgr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 1111
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->b:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->p()V

    .line 1113
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->u()V

    .line 1115
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->r:Lbgr;

    invoke-virtual {v0}, Lbgr;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->r:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/InAppPromptFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/InAppPromptFlipper;->b()V

    .line 1117
    :cond_2
    invoke-static {}, Lazu;->a()V

    .line 1118
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->b:Z

    if-eqz v0, :cond_0

    .line 613
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->p()V

    .line 614
    const/4 v0, 0x1

    .line 616
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final h()Lala;
    .locals 4

    .prologue
    .line 229
    new-instance v0, Lala;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "FEED"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lala;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public final h_()Z
    .locals 1

    .prologue
    .line 1212
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->mIsVisible:Z

    return v0
.end method

.method public final k()Lalw;
    .locals 1

    .prologue
    .line 1229
    new-instance v0, Lcom/snapchat/android/fragments/feed/FeedFragment$13;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$13;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    return-object v0
.end method

.method public onClosePtrEvent(Lbbb;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->o:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->a()V

    .line 1218
    return-void
.end method

.method public onConversationsUpdatedFromServer(Lbbe;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 734
    const-string v0, "FeedFragment"

    const-string v1, "SNAP-LOG: Refreshing feed on ConversationListUpdatedEvent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->t()V

    .line 736
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->m()V

    .line 737
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v5, 0x7f0a021d

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0a0224

    .line 234
    invoke-static {}, Lnf;->d()V

    .line 235
    const v0, 0x7f04005b

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->mFragmentLayout:Landroid/view/View;

    .line 236
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->G:Landroid/view/inputmethod/InputMethodManager;

    .line 237
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lajv;

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a021c

    const v3, 0x7f0a0232

    new-instance v4, Lcom/snapchat/android/fragments/feed/FeedFragment$1;

    invoke-direct {v4, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$1;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lbgr;-><init>(Landroid/view/View;IILbgr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->A:Lbgr;

    const v0, 0x7f0a021b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->z:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->z:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$12;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$12;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->z:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$15;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$15;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0a021a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$16;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$16;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a021f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->u:Landroid/view/View;

    const v0, 0x7f0a021e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->v:Landroid/view/View;

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0233

    new-instance v3, Lcom/snapchat/android/fragments/feed/FeedFragment$17;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$17;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-direct {v0, v1, v5, v2, v3}, Lbgr;-><init>(Landroid/view/View;IILbgr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->w:Lbgr;

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a002c

    new-instance v3, Lcom/snapchat/android/fragments/feed/FeedFragment$18;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$18;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-direct {v0, v1, v5, v2, v3}, Lbgr;-><init>(Landroid/view/View;IILbgr$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->x:Lbgr;

    new-instance v0, Lcom/snapchat/android/fragments/feed/FeedFragment$19;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$19;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->E:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0234

    invoke-direct {v0, v1, v6, v2}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->r:Lbgr;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->r:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/InAppPromptFlipper;

    const-wide/16 v2, -0x1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    long-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/InAppPromptFlipper;->setTranslationY(F)V

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0237

    invoke-direct {v0, v1, v6, v2}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->t:Lbgr;

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0236

    invoke-direct {v0, v1, v6, v2}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->s:Lbgr;

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->u:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$20;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$20;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->v:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$21;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$21;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0222

    const v3, 0x7f0a0231

    invoke-direct {v0, v1, v2, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->C:Lbgr;

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0223

    const v3, 0x7f0a0230

    invoke-direct {v0, v1, v2, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Lbgr;

    new-instance v0, Lbgr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a011e

    const v3, 0x7f0a01e8

    invoke-direct {v0, v1, v2, v3}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->D:Lbgr;

    const v0, 0x7f0a0220

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->o:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->o:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$5;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setPtrHandler(Lbur;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->o:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->getPtrHeader()Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$6;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    iget-object v0, v0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->p:Landroid/os/Handler;

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lakc;

    iget-object v0, v0, Lakc;->mConversationsForListView:Latw;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lyn;->a()Lyn;

    move-result-object v2

    invoke-static {v1, v0, v2, p0}, Lagd;->a(Landroid/content/Context;Latw;Lyn;Lagd$a;)Lagd;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    const v0, 0x7f0a0221

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f04005c

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$7;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Landroid/view/View;

    invoke-virtual {v0, v1, v9, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    new-instance v0, Laqk;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    sget-object v2, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->RIGHT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-static {}, Lyn;->a()Lyn;

    move-result-object v6

    invoke-static {}, Lni;->a()Lni;

    move-result-object v7

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Laqk;-><init>(Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Laqk$a;Landroid/content/Context;Lagd;Lyn;Lni;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->H:Laqk;

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->H:Laqk;

    iput-boolean v8, v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Z

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->H:Laqk;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->H:Laqk;

    invoke-virtual {v0}, Laqk;->a()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/snapchat/android/fragments/feed/FeedFragment$8;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment$8;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laqn;

    invoke-direct {v0, v1}, Laqn;-><init>(Ljava/util/List;)V

    new-instance v2, Laql;

    iget-object v3, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->j:Lbaa;

    const-string v4, "Feed"

    invoke-direct {v2, v3, v4}, Laql;-><init>(Lbaa;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lari;

    invoke-interface {v0}, Lari;->l()Lcom/snapchat/android/ui/SnapView;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->a:Lcom/snapchat/android/ui/SnapView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->m()V

    .line 238
    invoke-static {}, Lnf;->e()V

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 237
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->t()V

    .line 705
    return-void
.end method

.method public onFeedRefreshedEvent(Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;)V
    .locals 4
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const v3, 0x7f0c00db

    .line 811
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 812
    if-nez v0, :cond_0

    .line 830
    :goto_0
    return-void

    .line 813
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->E:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 814
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->t()V

    .line 816
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$1;->$SwitchMap$com$snapchat$android$util$eventbus$SnapMessageFeedRefreshedEvent$RefreshError:[I

    iget-object v2, p1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->mError:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    invoke-virtual {v2}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v0, ""

    .line 817
    :goto_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 818
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbbg;

    const-string v3, "FeedFragment"

    invoke-direct {v2, v0, v3}, Lbbg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 819
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->mError:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->AUTHENTICATION_ERROR:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    if-ne v0, v1, :cond_1

    .line 821
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lajv;

    invoke-virtual {v0}, Lajv;->v()V

    .line 822
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lasr;->a(Landroid/app/Activity;)V

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->o:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->o:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->o:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->e()V

    .line 827
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->i:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/util/UUID;)V

    .line 829
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->m()V

    goto :goto_0

    .line 816
    :pswitch_0
    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const v1, 0x7f0c02e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    const v1, 0x7f0c0184

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    const v1, 0x7f0c0096

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    const-string v0, ""

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onFeedTimerChangeEvent(Lbbl;)V
    .locals 6
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 755
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_0

    iget-object v1, p1, Lbbl;->mFriendUsername:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 757
    iget-object v1, p1, Lbbl;->mFriendUsername:Ljava/lang/String;

    invoke-static {v0, v1}, Laxi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 758
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    move v1, v2

    :goto_0
    if-gt v1, v4, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v5, :cond_1

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-interface {v2, v1, v0, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 760
    :cond_0
    return-void

    .line 758
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onLoadSnapMediaEvent(Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 834
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;->mType:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    sget-object v1, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;->ENDED:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    if-ne v0, v1, :cond_1

    .line 835
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lakc;

    invoke-virtual {v0}, Lakc;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->m()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laje;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laje;

    move-result-object v0

    invoke-virtual {v0}, Laje;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->i:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0}, Lagd;->notifyDataSetChanged()V

    .line 838
    return-void
.end method

.method public onLockScreenOpenedEvent(Lbcg;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->onResume()V

    .line 676
    return-void
.end method

.method public onNewChatMessageReceived(Lbck;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->t()V

    .line 720
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbcw;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->t()V

    .line 710
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 642
    invoke-static {}, Lnf;->d()V

    .line 643
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 645
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lajv;

    .line 647
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 648
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 649
    if-nez v0, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 655
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->c:Laol;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Laol;->b(Landroid/content/Context;)Landroid/content/Intent;

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

    invoke-virtual {v0, v1, v2}, Laol;->a(Landroid/content/Context;Landroid/content/Intent;)I

    .line 661
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->r()V

    .line 663
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0}, Lagd;->notifyDataSetChanged()V

    .line 664
    invoke-static {}, Lnf;->e()V

    goto :goto_0
.end method

.method public onRetryFailedSnapEvent(Lbdb;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 714
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0}, Lagd;->notifyDataSetChanged()V

    .line 715
    return-void
.end method

.method public onScrollFeedToTopEvent(Lbdd;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$11;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$11;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1141
    return-void
.end method

.method public onSendSnapRequestCompleteEvent(Lbdf;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0}, Lagd;->notifyDataSetChanged()V

    .line 725
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1222
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->SHOULD_SHOW_SUGGESTION_PROMPT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->v()V

    .line 1225
    :cond_0
    return-void
.end method

.method public onSnapSelectedForReplayEvent(Lbdp;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0}, Lagd;->notifyDataSetChanged()V

    .line 802
    return-void
.end method

.method public onSnapSelectedForRetryEvent(Lbdq;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0}, Lagd;->notifyDataSetChanged()V

    .line 807
    return-void
.end method

.method public onSnapSendInitiated(Lbdr;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 729
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lagd;

    invoke-virtual {v0}, Lagd;->notifyDataSetChanged()V

    .line 730
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 636
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStart()V

    .line 637
    invoke-static {p0}, Lajx;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 638
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 669
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStop()V

    .line 670
    invoke-static {p0}, Lajx;->b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 671
    return-void
.end method

.method public onSyncAllCompletedEvent(Lbeh;)V
    .locals 5
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 852
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lakc;

    invoke-virtual {v0}, Lakc;->e()Ljava/util/List;

    move-result-object v1

    .line 855
    iget-boolean v0, p1, Lbeh;->mCalledOnLoginOrOnResume:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->i:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v2, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    iget-object v3, p1, Lbeh;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 859
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->m()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laje;

    move-result-object v0

    invoke-virtual {v0}, Laje;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->i:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    iget-object v2, p1, Lbeh;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 864
    :cond_1
    return-void
.end method

.method public onUpdateFeedEvent(Lben;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->t()V

    .line 695
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->n()V

    .line 696
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->m()V

    .line 697
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 698
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->w()V

    .line 700
    :cond_0
    return-void
.end method

.method public onUserLoadedEvent(Lber;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 680
    if-eqz p1, :cond_0

    iget-object v0, p1, Lber;->user:Lajv;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lajv;

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p1, Lber;->user:Lajv;

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lajv;

    .line 684
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->r()V

    .line 687
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->q()V

    .line 688
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->t()V

    .line 689
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->m()V

    .line 690
    return-void
.end method
