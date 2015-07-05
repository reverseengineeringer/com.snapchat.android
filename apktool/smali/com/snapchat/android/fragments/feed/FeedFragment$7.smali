.class final Lcom/snapchat/android/fragments/feed/FeedFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 448
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$7;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$7;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->k(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lajv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$7;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->a(Lcom/snapchat/android/fragments/feed/FeedFragment;Lajv;)Lajv;

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$7;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->k(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lajv;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$7;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->f(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lagd;

    move-result-object v0

    invoke-virtual {v0}, Lagd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$7;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$7;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->k(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lajv;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;Lajv;)V

    .line 458
    :cond_1
    return-void
.end method
