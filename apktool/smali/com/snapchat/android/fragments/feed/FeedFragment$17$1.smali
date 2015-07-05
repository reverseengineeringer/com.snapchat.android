.class final Lcom/snapchat/android/fragments/feed/FeedFragment$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/feed/FeedFragment$17;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/feed/FeedFragment$17;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/feed/FeedFragment$17;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$17$1;->a:Lcom/snapchat/android/fragments/feed/FeedFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$17$1;->a:Lcom/snapchat/android/fragments/feed/FeedFragment$17;

    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedFragment$17;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 302
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$17$1;->a:Lcom/snapchat/android/fragments/feed/FeedFragment$17;

    iget-object v1, v1, Lcom/snapchat/android/fragments/feed/FeedFragment$17;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->e(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 304
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$17$1;->a:Lcom/snapchat/android/fragments/feed/FeedFragment$17;

    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedFragment$17;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->f(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lagd;

    move-result-object v0

    invoke-virtual {v0}, Lagd;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$17$1;->a:Lcom/snapchat/android/fragments/feed/FeedFragment$17;

    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedFragment$17;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->g(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lbgr;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$17$1;->a:Lcom/snapchat/android/fragments/feed/FeedFragment$17;

    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedFragment$17;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->g(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lbgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    goto :goto_0
.end method
