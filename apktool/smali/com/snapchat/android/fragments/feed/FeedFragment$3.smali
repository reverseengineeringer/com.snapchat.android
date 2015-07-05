.class final Lcom/snapchat/android/fragments/feed/FeedFragment$3;
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
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/fragments/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/feed/FeedFragment;Z)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$3;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    iput-boolean p2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$3;->a:Z

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$3;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->m(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lbgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$3;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->m(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lbgr;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    goto :goto_0
.end method
