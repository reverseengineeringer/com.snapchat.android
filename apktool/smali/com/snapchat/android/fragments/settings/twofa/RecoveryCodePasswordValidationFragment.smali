.class public Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;
.super Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;
.source "SourceFile"


# instance fields
.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Laol;

.field private h:Laok;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;-><init>(Laol;)V

    .line 39
    return-void
.end method

.method private constructor <init>(Laol;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->f:Ljava/util/Set;

    .line 46
    new-instance v0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->h:Laok;

    .line 43
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->g:Laol;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;Lamy;)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    .line 32
    iget-boolean v0, p1, Lamy;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const v2, 0x7f0c01c2

    invoke-static {v1, v2, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lamy;->a:Lbkj;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "recovery_code_succeed_key"

    invoke-virtual {v0}, Lbkj;->a()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "recovery_code_message_key"

    invoke-virtual {v0}, Lbkj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdw;

    new-instance v2, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;-><init>()V

    const-class v3, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;Lana;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 32
    iget-boolean v0, p1, Lana;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->f:Ljava/util/Set;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->g:Laol;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Laol;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lana;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;)Laol;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->g:Laol;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->c:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 65
    const v0, 0x7f0a0373

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c02c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    const v0, 0x7f0a0374

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c02a9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->b:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onPause()V

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->g:Laol;

    const/16 v1, 0x3f8

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->h:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->b(ILaok;)V

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->g:Laol;

    const/16 v1, 0x3ff

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->h:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->b(ILaok;)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->g:Laol;

    const/16 v1, 0x3f8

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->h:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->a(ILaok;)V

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->g:Laol;

    const/16 v1, 0x3ff

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->h:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->a(ILaok;)V

    .line 90
    return-void
.end method
