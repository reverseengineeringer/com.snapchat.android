.class final Lcom/snapchat/android/fragments/feed/FeedFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/feed/FeedFragment;->onScrollFeedToTopEvent(Lbdd;)V
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
    .line 1133
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$11;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1136
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$11;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1137
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$11;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1138
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1139
    :cond_0
    return-void
.end method
