.class final Lcom/snapchat/android/fragments/feed/FeedFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbur;


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
    .line 420
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$5;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$5;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->r(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$5;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->q(Lcom/snapchat/android/fragments/feed/FeedFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 428
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$5;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lbfd;->a(Landroid/widget/ListView;)Z

    move-result v0

    return v0
.end method
