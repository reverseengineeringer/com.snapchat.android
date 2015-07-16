.class final Lzz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laae$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzz;


# direct methods
.method constructor <init>(Lzz;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lzz$1;->a:Lzz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Laae;IJ)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 158
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v8

    .line 163
    iget-object v0, p1, Laae;->a:Ljava/util/List;

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

    check-cast v0, Lakl;

    .line 164
    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0}, Lakl;->Y()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 166
    invoke-virtual {v0}, Lakl;->N()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    move v3, v1

    .line 175
    :goto_1
    iget-object v1, p1, Laae;->c:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-static {v1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    iput-object v1, v0, Lakl;->mLoadingContext:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    move v1, v3

    move v3, v4

    .line 176
    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v0}, Lakl;->M()Z

    move-result v4

    if-nez v4, :cond_7

    .line 169
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    move v3, v1

    goto :goto_1

    .line 178
    :cond_1
    if-lez v1, :cond_2

    .line 179
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    aput-object p1, v0, v5

    .line 181
    iget-object v0, p0, Lzz$1;->a:Lzz;

    invoke-static {v0}, Lzz;->a(Lzz;)Lakk;

    move-result-object v0

    invoke-virtual {v0}, Lakk;->e()V

    .line 184
    :cond_2
    if-lez v3, :cond_3

    iget-boolean v0, p1, Laae;->d:Z

    if-eqz v0, :cond_3

    .line 185
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object p1, v0, v5

    .line 187
    iget-object v0, p0, Lzz$1;->a:Lzz;

    invoke-static {v0}, Lzz;->b(Lzz;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v4, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v6, 0x7f0c01d0

    invoke-direct {v1, v4, v6}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 193
    :cond_3
    iget-object v0, p1, Laae;->b:Lcom/snapchat/android/model/StoryCollection;

    .line 194
    if-eqz v0, :cond_4

    if-lez p2, :cond_4

    .line 195
    if-nez v3, :cond_5

    move v0, v5

    .line 196
    :goto_2
    iget-object v1, p0, Lzz$1;->a:Lzz;

    invoke-static {v1}, Lzz;->c(Lzz;)Laab;

    move-result-object v1

    iget-object v3, p1, Laae;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v4, p1, Laae;->c:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    sget-object v6, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->LOAD_FROM_VIEWING:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    if-eq v4, v6, :cond_4

    const-string v6, "STORY_STORY_LOADED"

    invoke-static {v6}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    const-string v7, "view_location"

    invoke-static {v3}, Laab;->a(Lcom/snapchat/android/model/StoryCollection;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "source"

    invoke-virtual {v4}, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->getMetricName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "reachability"

    iget-object v1, v1, Laab;->a:Lama;

    invoke-virtual {v1}, Lama;->f()Ljava/lang/String;

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

    .line 205
    :cond_4
    iget-object v0, p0, Lzz$1;->a:Lzz;

    invoke-static {v0}, Lzz;->b(Lzz;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdf;

    invoke-direct {v1}, Lbdf;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lzz$1;->a:Lzz;

    invoke-static {v0}, Lzz;->d(Lzz;)V

    .line 207
    return-void

    :cond_5
    move v0, v2

    .line 195
    goto :goto_2

    :cond_6
    move v5, v2

    .line 196
    goto :goto_3

    :cond_7
    move v4, v3

    move v3, v1

    goto/16 :goto_1
.end method
