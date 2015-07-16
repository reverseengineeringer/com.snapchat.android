.class final Lcom/snapchat/android/fragments/chat/ChatWithFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatWithFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$4;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 142
    if-eqz p2, :cond_0

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$4;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$4;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->b(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 145
    :cond_0
    return-void
.end method
