.class final Lcom/snapchat/android/fragments/feed/FeedFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/feed/FeedFragment;->m()V
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
    .line 380
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$2;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$2;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->k(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lajv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$2;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->k(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lajv;

    move-result-object v0

    iget-boolean v0, v0, Lajv;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$2;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->l(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lakc;

    move-result-object v0

    invoke-virtual {v0}, Lakc;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$2;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    iget-boolean v0, v0, Lcom/snapchat/android/fragments/feed/FeedFragment;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 385
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$2;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v1, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->a(Lcom/snapchat/android/fragments/feed/FeedFragment;Z)V

    .line 386
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
