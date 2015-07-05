.class final Lcom/snapchat/android/ui/here/HoldToStreamView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/here/HoldToStreamView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/here/HoldToStreamView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->c(Lcom/snapchat/android/ui/here/HoldToStreamView;)Z

    .line 693
    return-void
.end method
