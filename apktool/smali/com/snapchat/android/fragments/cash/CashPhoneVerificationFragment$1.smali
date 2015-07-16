.class final Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$1;->a:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$1;->a:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$1;->a:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$1;->a:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 52
    return-void
.end method
