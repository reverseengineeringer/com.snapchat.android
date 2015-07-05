.class final Lcom/snapchat/android/fragments/ScAcceptTermsFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->m()V
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
    .line 415
    iput-object p1, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$5;->a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$5;->a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->f(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)Laol;

    move-result-object v0

    invoke-virtual {v0}, Laol;->e()I

    .line 423
    invoke-static {}, Lajx;->n()V

    .line 425
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$5;->a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 428
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 429
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 430
    return-void
.end method
