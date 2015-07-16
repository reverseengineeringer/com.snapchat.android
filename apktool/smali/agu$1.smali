.class final Lagu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagu;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagu;

.field final synthetic b:Lagu;


# direct methods
.method constructor <init>(Lagu;Lagu;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lagu$1;->b:Lagu;

    iput-object p2, p0, Lagu$1;->a:Lagu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 168
    iget-object v0, p0, Lagu$1;->b:Lagu;

    iget-boolean v0, v0, Lagu;->i:Z

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Load link status already loading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lagu$1;->b:Lagu;

    invoke-virtual {v1}, Lagu;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lagu$1;->b:Lagu;

    iget-object v0, v0, Lagu;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lawf;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lagu$1;->b:Lagu;

    iget-object v0, v0, Lagu;->h:Landroid/widget/ImageView;

    invoke-static {v0}, Lawf;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 175
    :cond_1
    iget-object v0, p0, Lagu$1;->b:Lagu;

    iget-object v0, v0, Lagu;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lawf;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    iget-object v0, p0, Lagu$1;->b:Lagu;

    iget-object v0, v0, Lagu;->n:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    iget-object v1, p0, Lagu$1;->b:Lagu;

    iget-object v1, v1, Lagu;->a:Lalc;

    invoke-virtual {v1}, Lalc;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DISCOVER_SHARE_BAR_ICON_LOAD"

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "reachability"

    iget-object v4, v0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mNetworkStatusManager:Lama;

    invoke-virtual {v4}, Lama;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "DISCOVER_SHARE_BAR_ICON_LOAD"

    invoke-virtual {v0, v3, v1, v2}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 180
    :cond_2
    iget-object v0, p0, Lagu$1;->b:Lagu;

    iget-object v0, v0, Lagu;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lagu$1;->b:Lagu;

    iget-object v0, v0, Lagu;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lagu$1;->b:Lagu;

    iget-object v0, v0, Lagu;->a:Lalc;

    iget-object v4, v0, Lalc;->mPublisherInternationalName:Ljava/lang/String;

    .line 184
    if-nez v4, :cond_3

    .line 186
    iget-object v0, p0, Lagu$1;->b:Lagu;

    iget-object v0, v0, Lagu;->a:Lalc;

    iget-object v4, v0, Lalc;->mPublisherName:Ljava/lang/String;

    .line 189
    :cond_3
    if-eqz v4, :cond_8

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading link status for Discover snap "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lagu$1;->b:Lagu;

    invoke-virtual {v1}, Lagu;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with publisher name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v0, p0, Lagu$1;->b:Lagu;

    iput-boolean v5, v0, Lagu;->i:Z

    .line 193
    iget-object v0, p0, Lagu$1;->b:Lagu;

    iget-object v6, v0, Lagu;->b:Lael;

    iget-object v0, p0, Lagu$1;->b:Lagu;

    iget-object v0, v0, Lagu;->a:Lalc;

    invoke-virtual {v0}, Lalc;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lagu$1;->b:Lagu;

    iget-object v0, v0, Lagu;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lagu$1;->b:Lagu;

    iget-object v2, v2, Lagu;->a:Lalc;

    iget-object v5, v2, Lalc;->mPublisherName:Ljava/lang/String;

    iget-object v2, p0, Lagu$1;->b:Lagu;

    iget-object v2, v2, Lagu;->a:Lalc;

    iget-object v3, v2, Lalc;->mEditionId:Ljava/lang/String;

    iget-object v2, p0, Lagu$1;->b:Lagu;

    iget-object v2, v2, Lagu;->a:Lalc;

    iget-object v2, v2, Lalc;->mDSnapId:Ljava/lang/String;

    iget-object v7, p0, Lagu$1;->a:Lagu;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    if-nez v3, :cond_5

    .line 196
    :cond_4
    :goto_1
    iget-object v0, p0, Lagu$1;->b:Lagu;

    iget-object v0, v0, Lagu;->a:Lalc;

    iget-object v1, p0, Lagu$1;->a:Lagu;

    invoke-virtual {v0, v1}, Lalc;->deleteObserver(Ljava/util/Observer;)V

    goto/16 :goto_0

    .line 193
    :cond_5
    iget-object v8, v6, Lael;->i:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-boolean v9, v6, Lael;->n:Z

    if-nez v9, :cond_6

    iget-object v9, v6, Lael;->b:Lcom/squareup/otto/Bus;

    new-instance v10, Lbcj;

    invoke-direct {v10}, Lbcj;-><init>()V

    invoke-virtual {v9, v10}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    const/4 v9, 0x1

    iput-boolean v9, v6, Lael;->n:Z

    :cond_6
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    new-instance v9, Lael$c;

    invoke-direct {v9, v6}, Lael$c;-><init>(Lael;)V

    iput-object v7, v9, Lael$c;->e:Lael$a;

    iget-object v7, v6, Lael;->j:Ljava/util/Map;

    invoke-interface {v7, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lael$1;

    invoke-direct {v7, v6, v1, v4, v0}, Lael$1;-><init>(Lael;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, v6, Lael;->k:Ljava/util/Map;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lael;->c:Laem;

    invoke-virtual {v0, v7}, Laem;->a(Laem$a;)V

    iget-object v0, v6, Lael;->d:Lalw;

    iget-object v7, v6, Lael;->d:Lalw;

    invoke-virtual {v7}, Lalw;->b()Lalv;

    move-result-object v7

    invoke-virtual {v7, v5}, Lalv;->a(Ljava/lang/String;)Lalv;

    move-result-object v5

    invoke-virtual {v0, v5}, Lalw;->a(Lalv;)V

    iget-object v0, v6, Lael;->l:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v0, v5

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v3, 0x3

    aput-object v2, v0, v3

    iget-object v0, v6, Lael;->l:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lael$c;

    iget-object v2, v0, Lael$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mPublisherInternationalName:Ljava/lang/String;

    iget-object v3, v0, Lael$c;->c:Ljava/lang/String;

    invoke-virtual {v6, v1, v2, v3}, Lael;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lael$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    invoke-virtual {v6, v1, v0}, Lael;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;)V

    :goto_2
    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :try_start_1
    new-instance v0, Lacx;

    iget-object v5, v6, Lael;->o:Lacx$a;

    invoke-direct/range {v0 .. v5}, Lacx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lacx$a;)V

    iget-object v2, v6, Lael;->m:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    const-string v3, "DISCOVER_SHARE_LINK_VALIDATION"

    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "reachability"

    iget-object v5, v2, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mNetworkStatusManager:Lama;

    invoke-virtual {v5}, Lama;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "DISCOVER_SHARE_LINK_VALIDATION"

    invoke-virtual {v2, v4, v1, v3}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    invoke-virtual {v0}, Lacx;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 198
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading link status for Discover snap "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lagu$1;->b:Lagu;

    invoke-virtual {v1}, Lagu;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but no publisher name yet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 201
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading link status and icon for Discover snap "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lagu$1;->b:Lagu;

    invoke-virtual {v1}, Lagu;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but already loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method
