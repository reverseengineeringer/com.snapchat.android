.class public Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;
.super Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$a;
    }
.end annotation


# instance fields
.field public a:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$a;
    .annotation build Lcgc;
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected final a(Lbkr;)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->l(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e()V

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lavh;->g(Landroid/content/Context;)V

    .line 106
    :cond_0
    return-void
.end method

.method protected final f()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f()V

    .line 116
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->mFragmentLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public final g()Z
    .locals 3

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->a:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$a;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->a:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$a;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$a;->b()V

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->a:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$a;

    .line 84
    const-string v0, "CashPhoneVerificationFragment"

    const-string v1, "CASH-LOG: Phone is not verified. Closing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g()Z

    move-result v0

    return v0
.end method

.method public final g_()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method protected final i()V
    .locals 3

    .prologue
    .line 70
    const-string v0, "CashPhoneVerificationFragment"

    const-string v1, "CASH-LOG: Phone is verified successfully. Closing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->b:Z

    .line 72
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->a:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->a:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$a;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$a;->a()V

    .line 75
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->a:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$a;

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 39
    const v0, 0x7f040020

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->mFragmentLayout:Landroid/view/View;

    .line 41
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->q()V

    .line 42
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->p()V

    .line 43
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->u()V

    .line 44
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->n()V

    .line 45
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->o()V

    .line 47
    const v0, 0x7f0a00d8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$1;-><init>(Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-static {}, Lajx;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-static {}, Lajx;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lajx;->aF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lavh;->g(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 95
    return-void
.end method

.method public onVerificationCodeReceivedEvent(Lbet;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onVerificationCodeReceivedEvent(Lbet;)V

    .line 139
    return-void
.end method
