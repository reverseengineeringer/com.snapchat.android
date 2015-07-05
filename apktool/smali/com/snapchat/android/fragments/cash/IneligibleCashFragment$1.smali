.class final Lcom/snapchat/android/fragments/cash/IneligibleCashFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/IneligibleCashFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/IneligibleCashFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/IneligibleCashFragment;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/IneligibleCashFragment$1;->a:Lcom/snapchat/android/fragments/cash/IneligibleCashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/IneligibleCashFragment$1;->a:Lcom/snapchat/android/fragments/cash/IneligibleCashFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/IneligibleCashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 21
    return-void
.end method
