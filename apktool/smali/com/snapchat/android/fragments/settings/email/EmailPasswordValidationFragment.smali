.class public Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;
.super Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Laok;

.field private final i:Laol;


# direct methods
.method private constructor <init>(Laol;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->g:Ljava/util/Set;

    .line 40
    new-instance v0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->h:Laok;

    .line 64
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->i:Laol;

    .line 65
    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->f:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;-><init>(Laol;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;Lams;)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    .line 36
    iget-boolean v0, p1, Lams;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const v2, 0x7f0c01c2

    invoke-static {v1, v2, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lams;->a:Lbkl;

    invoke-virtual {v0}, Lbkl;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdw;

    new-instance v2, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;-><init>()V

    invoke-direct {v1, v2}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "change_email_message_key"

    invoke-virtual {v0}, Lbkl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "change_email_key"

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdw;

    new-instance v2, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;-><init>()V

    const-class v3, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-virtual {v4}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->tag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;Lana;)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 36
    iget-boolean v0, p1, Lana;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->g:Ljava/util/Set;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->i:Laol;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laol;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lana;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Laol;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->i:Laol;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->c:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 72
    const v0, 0x7f0a0373

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c0242

    invoke-static {v4, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v0, 0x7f0a0374

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c011e

    invoke-static {v4, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->b:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onPause()V

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->i:Laol;

    const/16 v1, 0x3f8

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->h:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->b(ILaok;)V

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->i:Laol;

    const/16 v1, 0x3f7

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->h:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->b(ILaok;)V

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 104
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->i:Laol;

    const/16 v1, 0x3f8

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->h:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->a(ILaok;)V

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->i:Laol;

    const/16 v1, 0x3f7

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->h:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->a(ILaok;)V

    .line 96
    return-void
.end method
