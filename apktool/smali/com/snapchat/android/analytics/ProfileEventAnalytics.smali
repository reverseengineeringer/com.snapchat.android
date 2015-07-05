.class public final Lcom/snapchat/android/analytics/ProfileEventAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;,
        Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;,
        Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;,
        Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;,
        Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileEventAnalytics"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final sInstance:Lcom/snapchat/android/analytics/ProfileEventAnalytics;


# instance fields
.field private final mScAnalyticsEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->sInstance:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;-><init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;)V

    .line 120
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->mScAnalyticsEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 124
    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->sInstance:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    return-object v0
.end method

.method private static a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Ljq;
    .locals 3
    .param p0    # Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 564
    if-nez p0, :cond_0

    .line 579
    :goto_0
    return-object v0

    .line 567
    :cond_0
    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AddFriendSourceType:[I

    invoke-virtual {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 569
    :pswitch_0
    sget-object v0, Ljq;->ADD_YOU_BACK:Ljq;

    goto :goto_0

    .line 571
    :pswitch_1
    sget-object v0, Ljq;->ADD_BY_NUMBER:Ljq;

    goto :goto_0

    .line 573
    :pswitch_2
    sget-object v0, Ljq;->ADD_BY_SNAP:Ljq;

    goto :goto_0

    .line 575
    :pswitch_3
    sget-object v0, Ljq;->ADD_BY_USERNAME:Ljq;

    goto :goto_0

    .line 577
    :pswitch_4
    sget-object v0, Ljq;->ADD_NEARBY:Ljq;

    goto :goto_0

    .line 567
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;II)V
    .locals 4

    .prologue
    .line 954
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 968
    :pswitch_0
    const-string v0, "ProfileEventAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProfileSearchPerform  - Unknown context "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 971
    :goto_0
    return-void

    .line 956
    :pswitch_1
    new-instance v0, Ljv;

    invoke-direct {v0}, Ljv;-><init>()V

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljv;->charCount:Ljava/lang/Long;

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljv;->keystrokeCount:Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0

    .line 959
    :pswitch_2
    new-instance v0, Lip;

    invoke-direct {v0}, Lip;-><init>()V

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lip;->charCount:Ljava/lang/Long;

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lip;->keystrokeCount:Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0

    .line 962
    :pswitch_3
    new-instance v0, Lje;

    invoke-direct {v0}, Lje;-><init>()V

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lje;->charCount:Ljava/lang/Long;

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lje;->keystrokeCount:Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0

    .line 965
    :pswitch_4
    new-instance v0, Ljn;

    invoke-direct {v0}, Ljn;-><init>()V

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljn;->charCount:Ljava/lang/Long;

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljn;->keystrokeCount:Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0

    .line 954
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V
    .locals 3

    .prologue
    .line 214
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 267
    const-string v0, "ProfileEventAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProfilePagesView  - Unknown analytics context "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :goto_0
    return-void

    .line 216
    :pswitch_0
    new-instance v0, Ljp;

    invoke-direct {v0}, Ljp;-><init>()V

    .line 217
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 218
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0

    .line 222
    :pswitch_1
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    goto :goto_0

    .line 226
    :pswitch_2
    new-instance v0, Lif;

    invoke-direct {v0}, Lif;-><init>()V

    .line 227
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 228
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADDED_ME_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0

    .line 232
    :pswitch_3
    new-instance v0, Lid;

    invoke-direct {v0}, Lid;-><init>()V

    .line 233
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 234
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_FRIENDS_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0

    .line 238
    :pswitch_4
    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    .line 239
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0

    .line 243
    :pswitch_5
    new-instance v0, Lim;

    invoke-direct {v0}, Lim;-><init>()V

    .line 244
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lim;->hasContactAccess:Ljava/lang/Boolean;

    .line 245
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0

    .line 249
    :pswitch_6
    new-instance v0, Lie;

    invoke-direct {v0}, Lie;-><init>()V

    .line 250
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0

    .line 254
    :pswitch_7
    new-instance v0, Ljc;

    invoke-direct {v0}, Ljc;-><init>()V

    .line 255
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 256
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Ljc;->hasContactAccess:Ljava/lang/Boolean;

    .line 257
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_MY_CONTACTS_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto/16 :goto_0

    .line 261
    :pswitch_8
    new-instance v0, Ljk;

    invoke-direct {v0}, Ljk;-><init>()V

    .line 262
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto/16 :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static a(Lcom/snapchat/android/analytics/framework/EasyMetric;Lcom/snapchat/android/model/Friend;)V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    .line 553
    if-eqz v0, :cond_0

    .line 554
    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->SOURCE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend$AddSourceType;->getMetricName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->SOURCE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/analytics/framework/EasyMetric;ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 541
    if-eqz p1, :cond_0

    .line 542
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->STATUS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-static {v0}, Lath;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;->SUCCESS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

    invoke-static {v1}, Lath;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 548
    :goto_0
    return-void

    .line 545
    :cond_0
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->STATUS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;->FAIL:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

    invoke-static {v1}, Lath;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->REASON:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;ILcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;ZLjava/lang/String;Lic;)V
    .locals 5
    .param p0    # Lcom/snapchat/android/model/FriendAction;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p7    # Lic;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 854
    if-eqz p3, :cond_0

    if-nez p1, :cond_2

    .line 855
    :cond_0
    const-string v0, "ProfileEventAnalytics"

    const-string v2, "invalid event params"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 888
    :cond_1
    :goto_0
    return-void

    .line 858
    :cond_2
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$model$FriendAction:[I

    invoke-virtual {p0}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 884
    const-string v0, "ProfileEventAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onProfileFriendActionEvents  - Unknown friendAction "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 860
    :pswitch_0
    const/4 v0, 0x0

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :pswitch_1
    const-string v0, "ProfileEventAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAddAction Unknown analyticsContext "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    if-eqz p5, :cond_3

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v0

    invoke-static {p4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Ljq;

    move-result-object v1

    new-instance v2, Lir;

    invoke-direct {v2}, Lir;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lir;->hasDisplayName:Ljava/lang/Boolean;

    iput-object v1, v2, Lir;->source:Ljq;

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    :cond_3
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_REQUEST_ACCEPT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;Lcom/snapchat/android/model/Friend;)V

    :cond_4
    :goto_1
    if-eqz v0, :cond_1

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_PROFILE_PAGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lath;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IN_MY_CONTACTS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3}, Lajv;->b(Lcom/snapchat/android/model/Friend;)Z

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->fromValue(Z)Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    :cond_5
    invoke-static {v0, p5, p6}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto/16 :goto_0

    :pswitch_3
    if-eqz p5, :cond_4

    invoke-static {p4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Ljq;

    move-result-object v1

    new-instance v2, Ljs;

    invoke-direct {v2}, Ljs;-><init>()V

    iput-object v1, v2, Ljs;->source:Ljq;

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_1

    :pswitch_4
    if-eqz p5, :cond_4

    invoke-static {p4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Ljq;

    move-result-object v1

    new-instance v2, Lil;

    invoke-direct {v2}, Lil;-><init>()V

    iput-object v1, v2, Lil;->source:Ljq;

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_1

    :pswitch_5
    if-eqz p5, :cond_4

    new-instance v1, Ljb;

    invoke-direct {v1}, Ljb;-><init>()V

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_1

    :pswitch_6
    if-eqz p5, :cond_4

    new-instance v1, Lji;

    invoke-direct {v1}, Lji;-><init>()V

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_1

    :pswitch_7
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIENDS_REQUESTS_SENT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->getAddSourceType()Lcom/snapchat/android/model/Friend$AddSourceType;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/model/Friend$AddSourceType;->UNKNOWN:Lcom/snapchat/android/model/Friend$AddSourceType;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->SOURCE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend$AddSourceType;->getMetricName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto/16 :goto_1

    :pswitch_8
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIENDS_REQUESTS_SENT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq p2, v1, :cond_4

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_CELL_INDEX:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto/16 :goto_1

    .line 864
    :pswitch_9
    if-eqz p5, :cond_6

    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    :cond_6
    :goto_2
    :pswitch_a
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_FRIENDS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    if-ne p1, v0, :cond_1

    :cond_7
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_DELETE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_PROFILE_PAGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lath;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-static {v0, p5, p6}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v0

    invoke-static {p4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Ljq;

    move-result-object v1

    new-instance v2, Lit;

    invoke-direct {v2}, Lit;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lit;->hasDisplayName:Ljava/lang/Boolean;

    iput-object v1, v2, Lit;->source:Ljq;

    iput-object p7, v2, Lit;->method:Lic;

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_2

    :pswitch_c
    new-instance v0, Ljr;

    invoke-direct {v0}, Ljr;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_2

    :pswitch_d
    new-instance v0, Lik;

    invoke-direct {v0}, Lik;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_2

    :pswitch_e
    new-instance v0, Ljh;

    invoke-direct {v0}, Ljh;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_2

    :pswitch_f
    new-instance v0, Lja;

    invoke-direct {v0}, Lja;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_2

    .line 868
    :pswitch_10
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lajv;->c(Ljava/lang/String;)Z

    move-result v0

    :goto_3
    sget-object v3, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    const-string v0, "ProfileEventAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBlockAction Unknown analyticsContext "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_3

    :sswitch_0
    if-eqz p5, :cond_9

    if-eqz p7, :cond_9

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v1

    invoke-static {p4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Ljq;

    move-result-object v3

    new-instance v4, Lis;

    invoke-direct {v4}, Lis;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v4, Lis;->hasDisplayName:Ljava/lang/Boolean;

    iput-object v3, v4, Lis;->source:Ljq;

    iput-object p7, v4, Lis;->method:Lic;

    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    :cond_9
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;Lcom/snapchat/android/model/Friend;)V

    if-eqz v2, :cond_11

    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IN_MY_CONTACTS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p3}, Lajv;->b(Lcom/snapchat/android/model/Friend;)Z

    move-result v2

    invoke-static {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->fromValue(Z)Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-object v0, v1

    :goto_5
    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_PROFILE_PAGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lath;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-static {v0, p5, p6}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_REQUEST_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_1
    if-eqz p5, :cond_b

    new-instance v1, Ljg;

    invoke-direct {v1}, Ljg;-><init>()V

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    :cond_b
    if-eqz v0, :cond_c

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_CONTACT_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 872
    :pswitch_11
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_CONTACT_UNBLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_PROFILE_PAGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lath;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-static {v0, p5, p6}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto/16 :goto_0

    .line 876
    :pswitch_12
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v2

    aget v0, v0, v2

    sparse-switch v0, :sswitch_data_1

    const-string v0, "ProfileEventAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSetDisplayNameAction Unknown analyticsContext "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_2
    if-eqz p5, :cond_d

    new-instance v0, Liq;

    invoke-direct {v0}, Liq;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    :cond_d
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_DISPLAY_NAME_CHANGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->DISPLAY_NAME:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto/16 :goto_0

    :sswitch_3
    if-eqz p5, :cond_1

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v0

    invoke-static {p4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Ljq;

    move-result-object v1

    new-instance v2, Liv;

    invoke-direct {v2}, Liv;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Liv;->hasDisplayName:Ljava/lang/Boolean;

    iput-object v1, v2, Liv;->source:Ljq;

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto/16 :goto_0

    :sswitch_4
    if-eqz p5, :cond_e

    new-instance v0, Ljj;

    invoke-direct {v0}, Ljj;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    :cond_e
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_NAME_EDIT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->DISPLAY_NAME:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto/16 :goto_0

    .line 880
    :pswitch_13
    if-eqz p5, :cond_f

    if-eqz p7, :cond_f

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v0

    invoke-static {p4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Ljq;

    move-result-object v1

    new-instance v2, Liu;

    invoke-direct {v2}, Liu;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Liu;->hasDisplayName:Ljava/lang/Boolean;

    iput-object v1, v2, Liu;->source:Ljq;

    iput-object p7, v2, Liu;->method:Lic;

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    :cond_f
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_REQUEST_IGNORE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_PROFILE_PAGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lath;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;Lcom/snapchat/android/model/Friend;)V

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    if-eqz v1, :cond_10

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IN_MY_CONTACTS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3}, Lajv;->b(Lcom/snapchat/android/model/Friend;)Z

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->fromValue(Z)Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    :cond_10
    invoke-static {v0, p5, p6}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto/16 :goto_0

    :cond_11
    move-object v0, v1

    goto/16 :goto_5

    .line 858
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_9
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 860
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 864
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_a
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 868
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
    .end sparse-switch

    .line 876
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_3
        0x9 -> :sswitch_4
    .end sparse-switch
.end method

.method public static a(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;ZLjava/lang/String;)V
    .locals 8
    .param p0    # Lcom/snapchat/android/model/FriendAction;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 824
    const/4 v2, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;ILcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;ZLjava/lang/String;Lic;)V

    .line 826
    return-void
.end method

.method public static a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 987
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_SHARE_PICTURES:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 988
    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->HAS_PICTURE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 989
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 990
    return-void
.end method

.method public static a(Ljava/lang/Long;)V
    .locals 3

    .prologue
    .line 975
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_TAKE_NEW_PICTURES:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 976
    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->LAST_TAKEN_TIMESTAMP:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 977
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 978
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 274
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_USERNAME_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 275
    return-void
.end method

.method public static b(Ljava/lang/Long;)V
    .locals 3

    .prologue
    .line 981
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_DELETE_PICTURES:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 982
    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->LAST_TAKEN_TIMESTAMP:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 983
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 984
    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_CONTACTS_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 279
    return-void
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 282
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_SNAPCODE_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 283
    return-void
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 286
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_CAMERAROLL_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 287
    return-void
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 290
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_NEARBY_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 291
    return-void
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 294
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_EMPTY_ADDRESS_BOOK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 295
    return-void
.end method
