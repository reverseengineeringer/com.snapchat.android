.class final Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbvs;


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
    .line 495
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$2;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$2;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->j(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 504
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 499
    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$2;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v2}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->i(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v3

    invoke-virtual {v2, v1, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
