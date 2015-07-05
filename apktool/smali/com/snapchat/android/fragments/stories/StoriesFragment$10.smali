.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$10;
.super Laqb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment;->onSharedStoryFriendButtonClickedEvent(Lbdi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Lcom/snapchat/android/model/StoryCollection;

.field final synthetic c:Lbdi;

.field final synthetic d:Lcom/snapchat/android/fragments/stories/StoriesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/StoryCollection;Lbdi;)V
    .locals 0

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->d:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iput-object p6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->a:Lcom/snapchat/android/model/Friend;

    iput-object p7, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->b:Lcom/snapchat/android/model/StoryCollection;

    iput-object p8, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->c:Lbdi;

    invoke-direct {p0, p2, p3, p4, p5}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 1366
    return-void
.end method

.method protected final b()V
    .locals 6

    .prologue
    .line 1370
    new-instance v0, Lpu;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lpu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lpu;->f()V

    .line 1371
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->d:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->o(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Laop;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->c:Lbdi;

    iget-boolean v2, v0, Lbdi;->isInRecentUpdates:Z

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1372
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->d:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->a:Lcom/snapchat/android/model/Friend;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;Lcom/snapchat/android/model/Friend;)V

    .line 1373
    return-void

    .line 1371
    :cond_1
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->e()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    new-instance v3, Llo;

    invoke-direct {v3}, Llo;-><init>()V

    invoke-static {v2}, Laop;->a(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Llo;->viewLocation:Ljava/lang/Long;

    invoke-static {v0}, Laop;->c(Lajr;)Llr;

    move-result-object v2

    iput-object v2, v3, Llo;->storyType:Llr;

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Llo;->posterId:Ljava/lang/String;

    invoke-virtual {v0}, Lajr;->aw()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lajr;->ax()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Llo;->sponsor:Ljava/lang/String;

    :cond_2
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laop;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "LOCAL"

    iput-object v0, v3, Llo;->geoFence:Ljava/lang/String;

    :cond_3
    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0
.end method
