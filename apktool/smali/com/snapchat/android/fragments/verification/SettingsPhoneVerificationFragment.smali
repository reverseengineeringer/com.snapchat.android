.class public Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;
.super Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lbbm;

.field private p:Landroid/widget/Button;

.field private q:Lajx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;-><init>()V

    .line 41
    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->q:Lajx;

    .line 45
    invoke-static {}, Lajx;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lajx;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->n:Z

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lbbm;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->b:Lbbm;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected final a(Lbkr;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method protected final i()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const v0, 0x7f04007a

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->mFragmentLayout:Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->q()V

    .line 70
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->p()V

    .line 71
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->u()V

    .line 72
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->n()V

    .line 73
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->o()V

    .line 75
    invoke-static {}, Lajx;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const v0, 0x7f0a0283

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_0
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment$1;-><init>(Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f0a0281

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 88
    invoke-static {}, Lajx;->ag()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 89
    new-instance v1, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment$2;-><init>(Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    invoke-static {}, Lajx;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-static {}, Lajx;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lajx;->aF()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lavh;->f(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onPause()V

    .line 57
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->mFragmentLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public onVerificationCodeReceivedEvent(Lbet;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onVerificationCodeReceivedEvent(Lbet;)V

    .line 192
    return-void
.end method

.method protected final q()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q()V

    .line 112
    const v0, 0x7f0a0284

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->p:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->p:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment$3;-><init>(Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method protected final t()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t()V

    .line 147
    return-void
.end method

.method protected final v()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 154
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->n:Z

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->g:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->j:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcm;

    invoke-direct {v1}, Lbcm;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Lajx;->aF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    const v0, 0x7f0c02ce

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 169
    invoke-static {v3}, Lajx;->p(Z)V

    .line 172
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->b:Lbbm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->b:Lbbm;

    iget-object v0, v0, Lbbm;->mOnSuccessTask:Lot;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->b:Lbbm;

    iget-object v0, v0, Lbbm;->mOnSuccessTask:Lot;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lot;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const v0, 0x7f0c00ca

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    goto :goto_0
.end method

.method protected final x()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method
