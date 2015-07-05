.class final Lcom/snapchat/android/fragments/feed/FeedFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/feed/FeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$4;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$4;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->k(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lajv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$4;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->a(Lcom/snapchat/android/fragments/feed/FeedFragment;Lajv;)Lajv;

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$4;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->k(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lajv;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$4;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->n(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;)V

    .line 412
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$4;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->o(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lng;

    move-result-object v0

    const-string v1, "feed"

    const-string v2, "pull_to_refresh"

    invoke-virtual {v0, v1, v2}, Lng;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$4;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->p(Lcom/snapchat/android/fragments/feed/FeedFragment;)Laol;

    move-result-object v0

    invoke-virtual {v0}, Laol;->f()I

    .line 415
    :cond_1
    return-void
.end method
