.class public final Larm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Larj;


# instance fields
.field private final a:Lyw;

.field private final b:Laje;

.field private final c:Laio;

.field private final d:Laop;

.field private e:Lark;


# direct methods
.method public constructor <init>(Laje;Laio;)V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lyw;

    invoke-direct {v0}, Lyw;-><init>()V

    invoke-static {}, Laop;->a()Laop;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Larm;-><init>(Lyw;Laje;Laio;Laop;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Lyw;Laje;Laio;Laop;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Larm;->a:Lyw;

    .line 36
    iput-object p2, p0, Larm;->b:Laje;

    .line 37
    iput-object p3, p0, Larm;->c:Laio;

    .line 38
    iput-object p4, p0, Larm;->d:Laop;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Laje;
    .locals 1
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Larm;->b:Laje;

    return-object v0
.end method

.method public final a(Lark;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Larm;->e:Lark;

    .line 77
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public final b()Laio;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Larm;->c:Laio;

    return-object v0
.end method

.method public final c()Lcom/snapchat/android/rendering/SnapMediaRenderer;
    .locals 1
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 6

    .prologue
    .line 83
    iget-object v0, p0, Larm;->b:Laje;

    invoke-virtual {v0}, Laje;->Y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Larm;->b:Laje;

    check-cast v0, Lajp;

    .line 87
    iget-object v1, v0, Lajp;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    sget-object v2, Lcom/snapchat/android/ads/AdResolutionState;->NO_FILL:Lcom/snapchat/android/ads/AdResolutionState;

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->UNFILLED_AD_PLACEHOLDER:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    .line 89
    :goto_0
    iget-object v2, p0, Larm;->c:Laio;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Laio;->a(Laje;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V

    .line 92
    iget-object v2, p0, Larm;->d:Laop;

    new-instance v3, Llf;

    invoke-direct {v3}, Llf;-><init>()V

    iget-object v1, v0, Lajr;->mUsername:Ljava/lang/String;

    iput-object v1, v3, Llf;->posterId:Ljava/lang/String;

    iget-object v1, v0, Lajp;->mAdKey:Ljava/lang/String;

    iput-object v1, v3, Llf;->adsnapId:Ljava/lang/String;

    invoke-virtual {v0}, Lajp;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Llf;->storySnapId:Ljava/lang/String;

    iget-object v1, v0, Lajp;->mResponse:Lmo;

    iget-object v1, v1, Lmo;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/snapchat/android/ads/AdRequestError;->mErrorCode:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    if-nez v4, :cond_4

    :cond_0
    sget-object v1, Lfq;->FAILED:Lfq;

    :goto_1
    iput-object v1, v3, Llf;->additionalInfo:Lfq;

    iget-object v1, v2, Laop;->b:Laop$a;

    iget-object v1, v1, Laop$a;->c:Ljava/lang/Long;

    iput-object v1, v3, Llf;->viewLocation:Ljava/lang/Long;

    invoke-static {v0}, Laop;->c(Lajr;)Llr;

    move-result-object v1

    iput-object v1, v3, Llf;->storyType:Llr;

    iget v1, v0, Lajp;->mAdPosition:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Llf;->adIndexPos:Ljava/lang/Long;

    invoke-static {v0}, Laop;->a(Lajr;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LOCAL"

    iput-object v0, v3, Llf;->geoFence:Ljava/lang/String;

    :cond_1
    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 96
    :cond_2
    iget-object v0, p0, Larm;->a:Lyw;

    iget-object v1, p0, Larm;->b:Laje;

    invoke-virtual {v0, v1}, Lyw;->b(Laje;)V

    .line 99
    iget-object v0, p0, Larm;->e:Lark;

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->UNFILLED_AD_PLACEHOLDER:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-interface {v0, p0, v1}, Lark;->a(Larj;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V

    .line 100
    return-void

    .line 87
    :cond_3
    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_UNABLE_TO_SHOW_MEDIA:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    goto :goto_0

    .line 92
    :cond_4
    sget-object v4, Laop$1;->a:[I

    iget-object v1, v1, Lcom/snapchat/android/ads/AdRequestError;->mErrorCode:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    invoke-virtual {v1}, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lfq;->FAILED:Lfq;

    goto :goto_1

    :pswitch_0
    sget-object v1, Lfq;->SERVER_INTERNAL_ERROR:Lfq;

    goto :goto_1

    :pswitch_1
    sget-object v1, Lfq;->SERVER_INVALID_REQUEST_ERROR:Lfq;

    goto :goto_1

    :pswitch_2
    sget-object v1, Lfq;->SERVER_NETWORK_ERROR:Lfq;

    goto :goto_1

    :pswitch_3
    sget-object v1, Lfq;->SERVER_NO_FILL_ERROR:Lfq;

    goto :goto_1

    :pswitch_4
    sget-object v1, Lfq;->SERVER_OTHER_ERROR:Lfq;

    goto :goto_1

    :pswitch_5
    sget-object v1, Lfq;->CONTENT_NO_FILL:Lfq;

    goto :goto_1

    :pswitch_6
    sget-object v1, Lfq;->TIMEOUT:Lfq;

    goto :goto_1

    :pswitch_7
    sget-object v1, Lfq;->CLIENT_ERROR:Lfq;

    goto :goto_1

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
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method
