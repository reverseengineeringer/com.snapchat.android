.class public Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;
.super Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$a;
    }
.end annotation


# instance fields
.field a:Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected final a(Lbls;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e()V

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 90
    :cond_0
    return-void
.end method

.method protected final f()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f()V

    .line 105
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->mFragmentLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 106
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method protected final i()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->a:Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->a:Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$a;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$a;->r()V

    .line 43
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->k:Landroid/widget/Button;

    const v2, 0x7f02012c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 64
    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onResume()V

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 77
    invoke-static {}, Lakr;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->i()V

    .line 80
    :cond_0
    return-void
.end method

.method public onVerificationCodeReceivedEvent(Lbfs;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onVerificationCodeReceivedEvent(Lbfs;)V

    .line 113
    return-void
.end method
