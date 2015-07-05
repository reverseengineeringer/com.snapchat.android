.class final Laqk$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqk;->a(Lagd$b;Lcom/snapchat/android/model/chat/ChatConversation;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagd$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Laqk;


# direct methods
.method constructor <init>(Laqk;Lagd$b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Laqk$4;->c:Laqk;

    iput-object p2, p0, Laqk$4;->a:Lagd$b;

    iput-object p3, p0, Laqk$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Laqk$4;->a:Lagd$b;

    iget-object v0, v0, Lagd$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Laqk$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    return-void
.end method
