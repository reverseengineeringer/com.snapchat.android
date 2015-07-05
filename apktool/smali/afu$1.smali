.class final Lafu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafu;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafu;

.field final synthetic b:Lafu;


# direct methods
.method constructor <init>(Lafu;Lafu;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lafu$1;->b:Lafu;

    iput-object p2, p0, Lafu$1;->a:Lafu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 168
    iget-object v0, p0, Lafu$1;->b:Lafu;

    iget-boolean v0, v0, Lafu;->i:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lafu;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load link status already loading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lafu$1;->b:Lafu;

    invoke-virtual {v2}, Lafu;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lafu$1;->b:Lafu;

    iget-object v0, v0, Lafu;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lavh;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lafu$1;->b:Lafu;

    iget-object v0, v0, Lafu;->h:Landroid/widget/ImageView;

    invoke-static {v0}, Lavh;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 175
    :cond_1
    iget-object v0, p0, Lafu$1;->b:Lafu;

    iget-object v0, v0, Lafu;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lavh;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    iget-object v0, p0, Lafu$1;->b:Lafu;

    iget-object v0, v0, Lafu;->n:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    iget-object v1, p0, Lafu$1;->b:Lafu;

    iget-object v1, v1, Lafu;->a:Lakh;

    invoke-virtual {v1}, Lakh;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DISCOVER_SHARE_BAR_ICON_LOAD"

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "reachability"

    iget-object v4, v0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mNetworkStatusManager:Lale;

    invoke-virtual {v4}, Lale;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "DISCOVER_SHARE_BAR_ICON_LOAD"

    invoke-virtual {v0, v3, v1, v2}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 180
    :cond_2
    iget-object v0, p0, Lafu$1;->b:Lafu;

    iget-object v0, v0, Lafu;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lafu$1;->b:Lafu;

    iget-object v0, v0, Lafu;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lafu$1;->b:Lafu;

    iget-object v0, v0, Lafu;->a:Lakh;

    iget-object v4, v0, Lakh;->mPublisherInternationalName:Ljava/lang/String;

    .line 184
    if-nez v4, :cond_3

    .line 186
    iget-object v0, p0, Lafu$1;->b:Lafu;

    iget-object v0, v0, Lafu;->a:Lakh;

    iget-object v4, v0, Lakh;->mPublisherName:Ljava/lang/String;

    .line 189
    :cond_3
    if-eqz v4, :cond_8

    .line 190
    invoke-static {}, Lafu;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading link status for Discover snap "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lafu$1;->b:Lafu;

    invoke-virtual {v2}, Lafu;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with publisher name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lafu$1;->b:Lafu;

    iput-boolean v6, v0, Lafu;->i:Z

    .line 193
    iget-object v0, p0, Lafu$1;->b:Lafu;

    iget-object v6, v0, Lafu;->b:Ladl;

    iget-object v0, p0, Lafu$1;->b:Lafu;

    iget-object v0, v0, Lafu;->a:Lakh;

    invoke-virtual {v0}, Lakh;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lafu$1;->b:Lafu;

    iget-object v0, v0, Lafu;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lafu$1;->b:Lafu;

    iget-object v2, v2, Lafu;->a:Lakh;

    iget-object v5, v2, Lakh;->mPublisherName:Ljava/lang/String;

    iget-object v2, p0, Lafu$1;->b:Lafu;

    iget-object v2, v2, Lafu;->a:Lakh;

    iget-object v3, v2, Lakh;->mEditionId:Ljava/lang/String;

    iget-object v2, p0, Lafu$1;->b:Lafu;

    iget-object v2, v2, Lafu;->a:Lakh;

    iget-object v2, v2, Lakh;->mDSnapId:Ljava/lang/String;

    iget-object v7, p0, Lafu$1;->a:Lafu;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    if-nez v3, :cond_5

    .line 196
    :cond_4
    :goto_1
    iget-object v0, p0, Lafu$1;->b:Lafu;

    iget-object v0, v0, Lafu;->a:Lakh;

    iget-object v1, p0, Lafu$1;->a:Lafu;

    invoke-virtual {v0, v1}, Lakh;->deleteObserver(Ljava/util/Observer;)V

    goto/16 :goto_0

    .line 193
    :cond_5
    iget-object v8, v6, Ladl;->i:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-boolean v9, v6, Ladl;->n:Z

    if-nez v9, :cond_6

    iget-object v9, v6, Ladl;->b:Lcom/squareup/otto/Bus;

    new-instance v10, Lbbj;

    invoke-direct {v10}, Lbbj;-><init>()V

    invoke-virtual {v9, v10}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    const/4 v9, 0x1

    iput-boolean v9, v6, Ladl;->n:Z

    :cond_6
    const-string v9, "DiscoverDeepLinkController"

    const-string v10, "DISCOVER-LINK: %s start loading status and icon %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-static {v9, v10, v11}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v9, Ladl$c;

    invoke-direct {v9, v6}, Ladl$c;-><init>(Ladl;)V

    iput-object v7, v9, Ladl$c;->e:Ladl$a;

    iget-object v7, v6, Ladl;->j:Ljava/util/Map;

    invoke-interface {v7, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ladl$1;

    invoke-direct {v7, v6, v1, v4, v0}, Ladl$1;-><init>(Ladl;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, v6, Ladl;->k:Ljava/util/Map;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Ladl;->c:Ladm;

    invoke-virtual {v0, v7}, Ladm;->a(Ladm$a;)V

    iget-object v0, v6, Ladl;->d:Lalb;

    iget-object v7, v6, Ladl;->d:Lalb;

    invoke-virtual {v7}, Lalb;->b()Lala;

    move-result-object v7

    invoke-virtual {v7, v5}, Lala;->a(Ljava/lang/String;)Lala;

    move-result-object v5

    invoke-virtual {v0, v5}, Lalb;->a(Lala;)V

    iget-object v0, v6, Ladl;->l:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "DiscoverDeepLinkController"

    const-string v5, "DISCOVER-LINK: %s - Using cached link status for %s - %s - %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v7, v9

    const/4 v9, 0x1

    aput-object v4, v7, v9

    const/4 v4, 0x2

    aput-object v3, v7, v4

    const/4 v3, 0x3

    aput-object v2, v7, v3

    invoke-static {v0, v5, v7}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v6, Ladl;->l:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladl$c;

    iget-object v2, v0, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mPublisherInternationalName:Ljava/lang/String;

    iget-object v3, v0, Ladl$c;->c:Ljava/lang/String;

    invoke-virtual {v6, v1, v2, v3}, Ladl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    invoke-virtual {v6, v1, v0}, Ladl;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;)V

    :goto_2
    monitor-exit v8

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :try_start_1
    new-instance v0, Labx;

    iget-object v5, v6, Ladl;->o:Labx$a;

    invoke-direct/range {v0 .. v5}, Labx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labx$a;)V

    iget-object v2, v6, Ladl;->m:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    const-string v3, "DISCOVER_SHARE_LINK_VALIDATION"

    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "reachability"

    iget-object v5, v2, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mNetworkStatusManager:Lale;

    invoke-virtual {v5}, Lale;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "DISCOVER_SHARE_LINK_VALIDATION"

    invoke-virtual {v2, v4, v1, v3}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    invoke-virtual {v0}, Labx;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 198
    :cond_8
    invoke-static {}, Lafu;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading link status for Discover snap "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lafu$1;->b:Lafu;

    invoke-virtual {v2}, Lafu;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but no publisher name yet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 201
    :cond_9
    invoke-static {}, Lafu;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading link status and icon for Discover snap "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lafu$1;->b:Lafu;

    invoke-virtual {v2}, Lafu;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but already loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
