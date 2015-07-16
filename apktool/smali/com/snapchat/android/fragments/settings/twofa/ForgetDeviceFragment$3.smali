.class final Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$3;->a:Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$3;->a:Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$3;->a:Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->b(Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;)Laph;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$3;->a:Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "twoFAForgetDevice"

    invoke-virtual {v1, v2, v3, v5, v5}, Laph;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$3;->a:Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$3;->a:Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$3;->a:Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 106
    return-void
.end method
