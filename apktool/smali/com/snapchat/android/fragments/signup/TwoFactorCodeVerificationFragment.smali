.class public Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;
.super Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;
.source "SourceFile"


# instance fields
.field public f:Laze;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Laph;

.field private l:Lcom/snapchat/android/api2/LoginTask$a;

.field private final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lapg;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Laph;->a()Laph;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;-><init>(Ljavax/inject/Provider;Laph;)V

    .line 147
    return-void
.end method

.method private constructor <init>(Ljavax/inject/Provider;Laph;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Laph;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$1;-><init>(Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->l:Lcom/snapchat/android/api2/LoginTask$a;

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->m:Ljava/util/Set;

    .line 105
    new-instance v0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$2;-><init>(Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->n:Lapg;

    .line 152
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;)V

    .line 153
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->j:Ljavax/inject/Provider;

    .line 154
    iput-object p2, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->k:Laph;

    .line 155
    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;-><init>()V

    .line 136
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 137
    const-string v2, "phone_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "login_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "pre_auth_token"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 141
    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->m:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final i()V
    .locals 7

    .prologue
    .line 208
    new-instance v0, Lcom/snapchat/android/api2/LoginTask;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->l:Lcom/snapchat/android/api2/LoginTask$a;

    iget-object v4, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->f:Laze;

    iget-object v6, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->j:Ljavax/inject/Provider;

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/api2/LoginTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/LoginTask$a;Ljava/lang/String;Laze;Ljavax/inject/Provider;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/LoginTask;->execute()V

    .line 210
    return-void
.end method

.method public final m()V
    .locals 8

    .prologue
    .line 214
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->m:Ljava/util/Set;

    invoke-static {}, Laph;->a()Laph;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requestTwoFactorCode"

    iget-object v4, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "op_code"

    const/16 v7, 0x3fe

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "action"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "pre_auth_token"

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2, v5}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x0

    const v2, 0x7f0c02c5

    invoke-static {v1, v2, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->g:Ljava/lang/String;

    .line 163
    const-string v1, "login_name"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->h:Ljava/lang/String;

    .line 164
    const-string v1, "pre_auth_token"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->i:Ljava/lang/String;

    .line 166
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 170
    const v0, 0x7f0400c9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->mFragmentLayout:Landroid/view/View;

    .line 171
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->o()V

    .line 172
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->p()V

    .line 173
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->q()V

    .line 174
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->r()V

    .line 175
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->t()V

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 187
    invoke-super {p0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->onPause()V

    .line 188
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    const/16 v1, 0x3fe

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->n:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->b(ILapg;)V

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 191
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 181
    invoke-super {p0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->onResume()V

    .line 182
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    const/16 v1, 0x3fe

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->n:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 183
    return-void
.end method

.method public onVerificationCodeReceivedEvent(Lbfs;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->onVerificationCodeReceivedEvent(Lbfs;)V

    .line 231
    return-void
.end method
