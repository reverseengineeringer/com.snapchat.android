.class final Lcom/snapchat/android/ui/here/LockToStreamView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/here/LockToStreamView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/ui/here/LockToStreamView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/LockToStreamView;Z)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/snapchat/android/ui/here/LockToStreamView$1;->b:Lcom/snapchat/android/ui/here/LockToStreamView;

    iput-boolean p2, p0, Lcom/snapchat/android/ui/here/LockToStreamView$1;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView$1;->a:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView$1;->b:Lcom/snapchat/android/ui/here/LockToStreamView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->setVisibility(I)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView$1;->b:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(Lcom/snapchat/android/ui/here/LockToStreamView;)Z

    .line 258
    return-void
.end method
