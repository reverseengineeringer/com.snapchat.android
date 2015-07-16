.class final Lcom/snapchat/android/fragments/chat/ChatFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 3171
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$b;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;B)V
    .locals 0

    .prologue
    .line 3171
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$b;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 3195
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 3175
    if-nez p2, :cond_4

    .line 3176
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$b;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setIsActive(Z)V

    .line 3177
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$b;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v1

    .line 3178
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$b;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v2

    .line 3179
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$b;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 3180
    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$b;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 3182
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$b;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lze;

    invoke-static {v0, v1}, Lze;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$b;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lze;

    move-result-object v0

    invoke-virtual {v0}, Lze;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$b;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v0

    invoke-static {v0}, Lbgd;->a(Landroid/widget/ListView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$b;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v0

    invoke-static {v0}, Lbgd;->b(Landroid/widget/ListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3186
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$b;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->A(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 3187
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$b;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lze;

    move-result-object v0

    invoke-virtual {v0}, Lze;->a()V

    .line 3192
    :cond_2
    :goto_1
    return-void

    .line 3180
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 3190
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$b;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->setIsActive(Z)V

    goto :goto_1
.end method
