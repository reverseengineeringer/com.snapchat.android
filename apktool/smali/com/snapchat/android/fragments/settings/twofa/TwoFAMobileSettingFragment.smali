.class public Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;
.super Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected final a(Lbls;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e()V

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lawf;->g(Landroid/content/Context;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected final f()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f()V

    .line 106
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->mFragmentLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 107
    return-void
.end method

.method protected final i()V
    .locals 5

    .prologue
    .line 69
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;-><init>()V

    const-class v3, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-virtual {v4}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->tag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method protected final m()Lblt$a;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lblt$a;->TWO_FA_TYPE:Lblt$a;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 37
    const v0, 0x7f0400c7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->mFragmentLayout:Landroid/view/View;

    .line 39
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->q()V

    .line 40
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->p()V

    .line 41
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->u()V

    .line 42
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->n()V

    .line 43
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->o()V

    .line 45
    const v0, 0x7f0a0405

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-static {}, Lakr;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->g:Landroid/widget/EditText;

    invoke-static {}, Lakr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lakr;->aE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lawf;->g(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 80
    return-void
.end method

.method public onVerificationCodeReceivedEvent(Lbfs;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onVerificationCodeReceivedEvent(Lbfs;)V

    .line 114
    return-void
.end method
