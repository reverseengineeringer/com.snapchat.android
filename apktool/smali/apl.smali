.class public final Lapl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapl$1;,
        Lapl$a;
    }
.end annotation


# static fields
.field private static final c:Lapl;


# instance fields
.field public final a:Lama;

.field public b:Lapl$a;

.field private final d:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

.field private final e:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field private final f:Lauk;

.field private final g:Lbhk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lapl;

    invoke-direct {v0}, Lapl;-><init>()V

    sput-object v0, Lapl;->c:Lapl;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 87
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v1

    new-instance v2, Lauk;

    invoke-direct {v2}, Lauk;-><init>()V

    new-instance v3, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    new-instance v4, Lbhk;

    invoke-direct {v4}, Lbhk;-><init>()V

    invoke-static {}, Lama;->a()Lama;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lapl;-><init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;Lauk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lbhk;Lama;)V

    .line 89
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;Lauk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lbhk;Lama;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lapl;->d:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 97
    iput-object p2, p0, Lapl;->f:Lauk;

    .line 98
    iput-object p3, p0, Lapl;->e:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 99
    iput-object p4, p0, Lapl;->g:Lbhk;

    .line 100
    iput-object p5, p0, Lapl;->a:Lama;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lapl;->b:Lapl$a;

    .line 102
    return-void
.end method

.method public static a(D)D
    .locals 4

    .prologue
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 504
    mul-double v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a()Lapl;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lapl;->c:Lapl;

    return-object v0
.end method

.method public static a(I)Lih;
    .locals 1

    .prologue
    .line 493
    packed-switch p0, :pswitch_data_0

    .line 499
    sget-object v0, Lih;->IMAGE:Lih;

    :goto_0
    return-object v0

    .line 495
    :pswitch_0
    sget-object v0, Lih;->VIDEO:Lih;

    goto :goto_0

    .line 497
    :pswitch_1
    sget-object v0, Lih;->VIDEO_NO_SOUND:Lih;

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lakl;)Z
    .locals 2
    .param p0    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 353
    iget-object v0, p0, Lakl;->mUsername:Ljava/lang/String;

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v1

    invoke-static {v0, v1}, Lauk;->a(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 354
    invoke-static {v0}, Lapl;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1
    .param p0    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 363
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x1

    .line 366
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 358
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    invoke-static {p0, v0}, Lauk;->a(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 359
    invoke-static {v0}, Lapl;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    return v0
.end method

.method public static b(Z)J
    .locals 2

    .prologue
    .line 606
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lakl;)V
    .locals 4
    .param p0    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 377
    new-instance v0, Lmd;

    invoke-direct {v0}, Lmd;-><init>()V

    invoke-static {p0}, Lapl;->c(Lakl;)Lmj;

    move-result-object v1

    iput-object v1, v0, Lmd;->storyType:Lmj;

    iget-object v1, p0, Lakl;->mUsername:Ljava/lang/String;

    iput-object v1, v0, Lmd;->posterId:Ljava/lang/String;

    invoke-virtual {p0}, Lakl;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmd;->storySnapId:Ljava/lang/String;

    invoke-static {p0}, Lapl;->a(Lakl;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LOCAL"

    iput-object v1, v0, Lmd;->geoFence:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lakl;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmd;->storySnapId:Ljava/lang/String;

    invoke-virtual {p0}, Lakl;->G()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lmd;->snapTime:Ljava/lang/Double;

    .line 379
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 380
    return-void
.end method

.method public static c(Lakl;)Lmj;
    .locals 2
    .param p0    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 460
    iget-boolean v0, p0, Lakl;->mIsShared:Z

    if-eqz v0, :cond_0

    .line 461
    sget-object v0, Lmj;->OUR:Lmj;

    .line 472
    :goto_0
    return-object v0

    .line 464
    :cond_0
    iget-object v0, p0, Lakl;->mStoryId:Ljava/lang/String;

    const-string v1, "my_story_ads79sdf"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    sget-object v0, Lmj;->MY:Lmj;

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {p0}, Lakl;->aC()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    sget-object v0, Lmj;->BRAND:Lmj;

    goto :goto_0

    .line 472
    :cond_2
    sget-object v0, Lmj;->USER:Lmj;

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lapl;->b:Lapl$a;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lapl$a;

    invoke-direct {v0}, Lapl$a;-><init>()V

    iput-object v0, p0, Lapl;->b:Lapl$a;

    .line 128
    :cond_0
    iget-object v0, p0, Lapl;->b:Lapl$a;

    iput-wide p1, v0, Lapl$a;->i:J

    .line 129
    return-void
.end method

.method public final a(Ljava/lang/String;Lfz;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lfz;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 108
    new-instance v0, Llx;

    invoke-direct {v0}, Llx;-><init>()V

    .line 109
    iput-object p1, v0, Llx;->posterId:Ljava/lang/String;

    .line 110
    iput-object p2, v0, Llx;->additionalInfo:Lfz;

    .line 111
    iget-object v1, p0, Lapl;->b:Lapl$a;

    iget-object v1, v1, Lapl$a;->c:Ljava/lang/Long;

    iput-object v1, v0, Llx;->viewLocation:Ljava/lang/Long;

    .line 112
    sget-object v1, Lmj;->OUR:Lmj;

    iput-object v1, v0, Llx;->storyType:Lmj;

    .line 113
    invoke-static {p1}, Lapl;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "LOCAL"

    iput-object v1, v0, Llx;->geoFence:Ljava/lang/String;

    .line 116
    :cond_0
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 117
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lapl;->b:Lapl$a;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lapl$a;

    invoke-direct {v0}, Lapl$a;-><init>()V

    iput-object v0, p0, Lapl;->b:Lapl$a;

    .line 162
    :cond_0
    iget-object v2, p0, Lapl;->b:Lapl$a;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lapl$a;->c:Ljava/lang/Long;

    .line 163
    return-void

    .line 162
    :cond_1
    const-wide/16 v0, 0x1

    goto :goto_0
.end method
