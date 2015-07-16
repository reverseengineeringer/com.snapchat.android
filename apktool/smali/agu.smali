.class public Lagu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lael$a;
.implements Lagv;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagu$4;,
        Lagu$a;
    }
.end annotation


# static fields
.field private static o:Ljava/lang/String;


# instance fields
.field protected final a:Lalc;

.field protected final b:Lael;

.field protected final c:Landroid/view/View;

.field protected final d:Landroid/widget/TextView;

.field protected final e:Landroid/widget/TextView;

.field protected final f:Landroid/widget/ImageView;

.field protected final g:Landroid/widget/ProgressBar;

.field protected final h:Landroid/widget/ImageView;

.field protected i:Z

.field protected j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

.field protected k:Z

.field protected l:Lagu$a;

.field protected final m:Lnr;

.field protected final n:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

.field private p:Ljava/lang/String;

.field private q:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "ChatDiscoverViewingSession"

    sput-object v0, Lagu;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lagr$c;Lael;)V
    .locals 11
    .param p1    # Lagr$c;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 60
    iget-object v1, p1, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v1, Lalc;

    iget-object v3, p1, Lagr$c;->L:Landroid/view/View;

    iget-object v4, p1, Lagr$c;->M:Landroid/widget/TextView;

    iget-object v5, p1, Lagr$c;->N:Landroid/widget/TextView;

    iget-object v6, p1, Lagr$c;->O:Landroid/widget/ImageView;

    iget-object v7, p1, Lagr$c;->P:Landroid/widget/ProgressBar;

    iget-object v8, p1, Lagr$c;->Q:Landroid/widget/ImageView;

    invoke-static {}, Lnr;->a()Lnr;

    move-result-object v9

    invoke-static {}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a()Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    move-result-object v10

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lagu;-><init>(Lalc;Lael;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Lnr;Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Lalc;Lael;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Lnr;Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;)V
    .locals 1
    .param p1    # Lalc;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lael;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Landroid/widget/ImageView;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p7    # Landroid/widget/ProgressBar;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p8    # Landroid/widget/ImageView;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p9    # Lnr;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lagu;->i:Z

    .line 49
    iput-boolean v0, p0, Lagu;->k:Z

    .line 76
    iput-object p1, p0, Lagu;->a:Lalc;

    .line 77
    iput-object p2, p0, Lagu;->b:Lael;

    .line 78
    iput-object p3, p0, Lagu;->c:Landroid/view/View;

    .line 79
    iput-object p4, p0, Lagu;->d:Landroid/widget/TextView;

    .line 80
    iput-object p5, p0, Lagu;->e:Landroid/widget/TextView;

    .line 81
    iput-object p6, p0, Lagu;->f:Landroid/widget/ImageView;

    .line 82
    iput-object p7, p0, Lagu;->g:Landroid/widget/ProgressBar;

    .line 83
    iput-object p8, p0, Lagu;->h:Landroid/widget/ImageView;

    .line 85
    iput-object p9, p0, Lagu;->m:Lnr;

    .line 86
    iput-object p10, p0, Lagu;->n:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    .line 88
    iget-object v0, p0, Lagu;->a:Lalc;

    invoke-virtual {v0, p0}, Lalc;->addObserver(Ljava/util/Observer;)V

    .line 89
    invoke-virtual {p0}, Lagu;->i()V

    .line 90
    return-void
.end method

.method static synthetic a(Lagu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lagu;->p:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v0, p0, Lagu;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lawf;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lagu;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iput-boolean v2, p0, Lagu;->i:Z

    .line 324
    iget-object v0, p0, Lagu;->g:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lagu;->c:Landroid/view/View;

    new-instance v1, Lagu$2;

    invoke-direct {v1, p0}, Lagu$2;-><init>(Lagu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lagu;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lagu;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    iput-boolean v2, p0, Lagu;->i:Z

    .line 343
    iget-object v0, p0, Lagu;->g:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lagu;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lagu;->c:Landroid/view/View;

    new-instance v1, Lagu$3;

    invoke-direct {v1, p0}, Lagu$3;-><init>(Lagu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entered viewing session for Discover snap "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lagu;->a:Lalc;

    invoke-virtual {v1}, Lalc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v0, p0, Lagu;->c:Landroid/view/View;

    iget-object v1, p0, Lagu;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lagu;->q:J

    .line 103
    return-void
.end method

.method public final a(Lagu$a;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lagu;->l:Lagu$a;

    .line 155
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;Ljava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 252
    if-eqz p2, :cond_1

    move v0, v1

    .line 253
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Link status determined for Discover snap "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lagu;->a:Lalc;

    invoke-virtual {v4}, Lalc;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isPublisherAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p0}, Lagu;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 252
    goto :goto_0

    .line 261
    :cond_2
    iput-object p1, p0, Lagu;->j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    .line 262
    iput-object p2, p0, Lagu;->p:Ljava/lang/String;

    .line 263
    iget-object v4, p1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mLinkStatus:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    .line 264
    iget v3, p1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mAdType:I

    if-lez v3, :cond_3

    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lagu;->k:Z

    .line 266
    sget-object v3, Lagu$4;->a:[I

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 281
    :goto_3
    sget-object v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->FAILED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    if-eq v4, v0, :cond_0

    .line 288
    invoke-direct {p0}, Lagu;->d()V

    goto :goto_1

    :cond_3
    move v3, v2

    .line 264
    goto :goto_2

    .line 268
    :pswitch_0
    invoke-virtual {p0}, Lagu;->e()V

    goto :goto_3

    .line 272
    :pswitch_1
    invoke-virtual {p0}, Lagu;->f()V

    goto :goto_3

    .line 276
    :pswitch_2
    iget-boolean v3, p0, Lagu;->k:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lagu;->d:Landroid/widget/TextView;

    const v5, 0x7f0c0001

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lagu;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0299

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lagu;->a:Lalc;

    iget-object v5, v5, Lalc;->mPublisherFormalName:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lagu;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lagu;->d:Landroid/widget/TextView;

    const v5, 0x7f0c0221

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lagu;->e:Landroid/widget/TextView;

    const v1, 0x7f0c029c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 280
    :pswitch_3
    invoke-direct {p0}, Lagu;->g()V

    goto :goto_3

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Brand icon loaded for for Discover snap "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lagu;->a:Lalc;

    invoke-virtual {v1}, Lalc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": brandIconLoadSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 297
    iget-object v0, p0, Lagu;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lawf;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lagu;->n:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    iget-object v1, p0, Lagu;->a:Lalc;

    invoke-virtual {v1}, Lalc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Ljava/lang/String;ZZ)V

    .line 305
    if-eqz p1, :cond_1

    .line 306
    iget-object v0, p0, Lagu;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    invoke-direct {p0}, Lagu;->d()V

    goto :goto_0

    .line 309
    :cond_1
    invoke-direct {p0}, Lagu;->g()V

    goto :goto_0
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exited viewing session for Discover snap "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lagu;->a:Lalc;

    invoke-virtual {v2}, Lalc;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v0, p0, Lagu;->c:Landroid/view/View;

    iget-object v2, p0, Lagu;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 112
    iget-object v0, p0, Lagu;->a:Lalc;

    invoke-virtual {v0}, Lalc;->X()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lagu;->j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 115
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lagu;->q:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lawd;->a(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 116
    iget-boolean v3, p0, Lagu;->k:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lagu;->a:Lalc;

    iget-object v3, v3, Lalc;->mAdId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    iget-object v3, p0, Lagu;->a:Lalc;

    invoke-virtual {p0}, Lagu;->j()Z

    move-result v4

    invoke-static {v3, v4, v2, v0, v1}, Lnr;->b(Lalc;ZLjava/lang/Double;Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;Ljava/lang/Double;)V

    .line 124
    :cond_0
    :goto_1
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lagu;->j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mLinkStatus:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    goto :goto_0

    .line 119
    :cond_2
    iget-object v3, p0, Lagu;->a:Lalc;

    iget-object v3, v3, Lalc;->mDSnapId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    iget-object v3, p0, Lagu;->a:Lalc;

    invoke-virtual {p0}, Lagu;->j()Z

    move-result v4

    invoke-static {v3, v4, v2, v0, v1}, Lnr;->a(Lalc;ZLjava/lang/Double;Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;Ljava/lang/Double;)V

    goto :goto_1
.end method

.method public c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cleaning up viewing session for Discover snap "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lagu;->a:Lalc;

    invoke-virtual {v1}, Lalc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v0, p0, Lagu;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lawf;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lagu;->n:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    iget-object v1, p0, Lagu;->a:Lalc;

    invoke-virtual {v1}, Lalc;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v6, v2}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Ljava/lang/String;ZZ)V

    .line 133
    :cond_0
    iget-object v0, p0, Lagu;->c:Landroid/view/View;

    iget-object v1, p0, Lagu;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 134
    iget-object v0, p0, Lagu;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lagu;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lagu;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lagu;->a:Lalc;

    invoke-virtual {v0, p0}, Lalc;->deleteObserver(Ljava/util/Observer;)V

    .line 138
    iget-object v1, p0, Lagu;->b:Lael;

    iget-object v0, p0, Lagu;->a:Lalc;

    invoke-virtual {v0}, Lalc;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v1, Lael;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lael;->j:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lael;->k:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laem$a;

    iget-object v1, v1, Lael;->c:Laem;

    if-eqz v0, :cond_1

    iget-object v3, v1, Laem;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v1, Laem;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Laem;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 139
    :cond_2
    iput-boolean v6, p0, Lagu;->i:Z

    .line 140
    iput-object v5, p0, Lagu;->j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    .line 141
    iget-object v0, p0, Lagu;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iput-object v5, p0, Lagu;->l:Lagu$a;

    .line 143
    iput-object v5, p0, Lagu;->p:Ljava/lang/String;

    .line 144
    return-void

    .line 138
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method protected e()V
    .locals 6

    .prologue
    .line 209
    iget-boolean v0, p0, Lagu;->k:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lagu;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    iget-object v0, p0, Lagu;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0299

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lagu;->a:Lalc;

    iget-object v5, v5, Lalc;->mPublisherFormalName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_0
    iget-object v2, p0, Lagu;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v1, p0, Lagu;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lagu;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    iget-object v0, p0, Lagu;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c029b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected f()V
    .locals 6

    .prologue
    .line 223
    iget-boolean v0, p0, Lagu;->k:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lagu;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v0, p0, Lagu;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0299

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lagu;->a:Lalc;

    iget-object v5, v5, Lalc;->mPublisherFormalName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_0
    iget-object v2, p0, Lagu;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, p0, Lagu;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lagu;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    iget-object v0, p0, Lagu;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c029b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lagu;->a:Lalc;

    invoke-virtual {v0}, Lalc;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final i()V
    .locals 1

    .prologue
    .line 162
    .line 165
    new-instance v0, Lagu$1;

    invoke-direct {v0, p0, p0}, Lagu$1;-><init>(Lagu;Lagu;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method protected final j()Z
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lagu;->j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lagu;->j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mLinkStatus:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    sget-object v1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->FAILED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lagu;->a:Lalc;

    if-ne p1, v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lagu;->i()V

    .line 151
    :cond_0
    return-void
.end method
