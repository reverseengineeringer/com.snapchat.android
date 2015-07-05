.class final Laff$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lait$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Laff;


# direct methods
.method constructor <init>(Laff;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Laff$8;->b:Laff;

    iput-object p2, p0, Laff$8;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lait;)V
    .locals 2
    .param p1    # Lait;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 393
    if-eqz p1, :cond_0

    .line 394
    new-instance v0, Ljl;

    invoke-direct {v0}, Ljl;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_SCORE_DISPLAY:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 395
    iget-object v0, p0, Laff$8;->b:Laff;

    iget-object v1, p0, Laff$8;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Laff;->d(Lcom/snapchat/android/model/Friend;)V

    .line 397
    :cond_0
    return-void
.end method
