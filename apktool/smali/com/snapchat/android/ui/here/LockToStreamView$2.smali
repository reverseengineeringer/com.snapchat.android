.class final Lcom/snapchat/android/ui/here/LockToStreamView$2;
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
.field final synthetic a:Lcom/snapchat/android/ui/here/LockToStreamView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/LockToStreamView;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/snapchat/android/ui/here/LockToStreamView$2;->a:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView$2;->a:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(Lcom/snapchat/android/ui/here/LockToStreamView;)Z

    .line 376
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView$2;->a:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()V

    .line 377
    return-void
.end method
