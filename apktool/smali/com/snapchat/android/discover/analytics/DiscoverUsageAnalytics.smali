.class public final Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$1;,
        Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;
    }
.end annotation


# instance fields
.field public final a:Lmj;

.field private final b:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

.field private final c:Laev;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v0

    invoke-static {}, Lmj;->a()Lmj;

    move-result-object v1

    new-instance v2, Laev;

    invoke-direct {v2}, Laev;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;-><init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;Lmj;Laev;)V

    .line 73
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;Lmj;Laev;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 80
    iput-object p2, p0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a:Lmj;

    .line 81
    iput-object p3, p0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->c:Laev;

    .line 82
    return-void
.end method

.method public static a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;
    .locals 3

    .prologue
    .line 1009
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$1;->c:[I

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1015
    const-string v0, "DiscoverAnalytics"

    const-string v1, "Unsupported top snap media type, returning null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1016
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1011
    :pswitch_0
    sget-object v0, Lhy;->IMAGE:Lhy;

    goto :goto_0

    .line 1013
    :pswitch_1
    sget-object v0, Lhy;->VIDEO:Lhy;

    goto :goto_0

    .line 1009
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lhy;
    .locals 3

    .prologue
    .line 1039
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$1;->c:[I

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1053
    const-string v0, "DiscoverAnalytics"

    const-string v1, "Unsupported longform media type, returning null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1054
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1042
    :pswitch_0
    sget-object v0, Lhy;->IMAGE:Lhy;

    goto :goto_0

    .line 1045
    :pswitch_1
    if-eqz p1, :cond_0

    .line 1046
    sget-object v0, Lhy;->VIDEO_NO_SOUND:Lhy;

    goto :goto_0

    .line 1048
    :cond_0
    sget-object v0, Lhy;->VIDEO:Lhy;

    goto :goto_0

    .line 1039
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;
    .locals 3

    .prologue
    .line 1024
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$1;->c:[I

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1030
    const-string v0, "DiscoverAnalytics"

    const-string v1, "Unsupported longform media type, returning null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1026
    :pswitch_0
    sget-object v0, Lhy;->TEXT:Lhy;

    goto :goto_0

    .line 1028
    :pswitch_1
    sget-object v0, Lhy;->VIDEO:Lhy;

    goto :goto_0

    .line 1024
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
