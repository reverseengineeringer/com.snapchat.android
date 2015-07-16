.class public final Lcom/snapchat/android/analytics/HereAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;,
        Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;
    }
.end annotation


# static fields
.field private static final BUCKET_CFG_HIGH_PRECISION_COUNT:I = 0xa

.field private static final BUCKET_CFG_HIGH_PRECISION_SIZE:I = 0x3e8

.field private static final BUCKET_CFG_LOW_PRECISION_RANGE_END:I = 0x14

.field private static final BUCKET_CFG_REPORTING_RANGE_END:I = 0x1e

.field private static final PUBLISH_LOCKED:Ljava/lang/String; = "HERE_PUBLISH_LOCKED"

.field private static final PUBLISH_LOCKED_BOTTOM:Ljava/lang/String; = "bottom"

.field private static final PUBLISH_LOCKED_POS_KEY:Ljava/lang/String; = "position"

.field private static final PUBLISH_LOCKED_TOP:Ljava/lang/String; = "top"

.field protected static final START_TIME_UNINITIALIZED:J = -0x1L

.field private static final TIME_TO_EVENT_PARAM_NAME:Ljava/lang/String; = "timeToEvent"

.field private static final TIME_TO_FIRST_PUBLISH_PARAM_NAME:Ljava/lang/String; = "timeToFirstEvent"


# instance fields
.field public mAdlConnectedToScope:Z

.field private mAnalyticsPlatform:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

.field private mHereAvailableTimestamp:J

.field private mIsVideoBidirectional:Z

.field public mIsVideoIncoming:Z

.field public mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

.field private mPreviousSetupEventTimestamp:J

.field public mStartOfVideoStream:J

.field public mTimeStartCanStreamVideo:J

.field private mVideoBidirectionalStart:J

.field public mVideoIncomingStart:J

.field public mVideoOutgoingStart:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/HereAnalytics;-><init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;)V

    .line 97
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->DISCONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    iput-object v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    .line 80
    iput-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mTimeStartCanStreamVideo:J

    .line 88
    iput-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    .line 90
    iput-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mPreviousSetupEventTimestamp:J

    .line 91
    iput-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mHereAvailableTimestamp:J

    .line 101
    iput-object p1, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mAnalyticsPlatform:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 102
    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 8
    .annotation build Lchc;
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/16 v6, 0x1e

    const/16 v5, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 367
    const-wide/16 v0, 0x2710

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 370
    invoke-static {p0, p1}, Lauy;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 374
    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    long-to-int v0, v0

    .line 375
    if-ge v0, v5, :cond_1

    .line 376
    const-string v0, "%d - %d s"

    new-array v1, v2, [Ljava/lang/Object;

    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_1
    if-ge v0, v6, :cond_2

    .line 380
    const-string v0, "%d - %d s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_2
    const-string v0, "%d+ s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 254
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 258
    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_AVAILABLE:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    if-ne p1, v1, :cond_1

    .line 259
    iput-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mHereAvailableTimestamp:J

    .line 260
    new-instance v1, Lie;

    invoke-direct {v1}, Lie;-><init>()V

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 268
    :goto_0
    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_PUBLISHED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    if-ne p1, v1, :cond_0

    iget-wide v4, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mHereAvailableTimestamp:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 269
    const-string v1, "timeToFirstEvent"

    iget-wide v4, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mHereAvailableTimestamp:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Lcom/snapchat/android/analytics/HereAnalytics;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 271
    iput-wide v6, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mHereAvailableTimestamp:J

    .line 274
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 275
    iput-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mPreviousSetupEventTimestamp:J

    .line 276
    return-void

    .line 262
    :cond_1
    iget-wide v4, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mPreviousSetupEventTimestamp:J

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 263
    const-string v1, "timeToEvent"

    iget-wide v4, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mPreviousSetupEventTimestamp:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Lcom/snapchat/android/analytics/HereAnalytics;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/ui/here/DisconnectReason;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 171
    iget-object v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->DISCONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 172
    :goto_0
    if-nez v0, :cond_1

    .line 188
    :goto_1
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    .line 176
    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->DISCONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    iput-object v1, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mVideoOutgoingStart:J

    sub-long/2addr v2, v4

    .line 179
    invoke-virtual {p1}, Lcom/snapchat/android/ui/here/DisconnectReason;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "HERE_END"

    invoke-direct {v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v5, "reason"

    invoke-virtual {v4, v5, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 181
    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->CONNECTING:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    if-ne v0, v1, :cond_2

    .line 182
    invoke-virtual {p1}, Lcom/snapchat/android/ui/here/DisconnectReason;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "HERE_CONNECTING_STATE_TERMINATED"

    invoke-direct {v1, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 187
    :goto_2
    invoke-virtual {p1}, Lcom/snapchat/android/ui/here/DisconnectReason;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/ui/here/DisconnectReason;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "HERE_CONNECTED_STATE_TERMINATED"

    invoke-direct {v1, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    sget-object v3, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->DISCONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 227
    :goto_0
    iget-boolean v3, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mIsVideoIncoming:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 228
    :goto_1
    iget-boolean v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mIsVideoBidirectional:Z

    if-ne v0, v1, :cond_2

    .line 239
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 226
    goto :goto_0

    :cond_1
    move v1, v2

    .line 227
    goto :goto_1

    .line 229
    :cond_2
    iput-boolean v1, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mIsVideoBidirectional:Z

    .line 231
    iget-boolean v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mIsVideoBidirectional:Z

    if-eqz v0, :cond_3

    .line 232
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "HERE_SESSION_START"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    new-instance v0, Lig;

    invoke-direct {v0}, Lig;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mVideoBidirectionalStart:J

    goto :goto_2

    .line 236
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mVideoBidirectionalStart:J

    sub-long/2addr v0, v2

    .line 237
    new-instance v2, Lif;

    invoke-direct {v2}, Lif;-><init>()V

    long-to-double v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lif;->view_time_sec:Ljava/lang/Double;

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "HERE_SESSION_END"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_2
.end method
