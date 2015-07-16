.class final Lcom/snapchat/android/fragments/chat/ChatFragment$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$29;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 1197
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$29;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->m(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 1199
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$29;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c()V

    .line 1202
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$29$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$29$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$29;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1210
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
