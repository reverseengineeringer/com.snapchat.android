.class public Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;
.super Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v0}, Lcom/snapchat/android/ui/window/WindowConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 46
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/RegistrationAnalytics;Lajx;Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;-><init>(Lcom/snapchat/android/analytics/RegistrationAnalytics;Lajx;Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a()Lcom/snapchat/android/analytics/RegistrationAnalytics;

    move-result-object v0

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;-><init>(Lcom/snapchat/android/analytics/RegistrationAnalytics;Lajx;Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected final a(Lbkr;)V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/snapchat/android/LoginAndSignupActivity;->a(Lbkr;)V

    .line 154
    return-void
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final g()Z
    .locals 3

    .prologue
    .line 158
    invoke-static {}, Lajx;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lajx;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    new-instance v0, Lapy;

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    iget v2, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->a:I

    invoke-direct {v0, v1, v2}, Lapy;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lapy;->show()V

    .line 163
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 161
    :cond_1
    new-instance v0, Lapw;

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lapw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lapw;->show()V

    goto :goto_0
.end method

.method protected final i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-static {}, Lajx;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-static {}, Lajx;->s()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;-><init>(Ljava/lang/String;Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    iget v2, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->a:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    const-string v0, "NewUserPhoneVerificationFragment"

    const-string v1, "Attempted to go to CaptchaFragment"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {}, Lajx;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-static {v4}, Lajx;->c(Z)V

    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->a:I

    new-instance v2, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    iget-object v3, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v2, v3}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "NewUserPhoneVerificationFragment"

    const-string v1, "Attempted to go to NewUserAddFriendsFragment"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->n()V

    .line 114
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->BOUNCE_TEAM_SNAPCHAT_CONVERSATION_ONBOARDING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v4}, Lajx;->c(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 80
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->a:I

    .line 82
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 83
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Latj;->a(Landroid/view/View;)V

    .line 85
    invoke-static {}, Lajx;->q()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    new-instance v1, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment$1;-><init>(Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lavh;->f(Landroid/content/Context;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->mFragmentLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 102
    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lku;

    invoke-direct {v0}, Lku;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onResume()V

    .line 66
    invoke-static {}, Lajx;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->i()V

    .line 69
    :cond_0
    return-void
.end method

.method public onVerificationCodeReceivedEvent(Lbet;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onVerificationCodeReceivedEvent(Lbet;)V

    .line 171
    return-void
.end method
