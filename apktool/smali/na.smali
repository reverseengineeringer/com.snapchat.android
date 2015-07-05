.class public final Lna;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lna$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChatEventAnalytics"

.field private static final sInstance:Lna;


# instance fields
.field private final mScAnalyticsEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lna;

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v1

    invoke-direct {v0, v1}, Lna;-><init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;)V

    sput-object v0, Lna;->sInstance:Lna;

    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;)V
    .locals 0
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lna;->mScAnalyticsEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 51
    return-void
.end method

.method private static a(Lakh;)Lhg;
    .locals 6
    .param p0    # Lakh;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcf;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    new-instance v2, Lhg;

    invoke-direct {v2}, Lhg;-><init>()V

    .line 155
    iget-object v3, p0, Lakh;->mPublisherName:Ljava/lang/String;

    iput-object v3, v2, Lhg;->publisherId:Ljava/lang/String;

    .line 156
    iget-object v3, p0, Lakh;->mEditionId:Ljava/lang/String;

    iput-object v3, v2, Lhg;->editionId:Ljava/lang/String;

    .line 157
    iget-object v3, p0, Lakh;->mDSnapId:Ljava/lang/String;

    iput-object v3, v2, Lhg;->dsnapId:Ljava/lang/String;

    .line 158
    invoke-static {p0}, Lna;->e(Lakb;)Lhy;

    move-result-object v3

    iput-object v3, v2, Lhg;->mediaType:Lhy;

    .line 160
    iget v3, p0, Lakh;->mCaption:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 161
    iget v3, p0, Lakh;->mCaption:I

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lhg;->caption:Ljava/lang/Long;

    .line 164
    :cond_0
    iget v3, p0, Lakh;->mDrawing:I

    if-ne v3, v0, :cond_3

    .line 165
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lhg;->drawing:Ljava/lang/Boolean;

    .line 167
    iget-object v0, p0, Lakh;->mFilterVisual:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 169
    :try_start_0
    iget-object v0, p0, Lakh;->mFilterVisual:Ljava/lang/String;

    invoke-static {v0}, Lho;->valueOf(Ljava/lang/String;)Lho;

    move-result-object v0

    .line 170
    iput-object v0, v2, Lhg;->filterVisual:Lho;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_1
    :goto_1
    iget-object v0, p0, Lakh;->mFilterInfo:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 179
    :try_start_1
    iget-object v0, p0, Lakh;->mFilterInfo:Ljava/lang/String;

    invoke-static {v0}, Lhm;->valueOf(Ljava/lang/String;)Lhm;

    move-result-object v0

    .line 180
    iput-object v0, v2, Lhg;->filterInfo:Lhm;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :cond_2
    :goto_2
    return-object v2

    :cond_3
    move v0, v1

    .line 164
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    const-string v0, "ChatEventAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid filter visual type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lakh;->mFilterVisual:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 182
    :catch_1
    move-exception v0

    const-string v0, "ChatEventAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid filter info type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lakh;->mFilterInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static a(Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;)Ljava/lang/Long;
    .locals 2
    .param p0    # Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 264
    sget-object v0, Lna$1;->$SwitchMap$com$snapchat$android$discover$model$server$DiscoverLinkStatusResult$LinkStatus:[I

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 271
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 266
    :pswitch_0
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 269
    :pswitch_1
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a()Lna;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lna;->sInstance:Lna;

    return-object v0
.end method

.method public static a(Lakb;)V
    .locals 3
    .param p0    # Lakb;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 54
    instance-of v0, p0, Lakg;

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lfx;

    invoke-direct {v0}, Lfx;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v2, Lfy;

    invoke-direct {v2}, Lfy;-><init>()V

    instance-of v0, p0, Laki;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lakb;->al()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v0, 0x0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lfy;->charCount:Ljava/lang/Long;

    :cond_1
    invoke-static {p0}, Lna;->e(Lakb;)Lhy;

    move-result-object v0

    iput-object v0, v2, Lfy;->mediaType:Lhy;

    .line 59
    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    goto :goto_1
.end method

.method public static a(Lakh;ZLjava/lang/Double;Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;Ljava/lang/Double;)V
    .locals 6
    .param p0    # Lakh;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Double;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 88
    invoke-static {p0}, Lna;->a(Lakh;)Lhg;

    move-result-object v1

    .line 90
    iput-object p2, v1, Lhg;->timeViewed:Ljava/lang/Double;

    .line 91
    if-eqz p1, :cond_0

    .line 92
    sget-object v0, Lna$1;->$SwitchMap$com$snapchat$android$discover$model$server$DiscoverLinkStatusResult$LinkStatus:[I

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v1, Lhg;->snapAvailable:Ljava/lang/Long;

    .line 93
    invoke-static {p3}, Lna;->a(Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lhg;->editionAvailable:Ljava/lang/Long;

    .line 95
    :cond_0
    iput-object p4, v1, Lhg;->snapTimeSec:Ljava/lang/Double;

    .line 96
    invoke-virtual {p0}, Lakh;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    .line 97
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lhg;->fullView:Ljava/lang/Boolean;

    .line 99
    :cond_1
    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 100
    return-void

    .line 92
    :pswitch_0
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Lakh;)Lgs;
    .locals 6
    .param p0    # Lakh;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcf;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    new-instance v2, Lgs;

    invoke-direct {v2}, Lgs;-><init>()V

    .line 192
    iget-object v3, p0, Lakh;->mPublisherName:Ljava/lang/String;

    iput-object v3, v2, Lgs;->publisherId:Ljava/lang/String;

    .line 193
    iget-object v3, p0, Lakh;->mEditionId:Ljava/lang/String;

    iput-object v3, v2, Lgs;->editionId:Ljava/lang/String;

    .line 194
    iget-object v3, p0, Lakh;->mAdId:Ljava/lang/String;

    iput-object v3, v2, Lgs;->adsnapId:Ljava/lang/String;

    .line 195
    invoke-static {p0}, Lna;->e(Lakb;)Lhy;

    move-result-object v3

    iput-object v3, v2, Lgs;->mediaType:Lhy;

    .line 197
    iget v3, p0, Lakh;->mCaption:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 198
    iget v3, p0, Lakh;->mCaption:I

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lgs;->caption:Ljava/lang/Long;

    .line 201
    :cond_0
    iget v3, p0, Lakh;->mDrawing:I

    if-ne v3, v0, :cond_3

    .line 202
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lgs;->drawing:Ljava/lang/Boolean;

    .line 204
    iget-object v0, p0, Lakh;->mFilterVisual:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 206
    :try_start_0
    iget-object v0, p0, Lakh;->mFilterVisual:Ljava/lang/String;

    invoke-static {v0}, Lho;->valueOf(Ljava/lang/String;)Lho;

    move-result-object v0

    .line 207
    iput-object v0, v2, Lgs;->filterVisual:Lho;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_1
    :goto_1
    iget-object v0, p0, Lakh;->mFilterInfo:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 216
    :try_start_1
    iget-object v0, p0, Lakh;->mFilterInfo:Ljava/lang/String;

    invoke-static {v0}, Lhm;->valueOf(Ljava/lang/String;)Lhm;

    move-result-object v0

    .line 217
    iput-object v0, v2, Lgs;->filterInfo:Lhm;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    :cond_2
    :goto_2
    return-object v2

    :cond_3
    move v0, v1

    .line 201
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    const-string v0, "ChatEventAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid filter visual type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lakh;->mFilterVisual:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 219
    :catch_1
    move-exception v0

    const-string v0, "ChatEventAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid filter info type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lakh;->mFilterInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static b(Lakb;)V
    .locals 6
    .param p0    # Lakb;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 64
    instance-of v0, p0, Lakg;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lgb;

    invoke-direct {v0}, Lgb;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Lga;

    invoke-direct {v0}, Lga;-><init>()V

    invoke-static {p0}, Lna;->e(Lakb;)Lhy;

    move-result-object v1

    iput-object v1, v0, Lga;->mediaType:Lhy;

    invoke-virtual {p0}, Lakb;->z()J

    move-result-wide v2

    invoke-virtual {p0}, Lakb;->W()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lga;->ackTimeSec:Ljava/lang/Double;

    .line 69
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0
.end method

.method public static b(Lakh;ZLjava/lang/Double;Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;Ljava/lang/Double;)V
    .locals 6
    .param p0    # Lakh;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Double;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 105
    invoke-static {p0}, Lna;->b(Lakh;)Lgs;

    move-result-object v1

    .line 107
    iput-object p2, v1, Lgs;->timeViewed:Ljava/lang/Double;

    .line 108
    if-eqz p1, :cond_0

    .line 109
    invoke-static {p3}, Lna;->a(Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lgs;->editionAvailable:Ljava/lang/Long;

    .line 111
    :cond_0
    iput-object p4, v1, Lgs;->snapTimeSec:Ljava/lang/Double;

    .line 112
    invoke-virtual {p0}, Lakh;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    .line 113
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lgs;->fullView:Ljava/lang/Boolean;

    .line 115
    :cond_1
    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 116
    return-void

    .line 113
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lakb;)V
    .locals 2
    .param p0    # Lakb;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 74
    new-instance v0, Lfw;

    invoke-direct {v0}, Lfw;-><init>()V

    invoke-static {p0}, Lna;->e(Lakb;)Lhy;

    move-result-object v1

    iput-object v1, v0, Lfw;->mediaType:Lhy;

    .line 76
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 77
    return-void
.end method

.method public static d(Lakb;)V
    .locals 2
    .param p0    # Lakb;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 80
    new-instance v0, Lfz;

    invoke-direct {v0}, Lfz;-><init>()V

    invoke-static {p0}, Lna;->e(Lakb;)Lhy;

    move-result-object v1

    iput-object v1, v0, Lfz;->mediaType:Lhy;

    .line 82
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 83
    return-void
.end method

.method private static e(Lakb;)Lhy;
    .locals 2
    .param p0    # Lakb;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcf;
    .end annotation

    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 232
    instance-of v0, p0, Laki;

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lhy;->TEXT:Lhy;

    .line 246
    :goto_0
    return-object v0

    .line 234
    :cond_0
    instance-of v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v0, :cond_1

    .line 235
    check-cast p0, Lcom/snapchat/android/model/chat/ChatMedia;

    .line 236
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatMedia;->C()Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    move-result-object v0

    .line 237
    sget-object v1, Lna$1;->$SwitchMap$com$snapchat$android$model$chat$ChatMedia$MediaType:[I

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 246
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 239
    :pswitch_0
    sget-object v0, Lhy;->IMAGE:Lhy;

    goto :goto_0

    .line 241
    :pswitch_1
    sget-object v0, Lhy;->VIDEO:Lhy;

    goto :goto_0

    .line 243
    :pswitch_2
    sget-object v0, Lhy;->VIDEO_NO_SOUND:Lhy;

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
