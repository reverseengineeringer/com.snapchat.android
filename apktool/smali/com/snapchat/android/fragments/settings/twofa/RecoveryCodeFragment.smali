.class public Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/Button;

.field protected b:Landroid/widget/ProgressBar;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Laph;

.field private e:Lapg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;-><init>(Laph;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Laph;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation build Lcf;
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->c:Ljava/util/Set;

    .line 45
    new-instance v0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->e:Lapg;

    .line 77
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->d:Laph;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->c:Ljava/util/Set;

    return-object v0
.end method

.method private a(Lblk;)V
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p1}, Lblk;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lblk;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    const v3, 0x7f0c02ba

    invoke-static {v2, v3, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c02b9

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c02bf

    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-virtual {p1}, Lblk;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;Lblk;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->a(Lblk;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;)Laph;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->d:Laph;

    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 4

    .prologue
    .line 119
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 120
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    const-string v1, "recovery_code_message_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Lblk;

    invoke-direct {v1}, Lblk;-><init>()V

    const-string v2, "recovery_code_succeed_key"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lblk;->a(Ljava/lang/Boolean;)Lblk;

    move-result-object v1

    const-string v2, "recovery_code_message_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lblk;->a(Ljava/lang/String;)Lblk;

    move-result-object v1

    .line 125
    const-string v2, "recovery_code_succeed_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 126
    const-string v2, "recovery_code_message_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, v1}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->a(Lblk;)V

    .line 129
    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 153
    const-class v0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f0400c6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->mFragmentLayout:Landroid/view/View;

    .line 84
    const v0, 0x7f0a03ff

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v0, 0x7f0a0403

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->a:Landroid/widget/Button;

    .line 92
    const v0, 0x7f0a0404

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->b:Landroid/widget/ProgressBar;

    .line 93
    const v0, 0x7f0a0402

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c02bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->a:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->d:Laph;

    const/16 v1, 0x3ff

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->e:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->b(ILapg;)V

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 136
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->d:Laph;

    const/16 v1, 0x3ff

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->e:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 115
    return-void
.end method
