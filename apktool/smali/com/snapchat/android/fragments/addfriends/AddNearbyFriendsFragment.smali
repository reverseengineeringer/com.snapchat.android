.class public Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;
.super Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$7;
    }
.end annotation


# instance fields
.field private final A:Lbgk;

.field protected a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Latx;

.field private n:Lahq;

.field private final o:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

.field private p:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/app/AlertDialog;

.field private u:Z

.field private v:Lajx;

.field private final w:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field private x:J

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 90
    invoke-static {}, Laol;->a()Laol;

    move-result-object v1

    sget-object v2, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    new-instance v3, Latx;

    invoke-direct {v3}, Latx;-><init>()V

    new-instance v4, Lahq;

    invoke-direct {v4}, Lahq;-><init>()V

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v5

    new-instance v6, Lbgk;

    invoke-direct {v6}, Lbgk;-><init>()V

    new-instance v7, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v7}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;-><init>(Laol;Ljavax/inject/Provider;Latx;Lahq;Lajx;Lbgk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    .line 93
    return-void
.end method

.method private constructor <init>(Laol;Ljavax/inject/Provider;Latx;Lahq;Lajx;Lbgk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laol;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Latx;",
            "Lahq;",
            "Lajx;",
            "Lbgk;",
            "Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;-><init>(Laol;Ljavax/inject/Provider;)V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->a:Ljava/util/Set;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->b:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->c:Ljava/util/Set;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->u:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->g:Lafa;

    .line 81
    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->m:Latx;

    .line 82
    iput-object p4, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->n:Lahq;

    .line 83
    iput-object p5, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->v:Lajx;

    .line 84
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->o:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 85
    iput-object p6, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->A:Lbgk;

    .line 86
    iput-object p7, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->w:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 87
    return-void
.end method

.method private a(Landroid/app/AlertDialog;)V
    .locals 1

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->t()V

    .line 501
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->t:Landroid/app/AlertDialog;

    .line 502
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->t:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 503
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->p:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->p:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)Lajx;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->v:Lajx;

    return-object v0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbkk;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 244
    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 268
    :goto_0
    return-object v0

    .line 248
    :cond_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 249
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbkk;

    .line 251
    iget-object v5, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->a:Ljava/util/Set;

    invoke-virtual {v1}, Lbkk;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 252
    iget-object v5, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->a:Ljava/util/Set;

    invoke-virtual {v1}, Lbkk;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {v1}, Lbkk;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lajv;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v5

    .line 255
    if-nez v5, :cond_2

    .line 256
    new-instance v5, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lbkk;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lbkk;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    :cond_2
    iget-boolean v6, v5, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v6, :cond_3

    .line 258
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {v5}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v6

    if-nez v6, :cond_1

    .line 260
    invoke-virtual {v1}, Lbkk;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 263
    :cond_3
    const-string v1, "AddNearbyFriendsFrag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Redacting blocked snapchatter: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 267
    :cond_4
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v2

    .line 268
    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->p:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->u:Z

    return v0
.end method

.method private r()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 381
    if-eqz v0, :cond_1

    .line 382
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->b:Ljava/util/Set;

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lajv;->a(Ljava/util/Set;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 383
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->c:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->m()V

    .line 387
    :cond_1
    return-void
.end method

.method private t()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->t:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->t:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->t:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 492
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 371
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_NEARBY_FRIENDS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public final a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;)V
    .locals 4

    .prologue
    const v2, 0x7f0c0296

    .line 279
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$7;->b:[I

    invoke-virtual {p1}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized interrupt reason!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->n:Lahq;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$2;-><init>(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)V

    invoke-virtual {v0, v1, v2}, Lahq;->a(Landroid/content/Context;Lahq$a;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 300
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->a(Landroid/app/AlertDialog;)V

    .line 341
    :goto_0
    return-void

    .line 303
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    const v1, 0x7f0c0027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0195

    new-instance v3, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$4;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$4;-><init>(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c018b

    new-instance v3, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$3;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$3;-><init>(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->a(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 327
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->j:Landroid/widget/TextView;

    const v1, 0x7f0c01d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 328
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 331
    :pswitch_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->j:Landroid/widget/TextView;

    const v1, 0x7f0c0185

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 336
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 339
    :pswitch_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->j:Landroid/widget/TextView;

    const v1, 0x7f0c0184

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 340
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lr;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbkk;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 220
    if-nez p1, :cond_0

    .line 221
    const-string v0, "AddNearbyFriendsFrag"

    const-string v1, "Null snapchatter list received"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v0, "AddNearbyFriendsFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found snapchatters from server: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->l:Ljava/util/List;

    monitor-enter v1

    .line 230
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 231
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->m()V

    .line 232
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLastVisiblePosition()I

    move-result v1

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v3, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_2
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->s:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int v6, v1, v5

    div-int v7, v4, v3

    if-le v6, v7, :cond_3

    mul-int v1, v5, v4

    div-int/2addr v1, v3

    :cond_3
    add-int/2addr v0, v1

    if-ge v2, v0, :cond_5

    const v0, 0x3e99999a    # 0.3f

    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->r:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->r:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$6;-><init>(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->j:Landroid/widget/TextView;

    const v1, 0x7f0c027f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 232
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 234
    :cond_5
    const v0, 0x3dcccccd    # 0.1f

    goto :goto_1
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 482
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->e()V

    .line 130
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_NEARBY_FRIENDS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V

    .line 131
    return-void
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 135
    const v0, 0x7f040006

    return v0
.end method

.method public final k()Lalw;
    .locals 1

    .prologue
    .line 391
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$5;-><init>(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)V

    return-object v0
.end method

.method protected final l()Lafe;
    .locals 3

    .prologue
    .line 366
    new-instance v0, Lafg;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->m:Latx;

    invoke-direct {v0, v1, v2}, Lafg;-><init>(Ljava/util/Set;Latx;)V

    return-object v0
.end method

.method protected final m()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->g:Lafa;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->g:Lafa;

    invoke-virtual {v0}, Lafa;->notifyDataSetChanged()V

    .line 176
    :cond_0
    return-void
.end method

.method protected final n()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 355
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->SWIPEABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->WHITE_TEXT:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;)V

    iput-boolean v3, v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->j:Z

    iput-boolean v3, v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->g:Z

    return-object v0
.end method

.method protected final o()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 140
    const v0, 0x7f040005

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->i:Landroid/view/View;

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->r()V

    .line 108
    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->q:Landroid/view/View;

    .line 109
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;-><init>(Landroid/content/Context;Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->p:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    .line 110
    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->r:Landroid/widget/ImageView;

    .line 111
    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->s:Landroid/widget/ImageView;

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->x:J

    .line 114
    iput v4, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->y:I

    .line 115
    iput v4, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->z:I

    .line 116
    const-string v0, "ANF_LOAD_VIEW"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 118
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onPause()V

    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->p:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->p:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->INTENTIONAL:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;)V

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->t()V

    .line 151
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbcw;)V
    .locals 4
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 181
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->a(Lbcw;)V

    .line 182
    iget-object v0, p1, Lbcw;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 183
    if-eqz v0, :cond_0

    .line 184
    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$7;->a:[I

    iget-object v2, p1, Lbcw;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 205
    :goto_0
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbp;

    invoke-direct {v1}, Lbbp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 207
    :cond_0
    return-void

    .line 187
    :pswitch_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 188
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->g:Lafa;

    invoke-virtual {v1, v0}, Lafa;->a(Lcom/snapchat/android/model/Friend;)V

    .line 189
    iget v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->z:I

    .line 190
    const-string v1, "ANF_BLOCK"

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->b:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    iget v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->y:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->y:I

    .line 196
    const-string v1, "ANF_ADD"

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->p:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a()V

    .line 125
    return-void
.end method

.method public onStop()V
    .locals 6

    .prologue
    .line 155
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onStop()V

    .line 157
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 161
    const-string v0, "ANF_SESSION_END"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "snapchattersFound"

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "snapchattersAdded"

    iget v2, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "snapchattersBlocked"

    iget v2, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "sessionDuration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->x:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 167
    return-void
.end method

.method public onSyncAllCompletedEvent(Lbeh;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->r()V

    .line 377
    return-void
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->j:Landroid/widget/TextView;

    const v1, 0x7f0c0207

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->q:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->j:Landroid/widget/TextView;

    const v1, 0x7f0c027f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 275
    return-void
.end method
