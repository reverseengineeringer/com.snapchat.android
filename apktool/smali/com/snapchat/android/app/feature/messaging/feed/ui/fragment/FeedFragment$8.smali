.class final Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V
    .locals 0

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$8;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$8;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->p(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 1068
    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$8;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->q(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;)V

    .line 1070
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$8;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->r(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lnx;

    move-result-object v0

    const-string v1, "feed"

    const-string v2, "pull_to_refresh"

    invoke-virtual {v0, v1, v2}, Lnx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$8;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->s(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Laph;

    move-result-object v0

    invoke-virtual {v0}, Laph;->f()I

    .line 1073
    :cond_0
    return-void
.end method
