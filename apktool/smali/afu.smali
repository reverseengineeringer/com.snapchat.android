.class public Lafu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ladl$a;
.implements Lafv;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafu$4;,
        Lafu$a;
    }
.end annotation


# static fields
.field private static o:Ljava/lang/String;


# instance fields
.field protected final a:Lakh;

.field protected final b:Ladl;

.field protected final c:Landroid/view/View;

.field protected final d:Landroid/widget/TextView;

.field protected final e:Landroid/widget/TextView;

.field protected final f:Landroid/widget/ImageView;

.field protected final g:Landroid/widget/ProgressBar;

.field protected final h:Landroid/widget/ImageView;

.field protected i:Z

.field protected j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

.field protected k:Z

.field protected l:Lafu$a;

.field protected final m:Lna;

.field protected final n:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

.field private p:Ljava/lang/String;

.field private q:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "ChatDiscoverViewingSession"

    sput-object v0, Lafu;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lafr$c;Ladl;)V
    .locals 11
    .param p1    # Lafr$c;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 60
    iget-object v1, p1, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v1, Lakh;

    iget-object v3, p1, Lafr$c;->L:Landroid/view/View;

    iget-object v4, p1, Lafr$c;->M:Landroid/widget/TextView;

    iget-object v5, p1, Lafr$c;->N:Landroid/widget/TextView;

    iget-object v6, p1, Lafr$c;->O:Landroid/widget/ImageView;

    iget-object v7, p1, Lafr$c;->P:Landroid/widget/ProgressBar;

    iget-object v8, p1, Lafr$c;->Q:Landroid/widget/ImageView;

    invoke-static {}, Lna;->a()Lna;

    move-result-object v9

    invoke-static {}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a()Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    move-result-object v10

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lafu;-><init>(Lakh;Ladl;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Lna;Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Lakh;Ladl;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Lna;Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;)V
    .locals 1
    .param p1    # Lakh;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ladl;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Landroid/widget/ImageView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p7    # Landroid/widget/ProgressBar;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p8    # Landroid/widget/ImageView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p9    # Lna;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lafu;->i:Z

    .line 49
    iput-boolean v0, p0, Lafu;->k:Z

    .line 76
    iput-object p1, p0, Lafu;->a:Lakh;

    .line 77
    iput-object p2, p0, Lafu;->b:Ladl;

    .line 78
    iput-object p3, p0, Lafu;->c:Landroid/view/View;

    .line 79
    iput-object p4, p0, Lafu;->d:Landroid/widget/TextView;

    .line 80
    iput-object p5, p0, Lafu;->e:Landroid/widget/TextView;

    .line 81
    iput-object p6, p0, Lafu;->f:Landroid/widget/ImageView;

    .line 82
    iput-object p7, p0, Lafu;->g:Landroid/widget/ProgressBar;

    .line 83
    iput-object p8, p0, Lafu;->h:Landroid/widget/ImageView;

    .line 85
    iput-object p9, p0, Lafu;->m:Lna;

    .line 86
    iput-object p10, p0, Lafu;->n:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    .line 88
    iget-object v0, p0, Lafu;->a:Lakh;

    invoke-virtual {v0, p0}, Lakh;->addObserver(Ljava/util/Observer;)V

    .line 89
    invoke-virtual {p0}, Lafu;->i()V

    .line 90
    return-void
.end method

.method static synthetic a(Lafu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lafu;->p:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v0, p0, Lafu;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lavh;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lafu;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iput-boolean v2, p0, Lafu;->i:Z

    .line 324
    iget-object v0, p0, Lafu;->g:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lafu;->c:Landroid/view/View;

    new-instance v1, Lafu$2;

    invoke-direct {v1, p0}, Lafu$2;-><init>(Lafu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lafu;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lafu;->e:Landroid/widget/TextView;

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
    iput-boolean v2, p0, Lafu;->i:Z

    .line 343
    iget-object v0, p0, Lafu;->g:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lafu;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lafu;->c:Landroid/view/View;

    new-instance v1, Lafu$3;

    invoke-direct {v1, p0}, Lafu$3;-><init>(Lafu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    return-void
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lafu;->o:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lafu;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Entered viewing session for Discover snap "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lafu;->a:Lakh;

    invoke-virtual {v2}, Lakh;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lafu;->c:Landroid/view/View;

    iget-object v1, p0, Lafu;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lafu;->q:J

    .line 103
    return-void
.end method

.method public final a(Lafu$a;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lafu;->l:Lafu$a;

    .line 155
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;Ljava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Lcgc;
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
    sget-object v3, Lafu;->o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Link status determined for Discover snap "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lafu;->a:Lakh;

    invoke-virtual {v5}, Lakh;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isPublisherAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-virtual {p0}, Lafu;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    sget-object v0, Lafu;->o:Ljava/lang/String;

    const-string v1, "Link status already successfully determined"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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
    iput-object p1, p0, Lafu;->j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    .line 262
    iput-object p2, p0, Lafu;->p:Ljava/lang/String;

    .line 263
    iget-object v4, p1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mLinkStatus:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    .line 264
    iget v3, p1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mAdType:I

    if-lez v3, :cond_3

    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lafu;->k:Z

    .line 266
    sget-object v3, Lafu$4;->a:[I

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 281
    :goto_3
    sget-object v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->FAILED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    if-eq v4, v0, :cond_0

    .line 288
    invoke-direct {p0}, Lafu;->d()V

    goto :goto_1

    :cond_3
    move v3, v2

    .line 264
    goto :goto_2

    .line 268
    :pswitch_0
    invoke-virtual {p0}, Lafu;->e()V

    goto :goto_3

    .line 272
    :pswitch_1
    invoke-virtual {p0}, Lafu;->f()V

    goto :goto_3

    .line 276
    :pswitch_2
    iget-boolean v3, p0, Lafu;->k:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lafu;->d:Landroid/widget/TextView;

    const v5, 0x7f0c0001

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lafu;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0299

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lafu;->a:Lakh;

    iget-object v5, v5, Lakh;->mPublisherFormalName:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lafu;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lafu;->d:Landroid/widget/TextView;

    const v5, 0x7f0c0221

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lafu;->e:Landroid/widget/TextView;

    const v1, 0x7f0c029c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 280
    :pswitch_3
    invoke-direct {p0}, Lafu;->g()V

    goto :goto_3

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 294
    sget-object v0, Lafu;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Brand icon loaded for for Discover snap "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lafu;->a:Lakh;

    invoke-virtual {v2}, Lakh;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": brandIconLoadSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lafu;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lavh;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lafu;->o:Ljava/lang/String;

    const-string v1, "Brand icon already loaded and showing"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lafu;->n:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    iget-object v1, p0, Lafu;->a:Lakh;

    invoke-virtual {v1}, Lakh;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Ljava/lang/String;ZZ)V

    .line 305
    if-eqz p1, :cond_1

    .line 306
    iget-object v0, p0, Lafu;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    invoke-direct {p0}, Lafu;->d()V

    goto :goto_0

    .line 309
    :cond_1
    invoke-direct {p0}, Lafu;->g()V

    goto :goto_0
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 107
    sget-object v0, Lafu;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exited viewing session for Discover snap "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lafu;->a:Lakh;

    invoke-virtual {v3}, Lakh;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lafu;->c:Landroid/view/View;

    iget-object v2, p0, Lafu;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 112
    iget-object v0, p0, Lafu;->a:Lakh;

    invoke-virtual {v0}, Lakh;->V()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lafu;->j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 115
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lafu;->q:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lavf;->a(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 116
    iget-boolean v3, p0, Lafu;->k:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lafu;->a:Lakh;

    iget-object v3, v3, Lakh;->mAdId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    iget-object v3, p0, Lafu;->a:Lakh;

    invoke-virtual {p0}, Lafu;->j()Z

    move-result v4

    invoke-static {v3, v4, v2, v0, v1}, Lna;->b(Lakh;ZLjava/lang/Double;Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;Ljava/lang/Double;)V

    .line 124
    :cond_0
    :goto_1
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lafu;->j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mLinkStatus:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    goto :goto_0

    .line 119
    :cond_2
    iget-object v3, p0, Lafu;->a:Lakh;

    iget-object v3, v3, Lakh;->mDSnapId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    iget-object v3, p0, Lafu;->a:Lakh;

    invoke-virtual {p0}, Lafu;->j()Z

    move-result v4

    invoke-static {v3, v4, v2, v0, v1}, Lna;->a(Lakh;ZLjava/lang/Double;Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;Ljava/lang/Double;)V

    goto :goto_1
.end method

.method public c()V
    .locals 8

    .prologue
    const/16 v3, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 128
    sget-object v0, Lafu;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cleaning up viewing session for Discover snap "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lafu;->a:Lakh;

    invoke-virtual {v2}, Lakh;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lafu;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lavh;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lafu;->n:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    iget-object v1, p0, Lafu;->a:Lakh;

    invoke-virtual {v1}, Lakh;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v6, v2}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Ljava/lang/String;ZZ)V

    .line 133
    :cond_0
    iget-object v0, p0, Lafu;->c:Landroid/view/View;

    iget-object v1, p0, Lafu;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 134
    iget-object v0, p0, Lafu;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lafu;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lafu;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lafu;->a:Lakh;

    invoke-virtual {v0, p0}, Lakh;->deleteObserver(Ljava/util/Observer;)V

    .line 138
    iget-object v1, p0, Lafu;->b:Ladl;

    iget-object v0, p0, Lafu;->a:Lakh;

    invoke-virtual {v0}, Lakh;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v1, Ladl;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "DiscoverDeepLinkController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DISCOVER-LINK: Cancelling link status "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Ladl;->j:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Ladl;->k:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladm$a;

    iget-object v1, v1, Ladl;->c:Ladm;

    if-eqz v0, :cond_1

    iget-object v3, v1, Ladm;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v1, Ladm;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Ladm;->c:Ljava/util/Set;

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
    iput-boolean v6, p0, Lafu;->i:Z

    .line 140
    iput-object v7, p0, Lafu;->j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    .line 141
    iget-object v0, p0, Lafu;->c:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iput-object v7, p0, Lafu;->l:Lafu$a;

    .line 143
    iput-object v7, p0, Lafu;->p:Ljava/lang/String;

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
    iget-boolean v0, p0, Lafu;->k:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lafu;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    iget-object v0, p0, Lafu;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0299

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lafu;->a:Lakh;

    iget-object v5, v5, Lakh;->mPublisherFormalName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_0
    iget-object v2, p0, Lafu;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v1, p0, Lafu;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lafu;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    iget-object v0, p0, Lafu;->e:Landroid/widget/TextView;

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
    iget-boolean v0, p0, Lafu;->k:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lafu;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v0, p0, Lafu;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0299

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lafu;->a:Lakh;

    iget-object v5, v5, Lakh;->mPublisherFormalName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_0
    iget-object v2, p0, Lafu;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, p0, Lafu;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lafu;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    iget-object v0, p0, Lafu;->e:Landroid/widget/TextView;

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
    iget-object v0, p0, Lafu;->a:Lakh;

    invoke-virtual {v0}, Lakh;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final i()V
    .locals 1

    .prologue
    .line 162
    .line 165
    new-instance v0, Lafu$1;

    invoke-direct {v0, p0, p0}, Lafu$1;-><init>(Lafu;Lafu;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method protected final j()Z
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lafu;->j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafu;->j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

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
    iget-object v0, p0, Lafu;->a:Lakh;

    if-ne p1, v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lafu;->i()V

    .line 151
    :cond_0
    return-void
.end method
