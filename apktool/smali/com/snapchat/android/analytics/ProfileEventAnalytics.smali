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
    .line 121
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->sInstance:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;-><init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;)V

    .line 129
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->mScAnalyticsEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 133
    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->sInstance:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    return-object v0
.end method

.method private static a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Lkh;
    .locals 3
    .param p0    # Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 586
    if-nez p0, :cond_0

    .line 601
    :goto_0
    return-object v0

    .line 589
    :cond_0
    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AddFriendSourceType:[I

    invoke-virtual {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 591
    :pswitch_0
    sget-object v0, Lkh;->ADD_YOU_BACK:Lkh;

    goto :goto_0

    .line 593
    :pswitch_1
    sget-object v0, Lkh;->ADD_BY_NUMBER:Lkh;

    goto :goto_0

    .line 595
    :pswitch_2
    sget-object v0, Lkh;->ADD_BY_SNAP:Lkh;

    goto :goto_0

    .line 597
    :pswitch_3
    sget-object v0, Lkh;->ADD_BY_USERNAME:Lkh;

    goto :goto_0

    .line 599
    :pswitch_4
    sget-object v0, Lkh;->ADD_NEARBY:Lkh;

    goto :goto_0

    .line 589
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

.method public static a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProfilePagesView  - Unknown analytics context "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    :goto_0
    return-void

    .line 225
    :pswitch_0
    new-instance v0, Lkg;

    invoke-direct {v0}, Lkg;-><init>()V

    .line 226
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 227
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_0

    .line 231
    :pswitch_1
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    goto :goto_0

    .line 235
    :pswitch_2
    new-instance v0, Liq;

    invoke-direct {v0}, Liq;-><init>()V

    .line 236
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 237
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADDED_ME_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_0

    .line 241
    :pswitch_3
    new-instance v0, Lim;

    invoke-direct {v0}, Lim;-><init>()V

    .line 242
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 243
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_FRIENDS_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_0

    .line 247
    :pswitch_4
    new-instance v0, Lkl;

    invoke-direct {v0}, Lkl;-><init>()V

    .line 248
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_0

    .line 252
    :pswitch_5
    new-instance v0, Liy;

    invoke-direct {v0}, Liy;-><init>()V

    .line 253
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Liy;->hasContactAccess:Ljava/lang/Boolean;

    .line 254
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_0

    .line 258
    :pswitch_6
    new-instance v0, Lio;

    invoke-direct {v0}, Lio;-><init>()V

    .line 259
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_0

    .line 263
    :pswitch_7
    new-instance v0, Ljp;

    invoke-direct {v0}, Ljp;-><init>()V

    .line 264
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 265
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Ljp;->hasContactAccess:Ljava/lang/Boolean;

    .line 266
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_MY_CONTACTS_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto/16 :goto_0

    .line 270
    :pswitch_8
    new-instance v0, Ljy;

    invoke-direct {v0}, Ljy;-><init>()V

    .line 271
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_0

    .line 223
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
    .line 574
    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    .line 575
    if-eqz v0, :cond_0

    .line 576
    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->SOURCE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend$AddSourceType;->getMetricName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 580
    :goto_0
    return-void

    .line 578
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
    .line 563
    if-eqz p1, :cond_0

    .line 564
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->STATUS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-static {v0}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;->SUCCESS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

    invoke-static {v1}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 570
    :goto_0
    return-void

    .line 567
    :cond_0
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->STATUS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;->FAIL:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

    invoke-static {v1}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->REASON:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;ILcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;ZLjava/lang/String;Lil;)V
    .locals 5
    .param p0    # Lcom/snapchat/android/model/FriendAction;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p7    # Lil;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 876
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$model$FriendAction:[I

    invoke-virtual {p0}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProfileFriendActionEvents  - Unknown friendAction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 882
    :pswitch_0
    const/4 v0, 0x0

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAddAction Unknown analyticsContext "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    if-eqz p5, :cond_2

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v0

    invoke-static {p4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Lkh;

    move-result-object v1

    new-instance v2, Ljd;

    invoke-direct {v2}, Ljd;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Ljd;->hasDisplayName:Ljava/lang/Boolean;

    iput-object v1, v2, Ljd;->source:Lkh;

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    :cond_2
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_REQUEST_ACCEPT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;Lcom/snapchat/android/model/Friend;)V

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_PROFILE_PAGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IN_MY_CONTACTS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3}, Lakp;->b(Lcom/snapchat/android/model/Friend;)Z

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->fromValue(Z)Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    :cond_4
    invoke-static {v0, p5, p6}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto/16 :goto_0

    :pswitch_3
    if-eqz p5, :cond_3

    invoke-static {p4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Lkh;

    move-result-object v1

    new-instance v2, Lkj;

    invoke-direct {v2}, Lkj;-><init>()V

    iput-object v1, v2, Lkj;->source:Lkh;

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_1

    :pswitch_4
    if-eqz p5, :cond_3

    invoke-static {p4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Lkh;

    move-result-object v1

    new-instance v2, Liw;

    invoke-direct {v2}, Liw;-><init>()V

    iput-object v1, v2, Liw;->source:Lkh;

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_1

    :pswitch_5
    if-eqz p5, :cond_3

    new-instance v1, Ljn;

    invoke-direct {v1}, Ljn;-><init>()V

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_1

    :pswitch_6
    if-eqz p5, :cond_3

    new-instance v1, Ljv;

    invoke-direct {v1}, Ljv;-><init>()V

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

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

    if-eq v1, v2, :cond_3

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

    if-eq p2, v1, :cond_3

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_CELL_INDEX:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto/16 :goto_1

    .line 886
    :pswitch_9
    if-eqz p5, :cond_5

    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    :cond_5
    :goto_2
    :pswitch_a
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_FRIENDS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    if-ne p1, v0, :cond_0

    :cond_6
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_DELETE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_PROFILE_PAGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-static {v0, p5, p6}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v0

    invoke-static {p4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Lkh;

    move-result-object v1

    new-instance v2, Ljf;

    invoke-direct {v2}, Ljf;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Ljf;->hasDisplayName:Ljava/lang/Boolean;

    iput-object v1, v2, Ljf;->source:Lkh;

    iput-object p7, v2, Ljf;->method:Lil;

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_2

    :pswitch_c
    new-instance v0, Lki;

    invoke-direct {v0}, Lki;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_2

    :pswitch_d
    new-instance v0, Liv;

    invoke-direct {v0}, Liv;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_2

    :pswitch_e
    new-instance v0, Lju;

    invoke-direct {v0}, Lju;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_2

    :pswitch_f
    new-instance v0, Ljm;

    invoke-direct {v0}, Ljm;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_2

    .line 890
    :pswitch_10
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lakp;->c(Ljava/lang/String;)Z

    move-result v0

    :goto_3
    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v3

    aget v1, v1, v3

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBlockAction Unknown analyticsContext "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :sswitch_0
    if-eqz p5, :cond_8

    if-eqz p7, :cond_8

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v1

    invoke-static {p4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Lkh;

    move-result-object v3

    new-instance v4, Lje;

    invoke-direct {v4}, Lje;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v4, Lje;->hasDisplayName:Ljava/lang/Boolean;

    iput-object v3, v4, Lje;->source:Lkh;

    iput-object p7, v4, Lje;->method:Lil;

    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    :cond_8
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;Lcom/snapchat/android/model/Friend;)V

    if-eqz v2, :cond_10

    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IN_MY_CONTACTS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p3}, Lakp;->b(Lcom/snapchat/android/model/Friend;)Z

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

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_PROFILE_PAGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-static {v0, p5, p6}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_REQUEST_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_1
    if-eqz p5, :cond_a

    new-instance v1, Ljt;

    invoke-direct {v1}, Ljt;-><init>()V

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    :cond_a
    if-eqz v0, :cond_b

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_CONTACT_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 894
    :pswitch_11
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_CONTACT_UNBLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_PROFILE_PAGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-static {v0, p5, p6}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto/16 :goto_0

    .line 898
    :pswitch_12
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetDisplayNameAction Unknown analyticsContext "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_2
    if-eqz p5, :cond_c

    new-instance v0, Ljc;

    invoke-direct {v0}, Ljc;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    :cond_c
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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto/16 :goto_0

    :sswitch_3
    if-eqz p5, :cond_0

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v0

    invoke-static {p4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Lkh;

    move-result-object v1

    new-instance v2, Ljh;

    invoke-direct {v2}, Ljh;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Ljh;->hasDisplayName:Ljava/lang/Boolean;

    iput-object v1, v2, Ljh;->source:Lkh;

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_0

    :sswitch_4
    if-eqz p5, :cond_d

    new-instance v0, Ljw;

    invoke-direct {v0}, Ljw;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    :cond_d
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_NAME_EDIT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->DISPLAY_NAME:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto/16 :goto_0

    .line 902
    :pswitch_13
    if-eqz p5, :cond_e

    if-eqz p7, :cond_e

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v0

    invoke-static {p4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Lkh;

    move-result-object v1

    new-instance v2, Ljg;

    invoke-direct {v2}, Ljg;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Ljg;->hasDisplayName:Ljava/lang/Boolean;

    iput-object v1, v2, Ljg;->source:Lkh;

    iput-object p7, v2, Ljg;->method:Lil;

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    :cond_e
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_REQUEST_IGNORE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_PROFILE_PAGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;Lcom/snapchat/android/model/Friend;)V

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v1

    if-eqz v1, :cond_f

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IN_MY_CONTACTS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3}, Lakp;->b(Lcom/snapchat/android/model/Friend;)Z

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->fromValue(Z)Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    :cond_f
    invoke-static {v0, p5, p6}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    goto/16 :goto_5

    .line 880
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_9
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 882
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

    .line 886
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

    .line 890
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
    .end sparse-switch

    .line 898
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
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 846
    const/4 v2, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;ILcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;ZLjava/lang/String;Lil;)V

    .line 848
    return-void
.end method

.method public static a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 988
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_SHARE_PICTURES:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 989
    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->HAS_PICTURE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 990
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 991
    return-void
.end method

.method public static a(Ljava/lang/Long;)V
    .locals 3

    .prologue
    .line 976
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_TAKE_NEW_PICTURES:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 977
    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->LAST_TAKEN_TIMESTAMP:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 978
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 979
    return-void
.end method

.method public static a(Lkf;IIIIIIIIIII)V
    .locals 4

    .prologue
    .line 1071
    new-instance v0, Ljx;

    invoke-direct {v0}, Ljx;-><init>()V

    .line 1072
    iput-object p0, v0, Ljx;->exitEvent:Lkf;

    .line 1073
    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljx;->myFriendCount:Ljava/lang/Long;

    .line 1074
    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljx;->myFriendTapCount:Ljava/lang/Long;

    .line 1075
    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljx;->myFriendReAddCount:Ljava/lang/Long;

    .line 1076
    int-to-long v2, p4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljx;->myFriendRemoveCount:Ljava/lang/Long;

    .line 1077
    int-to-long v2, p5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljx;->myFriendBlockCount:Ljava/lang/Long;

    .line 1078
    int-to-long v2, p6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljx;->myFriendNameEditCount:Ljava/lang/Long;

    .line 1080
    int-to-long v2, p7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljx;->myFriendTapInSearchCount:Ljava/lang/Long;

    .line 1081
    int-to-long v2, p8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljx;->myFriendReAddInSearchCount:Ljava/lang/Long;

    .line 1082
    int-to-long v2, p9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljx;->myFriendRemoveInSearchCount:Ljava/lang/Long;

    .line 1083
    int-to-long v2, p10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljx;->myFriendBlockInSearchCount:Ljava/lang/Long;

    .line 1084
    int-to-long v2, p11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljx;->myFriendNameEditInSearchCount:Ljava/lang/Long;

    .line 1085
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 1086
    return-void
.end method

.method public static a(Lkf;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;IZ)V
    .locals 4

    .prologue
    .line 996
    new-instance v0, Lke;

    invoke-direct {v0}, Lke;-><init>()V

    .line 997
    iput-object p0, v0, Lke;->exitEvent:Lkf;

    .line 998
    invoke-virtual {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lke;->nextPage:Ljava/lang/String;

    .line 999
    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lke;->newAddedMeCount:Ljava/lang/Long;

    .line 1000
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lke;->hasProfilePic:Ljava/lang/Boolean;

    .line 1001
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 1002
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 283
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_USERNAME_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 284
    return-void
.end method

.method public static b(Ljava/lang/Long;)V
    .locals 3

    .prologue
    .line 982
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_DELETE_PICTURES:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 983
    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->LAST_TAKEN_TIMESTAMP:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 984
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 985
    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 287
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_CONTACTS_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 288
    return-void
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 291
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_SNAPCODE_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 292
    return-void
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 295
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_CAMERAROLL_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 296
    return-void
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_NEARBY_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 300
    return-void
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_EMPTY_ADDRESS_BOOK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 304
    return-void
.end method
