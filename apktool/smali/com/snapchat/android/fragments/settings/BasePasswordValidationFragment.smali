.class public Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/EditText;

.field public b:Landroid/widget/Button;

.field public c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field protected e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lawf;->f(Landroid/content/Context;)V

    .line 57
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 63
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->J()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 36
    const v0, 0x7f04009b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->mFragmentLayout:Landroid/view/View;

    .line 37
    const v0, 0x7f0a0370

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0377

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Lauh;->a(Landroid/view/View;)V

    const v0, 0x7f0a0378

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->c:Landroid/view/View;

    const v0, 0x7f0a0375

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->d:Landroid/view/View;

    const v0, 0x7f0a0376

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->d:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0374

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 38
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 44
    return-void
.end method
