.class final Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lafq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 220
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 222
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    iget-object v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DISCOVER_INTRO_MEDIA_PLAYBACK_ERROR"

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "publisher_name"

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->p_()V

    .line 227
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    sget-object v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->ERROR:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 228
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->c(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)V

    .line 216
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->d(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    return-void
.end method

.method public final p_()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    sget-object v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->COMPLETED:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;->a()V

    .line 212
    :cond_0
    return-void
.end method
