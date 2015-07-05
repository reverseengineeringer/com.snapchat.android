.class final Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$1;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$1;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->a(Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;)Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$1;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->a(Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;)Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$a;->b()V

    .line 40
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$1;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->b(Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;)Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$a;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$1;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 43
    return-void
.end method
