.class final Lapx$2;
.super Lcom/snapchat/android/api/LoadAllStorySnapsTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapx;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapx;


# direct methods
.method constructor <init>(Lapx;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lapx$2;->a:Lapx;

    invoke-direct {p0, p2}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 100
    iget-object v1, p0, Lapx$2;->a:Lapx;

    iget-object v0, v1, Lapx;->b:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/model/StoryGroup;->a(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v3, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-virtual {v3}, Lajr;->ak()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lapx$3;

    iget-object v2, v1, Lapx;->a:Landroid/content/Context;

    sget-object v4, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;->STORY:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    sget-object v5, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->FAIL_ONLY:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    invoke-direct/range {v0 .. v5}, Lapx$3;-><init>(Lapx;Landroid/content/Context;Lajr;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V

    sget-object v1, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lapx$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;

    iget-object v3, v1, Lapx;->a:Landroid/content/Context;

    iget-object v1, v1, Lapx;->b:Lcom/snapchat/android/model/StoryGroup;

    sget-object v4, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->FAIL_ONLY:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/StoryGroup;Ljava/util/List;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V

    sget-object v1, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lapx$2;->a:Lapx;

    iget-object v0, v0, Lapx;->d:Lbgc;

    invoke-static {}, Lcom/snapchat/android/util/AlertDialogUtils;->a()V

    iget-object v1, v0, Lbgc;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c01fc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lbgc;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lapx$2;->a:Lapx;

    iget-object v0, v0, Lapx;->b:Lcom/snapchat/android/model/StoryGroup;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    .line 107
    iget-object v0, p0, Lapx$2;->a:Lapx;

    iget-object v0, v0, Lapx;->b:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/StoryGroup;->a(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-virtual {v0}, Lajr;->ai()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-virtual {v0}, Lajr;->ak()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    const-string v0, "SAVE_ENTIRE_STORY"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v4, "success"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v4, "reason"

    sget-object v5, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_SNAPS_DID_NOT_LOAD_IN_TIME:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v4, "count"

    add-int v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v4, "video_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "image_count"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 108
    return-void
.end method
