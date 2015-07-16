.class final Lcom/snapchat/android/fragments/chat/ChatFragment$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 3203
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$c;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;B)V
    .locals 0

    .prologue
    .line 3203
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$c;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 3229
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 3207
    if-nez p2, :cond_0

    .line 3209
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$c;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->M(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 3211
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$c;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->t(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lagr;

    move-result-object v0

    invoke-virtual {v0}, Lagr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->z()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$c;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->u(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$c;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3215
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$c;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->N(Lcom/snapchat/android/fragments/chat/ChatFragment;)Layd;

    move-result-object v0

    iget v2, v0, Layd;->mRenderSize:I

    iget v0, v0, Layd;->mMessageCount:I

    if-ge v2, v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 3216
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$c;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->O(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 3224
    :cond_1
    :goto_1
    return-void

    .line 3215
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3218
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$c;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->v(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ltt;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$c;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ltt;->a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    move-result-object v0

    .line 3221
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$c;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V

    goto :goto_1
.end method
