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
.field private A:I

.field private final B:Lbhk;

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

.field private n:Lauv;

.field private o:Laim;

.field private final p:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

.field private q:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/app/AlertDialog;

.field private v:Z

.field private w:Lakr;

.field private final x:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field private y:J

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 94
    invoke-static {}, Laph;->a()Laph;

    move-result-object v1

    sget-object v2, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    new-instance v3, Lauv;

    invoke-direct {v3}, Lauv;-><init>()V

    new-instance v4, Laim;

    invoke-direct {v4}, Laim;-><init>()V

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v5

    new-instance v6, Lbhk;

    invoke-direct {v6}, Lbhk;-><init>()V

    new-instance v7, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v7}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;-><init>(Laph;Ljavax/inject/Provider;Lauv;Laim;Lakr;Lbhk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    .line 97
    return-void
.end method

.method private constructor <init>(Laph;Ljavax/inject/Provider;Lauv;Laim;Lakr;Lbhk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laph;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Lauv;",
            "Laim;",
            "Lakr;",
            "Lbhk;",
            "Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;-><init>(Laph;Ljavax/inject/Provider;)V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->a:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->b:Ljava/util/Set;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->c:Ljava/util/Set;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->v:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->g:Laga;

    .line 85
    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->n:Lauv;

    .line 86
    iput-object p4, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->o:Laim;

    .line 87
    iput-object p5, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->w:Lakr;

    .line 88
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->p:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 89
    iput-object p6, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->B:Lbhk;

    .line 90
    iput-object p7, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->x:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 91
    return-void
.end method

.method private a(Landroid/app/AlertDialog;)V
    .locals 1

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->u()V

    .line 505
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->u:Landroid/app/AlertDialog;

    .line 506
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->u:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 507
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->q:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->q:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)Lakr;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->w:Lakr;

    return-object v0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbll;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 248
    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 272
    :goto_0
    return-object v0

    .line 252
    :cond_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 253
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 254
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbll;

    .line 255
    iget-object v5, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->a:Ljava/util/Set;

    invoke-virtual {v1}, Lbll;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 256
    iget-object v5, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->a:Ljava/util/Set;

    invoke-virtual {v1}, Lbll;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {v1}, Lbll;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lakp;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v5

    .line 259
    if-nez v5, :cond_2

    .line 260
    new-instance v5, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lbll;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lbll;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 261
    :cond_2
    iget-boolean v6, v5, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v6, :cond_3

    .line 262
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-virtual {v5}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v6

    if-nez v6, :cond_1

    .line 264
    invoke-virtual {v1}, Lbll;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 267
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Redacting blocked snapchatter: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 271
    :cond_4
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v2

    .line 272
    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->q:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->v:Z

    return v0
.end method

.method private t()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 385
    if-eqz v0, :cond_1

    .line 386
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->b:Ljava/util/Set;

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lakp;->a(Ljava/util/Set;I)Ljava/util/List;

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

    .line 387
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->c:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->n()V

    .line 391
    :cond_1
    return-void
.end method

.method private u()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->u:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->u:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->u:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 496
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_NEARBY_FRIENDS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public final a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;)V
    .locals 4

    .prologue
    const v2, 0x7f0c0296

    .line 283
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->r:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$7;->b:[I

    invoke-virtual {p1}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized interrupt reason!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->o:Laim;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$2;-><init>(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)V

    invoke-virtual {v0, v1, v2}, Laim;->a(Landroid/content/Context;Laim$a;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 304
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->a(Landroid/app/AlertDialog;)V

    .line 345
    :goto_0
    return-void

    .line 307
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 311
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

    .line 326
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->a(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 331
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f0c01d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 332
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 335
    :pswitch_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f0c0185

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 340
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 343
    :pswitch_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f0c0184

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 344
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 285
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
            "Lbll;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found snapchatters from server: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->m:Ljava/util/List;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->n()V

    .line 236
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->s:Landroid/widget/ImageView;

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

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_2
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->t:Landroid/widget/ImageView;

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
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->s:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->s:Landroid/widget/ImageView;

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

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f0c027f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->l:Landroid/widget/TextView;

    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 236
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 238
    :cond_5
    const v0, 0x3dcccccd    # 0.1f

    goto :goto_1
.end method

.method protected final a(Lkf;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 524
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->g:Laga;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1, v2, v4}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->g:Laga;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v2, v3, v4}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v2

    new-instance v3, Lkd;

    invoke-direct {v3}, Lkd;-><init>()V

    iput-object p1, v3, Lkd;->exitEvent:Lkf;

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lkd;->nearbyFriendCount:Ljava/lang/Long;

    int-to-long v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lkd;->nearbyFriendAddCount:Ljava/lang/Long;

    int-to-long v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lkd;->nearbyFriendBlockCount:Ljava/lang/Long;

    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 528
    return-void
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 486
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->e()V

    .line 134
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_NEARBY_FRIENDS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V

    .line 135
    return-void
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 139
    const v0, 0x7f040007

    return v0
.end method

.method public final k()Lamt;
    .locals 1

    .prologue
    .line 395
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$5;-><init>(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)V

    return-object v0
.end method

.method protected final m()Lage;
    .locals 3

    .prologue
    .line 370
    new-instance v0, Lagg;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->n:Lauv;

    invoke-direct {v0, v1, v2}, Lagg;-><init>(Ljava/util/Set;Lauv;)V

    return-object v0
.end method

.method protected final n()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->g:Laga;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->g:Laga;

    invoke-virtual {v0}, Laga;->notifyDataSetChanged()V

    .line 180
    :cond_0
    return-void
.end method

.method protected final o()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 359
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->SWIPEABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->WHITE_TEXT:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;)V

    iput-boolean v3, v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->j:Z

    iput-boolean v3, v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->g:Z

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->j:Landroid/view/View;

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->t()V

    .line 112
    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->r:Landroid/view/View;

    .line 113
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;-><init>(Landroid/content/Context;Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->q:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    .line 114
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->s:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->t:Landroid/widget/ImageView;

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->y:J

    .line 118
    iput v4, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->z:I

    .line 119
    iput v4, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->A:I

    .line 120
    const-string v0, "ANF_LOAD_VIEW"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 122
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onPause()V

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->q:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->q:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->INTENTIONAL:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;)V

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->u()V

    .line 155
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbdw;)V
    .locals 4
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 185
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->a(Lbdw;)V

    .line 186
    iget-object v0, p1, Lbdw;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 187
    if-eqz v0, :cond_0

    .line 188
    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$7;->a:[I

    iget-object v2, p1, Lbdw;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 209
    :goto_0
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcp;

    invoke-direct {v1}, Lbcp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 211
    :cond_0
    return-void

    .line 191
    :pswitch_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->g:Laga;

    invoke-virtual {v1, v0}, Laga;->a(Lcom/snapchat/android/model/Friend;)V

    .line 193
    iget v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->A:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->A:I

    .line 194
    const-string v1, "ANF_BLOCK"

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->b:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    iget v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->z:I

    .line 200
    const-string v1, "ANF_ADD"

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    goto :goto_0

    .line 188
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
    .line 127
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onResume()V

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->q:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a()V

    .line 129
    return-void
.end method

.method public onStop()V
    .locals 6

    .prologue
    .line 159
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onStop()V

    .line 161
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 165
    const-string v0, "ANF_SESSION_END"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "snapchattersFound"

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "snapchattersAdded"

    iget v2, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "snapchattersBlocked"

    iget v2, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "sessionDuration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->y:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 171
    return-void
.end method

.method public onSyncAllCompletedEvent(Lbfg;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->t()V

    .line 381
    return-void
.end method

.method protected final p()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 144
    const v0, 0x7f040006

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f0c0207

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 216
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->l:Landroid/widget/TextView;

    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->r:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    return-void
.end method

.method public final r()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f0c027f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 278
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->l:Landroid/widget/TextView;

    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 279
    return-void
.end method
