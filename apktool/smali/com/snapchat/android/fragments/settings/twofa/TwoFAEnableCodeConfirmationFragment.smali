.class public Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;
.super Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;
.source "SourceFile"


# instance fields
.field private final f:Lakr;

.field private final g:Laph;

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lapg;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    invoke-static {}, Laph;->a()Laph;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;-><init>(Lakr;Laph;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lakr;Laph;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->h:Ljava/util/Set;

    .line 53
    new-instance v0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->i:Lapg;

    .line 47
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->f:Lakr;

    .line 48
    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->g:Laph;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->h:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->r()V

    return-void
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->t()V

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 6

    .prologue
    .line 123
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->h:Ljava/util/Set;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->g:Laph;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "enableTwoFA"

    iget-object v4, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Laph;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public final m()V
    .locals 6

    .prologue
    .line 133
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->h:Ljava/util/Set;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->g:Laph;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "sendTwoFACode"

    iget-object v4, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Laph;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lakr;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    const v2, 0x7f0c02a9

    invoke-static {v1, v2, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 92
    const v0, 0x7f0400c1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->mFragmentLayout:Landroid/view/View;

    .line 93
    const v0, 0x7f0a03ec

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->o()V

    .line 101
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->p()V

    .line 102
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->q()V

    .line 103
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->r()V

    .line 104
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->t()V

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->onPause()V

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->g:Laph;

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->i:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->b(ILapg;)V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->onResume()V

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->g:Laph;

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->i:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 112
    return-void
.end method

.method public onVerificationCodeReceivedEvent(Lbfs;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->onVerificationCodeReceivedEvent(Lbfs;)V

    .line 152
    return-void
.end method
