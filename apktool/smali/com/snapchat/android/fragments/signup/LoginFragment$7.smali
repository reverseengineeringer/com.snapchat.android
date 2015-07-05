.class final Lcom/snapchat/android/fragments/signup/LoginFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/LoginFragment;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/LoginFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$7;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 405
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/snapchat/android/fragments/signup/LoginFragment;->m()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/snapchat/android/fragments/signup/LoginFragment;->n()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 409
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$7;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/LoginFragment;->h(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v1

    .line 410
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$7;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/signup/LoginFragment;->h(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$7;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/signup/LoginFragment;->h(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 412
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 413
    return-void
.end method
