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
.field public final a:Lna;

.field private final b:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

.field private final c:Lafv;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v0

    invoke-static {}, Lna;->a()Lna;

    move-result-object v1

    new-instance v2, Lafv;

    invoke-direct {v2}, Lafv;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;-><init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;Lna;Lafv;)V

    .line 74
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;Lna;Lafv;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 81
    iput-object p2, p0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a:Lna;

    .line 82
    iput-object p3, p0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->c:Lafv;

    .line 83
    return-void
.end method

.method public static a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;
    .locals 2

    .prologue
    .line 1088
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$1;->c:[I

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1094
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1090
    :pswitch_0
    sget-object v0, Lih;->IMAGE:Lih;

    goto :goto_0

    .line 1092
    :pswitch_1
    sget-object v0, Lih;->VIDEO:Lih;

    goto :goto_0

    .line 1088
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lih;
    .locals 2

    .prologue
    .line 1118
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$1;->c:[I

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1132
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1121
    :pswitch_0
    sget-object v0, Lih;->IMAGE:Lih;

    goto :goto_0

    .line 1124
    :pswitch_1
    if-eqz p1, :cond_0

    .line 1125
    sget-object v0, Lih;->VIDEO_NO_SOUND:Lih;

    goto :goto_0

    .line 1127
    :cond_0
    sget-object v0, Lih;->VIDEO:Lih;

    goto :goto_0

    .line 1118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;
    .locals 2

    .prologue
    .line 1103
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$1;->c:[I

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1109
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1105
    :pswitch_0
    sget-object v0, Lih;->TEXT:Lih;

    goto :goto_0

    .line 1107
    :pswitch_1
    sget-object v0, Lih;->VIDEO:Lih;

    goto :goto_0

    .line 1103
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
