.class final Lzd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzh$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzd;


# direct methods
.method constructor <init>(Lzd;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lzd$1;->a:Lzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lzh;IJ)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 160
    const-string v0, "StoryLoader"

    const-string v1, "StorySnap batch load %s complete, %d snaps in %dms"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p1, Lzh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 166
    const-string v4, "StoryLoader"

    const-string v7, "Batch %s item: %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p1, v8, v2

    invoke-virtual {v0}, Lajr;->aa()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v4, v7, v8}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v0}, Lajr;->M()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    move v3, v1

    .line 177
    :goto_1
    iget-object v1, p1, Lzh;->c:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-static {v1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    iput-object v1, v0, Lajr;->mLoadingContext:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    move v1, v3

    move v3, v4

    .line 178
    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0}, Lajr;->L()Z

    move-result v4

    if-nez v4, :cond_7

    .line 171
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    move v3, v1

    goto :goto_1

    .line 180
    :cond_1
    if-lez v1, :cond_2

    .line 181
    const-string v0, "StoryLoader"

    const-string v4, "Sanitizing stories since %d StorySnaps were unable to load from batch %s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object p1, v6, v5

    invoke-static {v0, v4, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lzd$1;->a:Lzd;

    invoke-static {v0}, Lzd;->a(Lzd;)Lajq;

    move-result-object v0

    invoke-virtual {v0}, Lajq;->e()V

    .line 186
    :cond_2
    if-lez v3, :cond_3

    iget-boolean v0, p1, Lzh;->d:Z

    if-eqz v0, :cond_3

    .line 187
    const-string v0, "StoryLoader"

    const-string v4, "Displaying connection toast since %d StorySnaps failed to load from batch %s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    aput-object p1, v6, v5

    invoke-static {v0, v4, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lzd$1;->a:Lzd;

    invoke-static {v0}, Lzd;->b(Lzd;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v4, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v6, 0x7f0c01d0

    invoke-direct {v1, v4, v6}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 195
    :cond_3
    iget-object v0, p1, Lzh;->b:Lcom/snapchat/android/model/StoryCollection;

    .line 196
    if-eqz v0, :cond_4

    if-lez p2, :cond_4

    .line 197
    if-nez v3, :cond_5

    move v0, v5

    .line 198
    :goto_2
    iget-object v1, p0, Lzd$1;->a:Lzd;

    invoke-static {v1}, Lzd;->c(Lzd;)Lze;

    move-result-object v1

    iget-object v3, p1, Lzh;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v4, p1, Lzh;->c:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    sget-object v6, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->LOAD_FROM_VIEWING:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    if-eq v4, v6, :cond_4

    const-string v6, "STORY_STORY_LOADED"

    invoke-static {v6}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    const-string v7, "view_location"

    invoke-static {v3}, Lze;->a(Lcom/snapchat/android/model/StoryCollection;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "source"

    invoke-virtual {v4}, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->getMetricName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "reachability"

    iget-object v1, v1, Lze;->a:Lale;

    invoke-virtual {v1}, Lale;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "success"

    if-eqz v0, :cond_6

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v6, p3, p4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v6, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 207
    :cond_4
    iget-object v0, p0, Lzd$1;->a:Lzd;

    invoke-static {v0}, Lzd;->b(Lzd;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcf;

    invoke-direct {v1}, Lbcf;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lzd$1;->a:Lzd;

    invoke-static {v0}, Lzd;->d(Lzd;)V

    .line 209
    return-void

    :cond_5
    move v0, v2

    .line 197
    goto :goto_2

    :cond_6
    move v5, v2

    .line 198
    goto :goto_3

    :cond_7
    move v4, v3

    move v3, v1

    goto/16 :goto_1
.end method
