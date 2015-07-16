.class final Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Larn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;-><init>(Laph;Lvq;Lavn;Ljavax/inject/Provider;Lcom/snapchat/android/controller/countdown/SnapCountdownController;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lnx;Lcom/snapchat/android/analytics/NetworkAnalytics;Lbbb;Lbhk;Lakr;)V
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
    .line 253
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$1;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Laka;)V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$1;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p1}, Laka;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzi;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 259
    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$1;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$1;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-virtual {v2}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;Lvp;I)V

    goto :goto_0
.end method
