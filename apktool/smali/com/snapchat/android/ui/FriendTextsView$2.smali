.class final Lcom/snapchat/android/ui/FriendTextsView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/FriendTextsView;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/FriendTextsView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/FriendTextsView;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/snapchat/android/ui/FriendTextsView$2;->a:Lcom/snapchat/android/ui/FriendTextsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView$2;->a:Lcom/snapchat/android/ui/FriendTextsView;

    sget-object v1, Lcom/snapchat/android/ui/FriendTextsView$a;->c:Lcom/snapchat/android/ui/FriendTextsView$a;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/FriendTextsView;->a(Lcom/snapchat/android/ui/FriendTextsView;Lcom/snapchat/android/ui/FriendTextsView$a;)V

    .line 156
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView$2;->a:Lcom/snapchat/android/ui/FriendTextsView;

    invoke-static {v0}, Lcom/snapchat/android/ui/FriendTextsView;->a(Lcom/snapchat/android/ui/FriendTextsView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView$2;->a:Lcom/snapchat/android/ui/FriendTextsView;

    sget-object v1, Lcom/snapchat/android/ui/FriendTextsView$a;->a:Lcom/snapchat/android/ui/FriendTextsView$a;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/FriendTextsView;->a(Lcom/snapchat/android/ui/FriendTextsView;Lcom/snapchat/android/ui/FriendTextsView$a;)V

    .line 152
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 147
    return-void
.end method
