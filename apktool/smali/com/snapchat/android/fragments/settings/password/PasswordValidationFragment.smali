.class public Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;
.super Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;
.source "SourceFile"


# instance fields
.field private final f:Laol;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;-><init>(Laol;)V

    .line 49
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
    .line 52
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->g:Ljava/util/Set;

    .line 34
    new-instance v0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->h:Laok;

    .line 53
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->f:Laol;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;Lana;)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    .line 28
    iget-boolean v0, p1, Lana;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdw;

    new-instance v2, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;-><init>()V

    const-class v3, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-virtual {v4}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->tag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lana;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;)Laol;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->f:Laol;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->c:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 60
    const v0, 0x7f0a0373

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c0255

    invoke-static {v4, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v0, 0x7f0a0374

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c019c

    invoke-static {v4, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->b:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onPause()V

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->f:Laol;

    const/16 v1, 0x3f8

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->h:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->b(ILaok;)V

    .line 89
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 90
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->f:Laol;

    const/16 v1, 0x3f8

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->h:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->a(ILaok;)V

    .line 83
    return-void
.end method
