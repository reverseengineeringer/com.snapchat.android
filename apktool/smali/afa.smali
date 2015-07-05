.class public final Lafa;
.super Lapf;
.source "SourceFile"

# interfaces
.implements Lbfe$a;
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafa$3;,
        Lafa$b;,
        Lafa$a;,
        Lafa$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lapf",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;",
        "Lbfe$a",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;",
        "Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;"
    }
.end annotation


# instance fields
.field private final A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final C:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

.field public a:Lcom/snapchat/android/util/FriendSectionizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/util/FriendSectionizer",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/snapchat/android/model/Friend;

.field public c:Lcom/snapchat/android/model/Friend;

.field public d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lafe;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field protected k:Lazo;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final l:Landroid/os/Handler;

.field private final m:I

.field private final n:Landroid/content/Context;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroid/view/LayoutInflater;

.field private final r:Lafa$a;

.field private s:Lafc;

.field private final t:Landroid/content/res/Resources;

.field private final u:I

.field private final v:I

.field private final w:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Lbfy;

.field private final y:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

.field private final z:Lafa$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/util/FriendSectionizer;Lafa$a;Lafe;Ljavax/inject/Provider;Lcom/snapchat/android/fragments/addfriends/FriendListProperty;Lbfy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lcom/snapchat/android/util/FriendSectionizer",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lafa$a;",
            "Lafe;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Lcom/snapchat/android/fragments/addfriends/FriendListProperty;",
            "Lbfy;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 202
    const v0, 0x7f040003

    invoke-direct {p0, p1, v0, p2}, Lapf;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 67
    iput-object v1, p0, Lafa;->b:Lcom/snapchat/android/model/Friend;

    .line 68
    iput-object v1, p0, Lafa;->c:Lcom/snapchat/android/model/Friend;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lafa;->d:Ljava/util/HashSet;

    .line 155
    new-instance v0, Lafa$c;

    invoke-direct {v0}, Lafa$c;-><init>()V

    iput-object v0, p0, Lafa;->z:Lafa$c;

    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lafa;->A:Ljava/util/Set;

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lafa;->B:Ljava/util/Set;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafa;->j:Z

    .line 203
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lafa;)V

    .line 204
    iput-object p1, p0, Lafa;->n:Landroid/content/Context;

    .line 205
    iput-object p2, p0, Lafa;->p:Ljava/util/List;

    .line 206
    iput-object p2, p0, Lafa;->o:Ljava/util/List;

    .line 207
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lafa;->q:Landroid/view/LayoutInflater;

    .line 208
    iput-object p3, p0, Lafa;->a:Lcom/snapchat/android/util/FriendSectionizer;

    .line 209
    iput-object p4, p0, Lafa;->r:Lafa$a;

    .line 211
    iget-object v0, p7, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->b:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->getBackgroundResId()I

    move-result v0

    iput v0, p0, Lafa;->m:I

    .line 213
    iget-object v0, p0, Lafa;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lafa;->t:Landroid/content/res/Resources;

    .line 214
    iget-object v0, p0, Lafa;->t:Landroid/content/res/Resources;

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lafa;->u:I

    .line 215
    iget-object v0, p0, Lafa;->t:Landroid/content/res/Resources;

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lafa;->v:I

    .line 217
    new-instance v0, Lafa$1;

    invoke-direct {v0, p0}, Lafa$1;-><init>(Lafa;)V

    iput-object v0, p0, Lafa;->l:Landroid/os/Handler;

    .line 239
    iput-object p5, p0, Lafa;->e:Lafe;

    .line 240
    iput-object p6, p0, Lafa;->w:Ljavax/inject/Provider;

    .line 241
    iput-object p7, p0, Lafa;->C:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    .line 242
    iput-object p8, p0, Lafa;->x:Lbfy;

    .line 243
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v0

    iput-object v0, p0, Lafa;->y:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 244
    return-void
.end method

.method private a(Lcom/snapchat/android/model/Friend;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lafa;->a:Lcom/snapchat/android/util/FriendSectionizer;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/util/FriendSectionizer;->a(Ljava/lang/Object;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lafa;->n:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/snapchat/android/util/FriendSectionizer;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lafa;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lafa;->A:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Lafa;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lafa;->B:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lafa;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lafa;->o:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lafa;->r:Lafa$a;

    invoke-interface {v0}, Lafa$a;->a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 427
    invoke-virtual {p0}, Lafa;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 428
    invoke-virtual {p0, p1}, Lafa;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 429
    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p0}, Lafa;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lafa;->j:Z

    if-nez v1, :cond_0

    .line 431
    invoke-virtual {p0}, Lafa;->a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v1

    invoke-virtual {p0}, Lafa;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lafa;->b()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;II)V

    .line 433
    const/4 v1, 0x1

    iput-boolean v1, p0, Lafa;->j:Z

    .line 435
    :cond_0
    iget-object v1, p0, Lafa;->z:Lafa$c;

    invoke-virtual {v1, v0}, Lafa$c;->b(Lcom/snapchat/android/model/Friend;)V

    .line 436
    invoke-virtual {p0}, Lafa;->notifyDataSetChanged()V

    .line 439
    :cond_1
    return-void
.end method

.method public final a(Laff;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/FriendAction$BlockReason;Lpp$a;Lic;)V
    .locals 13

    .prologue
    .line 445
    new-instance v1, Lafa$2;

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/snapchat/android/model/Friend;->mUserId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p2, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    move-object v2, p0

    move-object/from16 v3, p3

    move-object v4, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p3

    move-object v11, p2

    move-object v12, p1

    invoke-direct/range {v1 .. v12}, Lafa$2;-><init>(Lafa;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/snapchat/android/model/FriendAction$BlockReason;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Laff;)V

    invoke-virtual {p0}, Lafa;->a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v2

    iput-object v2, v1, Lpp;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    iput-object v2, v1, Lpp;->mAddSourceType:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    move-object/from16 v0, p5

    iput-object v0, v1, Lpp;->mFriendActionCompleteCallback:Lpp$a;

    invoke-virtual {v1}, Lpp;->e()Lpp;

    move-result-object v1

    move-object/from16 v0, p6

    iput-object v0, v1, Lpp;->mActionMethod:Lic;

    invoke-virtual {v1}, Lpp;->f()V

    .line 514
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/Friend;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 522
    iget-object v0, p0, Lafa;->z:Lafa$c;

    invoke-virtual {v0, p1}, Lafa$c;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lafa;->z:Lafa$c;

    invoke-virtual {v0, p1}, Lafa$c;->b(Lcom/snapchat/android/model/Friend;)V

    .line 525
    :cond_0
    invoke-virtual {p0}, Lafa;->notifyDataSetChanged()V

    .line 526
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    if-nez p1, :cond_0

    .line 387
    iget-object v0, p0, Lafa;->p:Ljava/util/List;

    iput-object v0, p0, Lafa;->o:Ljava/util/List;

    .line 391
    :goto_0
    invoke-virtual {p0}, Lafa;->notifyDataSetChanged()V

    .line 392
    return-void

    .line 389
    :cond_0
    iput-object p1, p0, Lafa;->o:Ljava/util/List;

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lafa;->r:Lafa$a;

    invoke-interface {v0}, Lafa$a;->d()I

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lafa;->s:Lafc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lafa;->s:Lafc;

    iget-object v0, v0, Lafc;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lafa;->o:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lafa;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lafa;->s:Lafc;

    if-nez v0, :cond_0

    new-instance v0, Lafc;

    iget-object v1, p0, Lafa;->p:Ljava/util/List;

    iget-object v2, p0, Lafa;->k:Lazo;

    invoke-direct {v0, v1, v2, p0}, Lafc;-><init>(Ljava/util/List;Lazo;Lbfe$a;)V

    iput-object v0, p0, Lafa;->s:Lafc;

    .line 377
    :cond_0
    iget-object v0, p0, Lafa;->s:Lafc;

    iget-boolean v1, p0, Lafa;->f:Z

    iput-boolean v1, v0, Lafc;->b:Z

    .line 378
    iget-object v0, p0, Lafa;->s:Lafc;

    iget-boolean v1, p0, Lafa;->g:Z

    iput-boolean v1, v0, Lafc;->c:Z

    .line 379
    iget-object v0, p0, Lafa;->s:Lafc;

    iget-boolean v1, p0, Lafa;->h:Z

    iput-boolean v1, v0, Lafc;->e:Z

    .line 380
    iget-object v0, p0, Lafa;->s:Lafc;

    iget-boolean v1, p0, Lafa;->i:Z

    iput-boolean v1, v0, Lafc;->d:Z

    .line 381
    iget-object v0, p0, Lafa;->s:Lafc;

    return-object v0
.end method

.method public final getHeaderId(I)J
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lafa;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 312
    instance-of v1, v0, Lafl;

    if-eqz v1, :cond_0

    .line 313
    const-string v0, "shared story"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    .line 315
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, v0, p1}, Lafa;->a(Lcom/snapchat/android/model/Friend;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public final getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    if-nez p2, :cond_1

    .line 278
    new-instance v1, Lafa$b;

    invoke-direct {v1, p0}, Lafa$b;-><init>(Lafa;)V

    .line 279
    iget-object v0, p0, Lafa;->q:Landroid/view/LayoutInflater;

    const v2, 0x7f04008b

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 280
    const v0, 0x7f0a007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafa$b;->a:Landroid/widget/TextView;

    .line 281
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 286
    :goto_0
    iget-object v0, p0, Lafa;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 287
    invoke-direct {p0, v0, p1}, Lafa;->a(Lcom/snapchat/android/model/Friend;I)Ljava/lang/String;

    move-result-object v2

    .line 289
    instance-of v0, v0, Lafl;

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    :cond_0
    iget-object v0, v1, Lafa$b;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    :goto_1
    return-object p2

    .line 283
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafa$b;

    move-object v1, v0

    goto :goto_0

    .line 292
    :cond_2
    iget-object v0, v1, Lafa$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object v0, v1, Lafa$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    .line 328
    iget-object v0, p0, Lafa;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/snapchat/android/model/Friend;

    .line 329
    if-nez v11, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-object p2

    .line 332
    :cond_1
    if-nez p2, :cond_8

    .line 333
    iget-object v0, p0, Lafa;->q:Landroid/view/LayoutInflater;

    const v1, 0x7f040003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 334
    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to inflate add_friends_item"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_2
    new-instance v0, Laff;

    iget-object v3, p0, Lafa;->A:Ljava/util/Set;

    iget-object v4, p0, Lafa;->B:Ljava/util/Set;

    iget-object v5, p0, Lafa;->C:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-object v6, p0, Lafa;->e:Lafe;

    iget-object v7, p0, Lafa;->z:Lafa$c;

    iget-object v8, p0, Lafa;->w:Ljavax/inject/Provider;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Laff;-><init>(Lafa;Landroid/view/View;Ljava/util/Set;Ljava/util/Set;Lcom/snapchat/android/fragments/addfriends/FriendListProperty;Lafe;Lafa$c;Ljavax/inject/Provider;)V

    .line 338
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v2

    .line 343
    :goto_1
    iput p1, v0, Laff;->G:I

    .line 345
    instance-of v1, v11, Lafl;

    if-eqz v1, :cond_9

    move-object v5, v11

    .line 346
    check-cast v5, Lafl;

    iget-object v4, p0, Lafa;->r:Lafa$a;

    iget v1, p0, Lafa;->m:I

    invoke-virtual {v5}, Lafl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laff;->a(Ljava/lang/String;)V

    iget-object v2, v0, Laff;->z:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Laff;->n:Landroid/widget/Button;

    new-instance v3, Laff$13;

    invoke-direct {v3, v0, v5}, Laff$13;-><init>(Laff;Lafl;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Laff;->n:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, v0, Laff;->l:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-interface {v4}, Lafa$a;->a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v2

    invoke-virtual {v0, v5}, Laff;->e(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    move-result-object v3

    invoke-interface {v4}, Lafa$a;->s_()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Laff;->a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    .line 354
    :goto_2
    iget-object v1, p0, Lafa;->l:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v11}, Lcom/snapchat/android/model/Friend;->q()Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f02006e

    iget-object v2, v0, Laff;->H:Lafa;

    invoke-virtual {v2}, Lafa;->a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    const/4 v4, 0x0

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Laff;->a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    :goto_3
    iget-object v1, v0, Laff;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->b:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->WHITE_TEXT:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Laff;->m:Lcom/snapchat/android/ui/FriendTextsView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/FriendTextsView;->setTextColor(I)V

    :cond_3
    iget-object v2, v0, Laff;->w:Landroid/view/View;

    iget-object v1, v0, Laff;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-boolean v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->d:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Laff;->y:Landroid/view/View;

    iget-object v1, v0, Laff;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-boolean v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->e:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Laff;->x:Landroid/view/View;

    iget-object v1, v0, Laff;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-boolean v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->f:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Laff;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->TAPPABLE_FRIENDS:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    if-eq v1, v2, :cond_4

    iget-object v1, v0, Laff;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->ALWAYS_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    if-ne v1, v2, :cond_6

    :cond_4
    invoke-virtual {v11}, Lcom/snapchat/android/model/Friend;->q()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {v11}, Laff;->b(Lcom/snapchat/android/model/Friend;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Laff;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->ALWAYS_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    if-ne v1, v2, :cond_11

    :cond_5
    iget-object v1, v0, Laff;->k:Landroid/widget/RelativeLayout;

    new-instance v2, Laff$9;

    invoke-direct {v2, v0, v11}, Laff$9;-><init>(Laff;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_7
    iget-object v1, v0, Laff;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->TAPPABLE_FRIENDS:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    if-eq v1, v2, :cond_7

    iget-object v1, v0, Laff;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->ALWAYS_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    if-eq v1, v2, :cond_7

    iget-object v1, v0, Laff;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    iget-object v1, v0, Laff;->w:Landroid/view/View;

    new-instance v2, Laff$10;

    invoke-direct {v2, v0, v11, v6}, Laff$10;-><init>(Laff;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Laff;->x:Landroid/view/View;

    new-instance v2, Laff$11;

    invoke-direct {v2, v0, v11}, Laff$11;-><init>(Laff;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Laff;->y:Landroid/view/View;

    new-instance v2, Laff$12;

    invoke-direct {v2, v0, v11}, Laff$12;-><init>(Laff;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 340
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laff;

    goto/16 :goto_1

    .line 349
    :cond_9
    iget-object v3, p0, Lafa;->c:Lcom/snapchat/android/model/Friend;

    iget-object v4, p0, Lafa;->b:Lcom/snapchat/android/model/Friend;

    iget v5, p0, Lafa;->v:I

    iget v6, p0, Lafa;->u:I

    iget v7, p0, Lafa;->m:I

    iget-object v8, p0, Lafa;->r:Lafa$a;

    iget-object v9, p0, Lafa;->d:Ljava/util/HashSet;

    iget-object v10, p0, Lafa;->x:Lbfy;

    move v1, p1

    move-object v2, v11

    invoke-virtual/range {v0 .. v10}, Laff;->a(ILcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;IIILafa$a;Ljava/util/Set;Lbfy;)V

    goto/16 :goto_2

    .line 354
    :cond_a
    iget-object v1, v0, Laff;->L:Lafa$c;

    invoke-virtual {v1, v11}, Lafa$c;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v11}, Lcom/snapchat/android/model/Friend;->g()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Laff$8;

    invoke-direct {v1, v0, v11}, Laff$8;-><init>(Laff;Lcom/snapchat/android/model/Friend;)V

    invoke-static {v11, v1}, Lait;->a(Lcom/snapchat/android/model/Friend;Lait$a;)V

    iget-boolean v1, v11, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v1, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v0, v11, v1}, Laff;->a(Lcom/snapchat/android/model/Friend;Z)V

    :cond_b
    :goto_8
    iget-boolean v1, v11, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-eqz v1, :cond_d

    iget-object v1, v0, Laff;->n:Landroid/widget/Button;

    const v2, 0x7f020254

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, v0, Laff;->n:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, v0, Laff;->J:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laff;->b(I)V

    goto/16 :goto_3

    :cond_c
    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Laff;->a(Lcom/snapchat/android/model/Friend;Z)V

    goto :goto_8

    :cond_d
    iget-object v1, v0, Laff;->J:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laff;->b(I)V

    goto/16 :goto_3

    :cond_e
    const/16 v1, 0x8

    goto/16 :goto_4

    :cond_f
    const/16 v1, 0x8

    goto/16 :goto_5

    :cond_10
    const/16 v1, 0x8

    goto/16 :goto_6

    :cond_11
    iget-object v1, v0, Laff;->k:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7
.end method
