.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$10;
.super Lara;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment;->onSharedStoryFriendButtonClickedEvent(Lbei;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Lcom/snapchat/android/model/StoryCollection;

.field final synthetic c:Lbei;

.field final synthetic d:Lcom/snapchat/android/fragments/stories/StoriesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/StoryCollection;Lbei;)V
    .locals 0

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->d:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iput-object p6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->a:Lcom/snapchat/android/model/Friend;

    iput-object p7, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->b:Lcom/snapchat/android/model/StoryCollection;

    iput-object p8, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->c:Lbei;

    invoke-direct {p0, p2, p3, p4, p5}, Lara;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 1363
    return-void
.end method

.method protected final b()V
    .locals 6

    .prologue
    .line 1367
    new-instance v0, Lql;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lql;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lql;->execute()V

    .line 1368
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->d:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->o(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lapl;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->c:Lbei;

    iget-boolean v1, v1, Lbei;->isInRecentUpdates:Z

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->d()Lakl;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lmg;

    invoke-direct {v3}, Lmg;-><init>()V

    invoke-static {v1}, Lapl;->b(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lmg;->viewLocation:Ljava/lang/Long;

    invoke-static {v2}, Lapl;->c(Lakl;)Lmj;

    move-result-object v1

    iput-object v1, v3, Lmg;->storyType:Lmj;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lmg;->posterId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LOCAL"

    iput-object v0, v3, Lmg;->geoFence:Ljava/lang/String;

    :cond_0
    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->d:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;->a:Lcom/snapchat/android/model/Friend;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;Lcom/snapchat/android/model/Friend;)V

    .line 1370
    return-void
.end method
