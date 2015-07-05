.class public final Laop;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laop$1;,
        Laop$a;
    }
.end annotation


# static fields
.field private static final c:Laop;


# instance fields
.field public final a:Lale;

.field public b:Laop$a;

.field private final d:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

.field private final e:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field private final f:Latm;

.field private final g:Lbgk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Laop;

    invoke-direct {v0}, Laop;-><init>()V

    sput-object v0, Laop;->c:Laop;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 84
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v1

    new-instance v2, Latm;

    invoke-direct {v2}, Latm;-><init>()V

    new-instance v3, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    new-instance v4, Lbgk;

    invoke-direct {v4}, Lbgk;-><init>()V

    invoke-static {}, Lale;->a()Lale;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Laop;-><init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;Latm;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lbgk;Lale;)V

    .line 86
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;Latm;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lbgk;Lale;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Laop;->b:Laop$a;

    .line 91
    iput-object p1, p0, Laop;->d:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 92
    iput-object p2, p0, Laop;->f:Latm;

    .line 93
    iput-object p3, p0, Laop;->e:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 94
    iput-object p4, p0, Laop;->g:Lbgk;

    .line 95
    iput-object p5, p0, Laop;->a:Lale;

    .line 96
    return-void
.end method

.method public static a(D)D
    .locals 4

    .prologue
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 496
    mul-double v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(Z)J
    .locals 2

    .prologue
    .line 614
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method public static a()Laop;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Laop;->c:Laop;

    return-object v0
.end method

.method public static a(I)Lhy;
    .locals 1

    .prologue
    .line 485
    packed-switch p0, :pswitch_data_0

    .line 491
    sget-object v0, Lhy;->IMAGE:Lhy;

    :goto_0
    return-object v0

    .line 487
    :pswitch_0
    sget-object v0, Lhy;->VIDEO:Lhy;

    goto :goto_0

    .line 489
    :pswitch_1
    sget-object v0, Lhy;->VIDEO_NO_SOUND:Lhy;

    goto :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lajr;)Z
    .locals 2
    .param p0    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 342
    iget-object v0, p0, Lajr;->mUsername:Ljava/lang/String;

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    invoke-static {v0, v1}, Latm;->a(Ljava/lang/String;Lajv;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 343
    invoke-static {v0}, Laop;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1
    .param p0    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 352
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x1

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 347
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    invoke-static {p0, v0}, Latm;->a(Ljava/lang/String;Lajv;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 348
    invoke-static {v0}, Laop;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    return v0
.end method

.method public static b(Lajr;)V
    .locals 4
    .param p0    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 366
    new-instance v0, Lll;

    invoke-direct {v0}, Lll;-><init>()V

    invoke-static {p0}, Laop;->c(Lajr;)Llr;

    move-result-object v1

    iput-object v1, v0, Lll;->storyType:Llr;

    iget-object v1, p0, Lajr;->mUsername:Ljava/lang/String;

    iput-object v1, v0, Lll;->posterId:Ljava/lang/String;

    invoke-virtual {p0}, Lajr;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lll;->storySnapId:Ljava/lang/String;

    invoke-virtual {p0}, Lajr;->aw()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lajr;->ax()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lll;->sponsor:Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Laop;->a(Lajr;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "LOCAL"

    iput-object v1, v0, Lll;->geoFence:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lajr;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lll;->storySnapId:Ljava/lang/String;

    invoke-virtual {p0}, Lajr;->F()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lll;->snapTime:Ljava/lang/Double;

    .line 368
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 369
    return-void
.end method

.method public static c(Lajr;)Llr;
    .locals 2
    .param p0    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 452
    iget-boolean v0, p0, Lajr;->mIsShared:Z

    if-eqz v0, :cond_0

    .line 453
    sget-object v0, Llr;->OUR:Llr;

    .line 464
    :goto_0
    return-object v0

    .line 456
    :cond_0
    iget-object v0, p0, Lajr;->mStoryId:Ljava/lang/String;

    const-string v1, "my_story_ads79sdf"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    sget-object v0, Llr;->MY:Llr;

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {p0}, Lajr;->aH()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    sget-object v0, Llr;->BRAND:Llr;

    goto :goto_0

    .line 464
    :cond_2
    sget-object v0, Llr;->USER:Llr;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lfq;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lfq;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 102
    new-instance v0, Llf;

    invoke-direct {v0}, Llf;-><init>()V

    .line 103
    iput-object p1, v0, Llf;->posterId:Ljava/lang/String;

    .line 104
    iput-object p2, v0, Llf;->additionalInfo:Lfq;

    .line 105
    iget-object v1, p0, Laop;->b:Laop$a;

    iget-object v1, v1, Laop$a;->c:Ljava/lang/Long;

    iput-object v1, v0, Llf;->viewLocation:Ljava/lang/Long;

    .line 106
    sget-object v1, Llr;->OUR:Llr;

    iput-object v1, v0, Llf;->storyType:Llr;

    .line 107
    invoke-static {p1}, Laop;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "LOCAL"

    iput-object v1, v0, Llf;->geoFence:Ljava/lang/String;

    .line 110
    :cond_0
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 111
    return-void
.end method
