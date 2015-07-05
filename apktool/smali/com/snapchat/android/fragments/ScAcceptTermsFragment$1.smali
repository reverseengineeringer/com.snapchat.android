.class final Lcom/snapchat/android/fragments/ScAcceptTermsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$1;->a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$1;->a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->a(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$1;->a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->b(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$1;->a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->c(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$1;->a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->d(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
