.class public Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$9;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/EditText;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/view/View;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/view/View;

.field protected f:Landroid/widget/EditText;

.field protected g:Landroid/view/View;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/Button;

.field protected j:Landroid/view/View;

.field protected k:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

.field private final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Laph;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:I

.field private t:Lapg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;-><init>(Laph;)V

    .line 96
    return-void
.end method

.method private constructor <init>(Laph;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 59
    sget-object v0, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->UNKNOWN:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->k:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->l:Ljava/util/Set;

    .line 73
    new-instance v0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->t:Lapg;

    .line 91
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->m:Laph;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->l:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;Lanq;)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    .line 46
    iget-boolean v0, p1, Lanq;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;-><init>()V

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lanq;->a:Lblk;

    invoke-virtual {v0}, Lblk;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0c0212

    invoke-static {v3, v4, v2}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;->a(Ljava/lang/String;)Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;

    move-result-object v2

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->f:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lanq;->a:Lblk;

    invoke-virtual {v0}, Lblk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 310
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->m()V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)Laph;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->m:Laph;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->h:Landroid/widget/TextView;

    const v1, 0x7f0c019d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 269
    sget-object v0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$9;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->k:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->i()V

    .line 271
    return-void

    .line 269
    :pswitch_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->o:Ljava/lang/String;

    iget v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->r:I

    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->p:Ljava/lang/String;

    iget v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->s:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected final a(Lanw;)V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p1, Lanw;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p1, Lanw;->b:Lanw$b;

    iget-object v0, v0, Lanw$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->fromValue(Ljava/lang/String;)Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->e:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->k:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    .line 348
    sget-object v1, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->TOO_WEAK:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->UNKNOWN:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    if-ne v0, v1, :cond_1

    .line 349
    :cond_0
    iget-object v0, p1, Lanw;->b:Lanw$b;

    iget-object v0, v0, Lanw$b;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a(Ljava/lang/String;)V

    .line 353
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->m()V

    .line 354
    return-void
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lawf;->f(Landroid/content/Context;)V

    .line 124
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 129
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->J()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 130
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->tag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x1

    .line 380
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g()Z

    move-result v0

    goto :goto_0
.end method

.method protected final i()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->k:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    sget-object v1, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->UNKNOWN:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->k:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    sget-object v1, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->TOO_WEAK:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    if-eq v0, v1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->i:Landroid/widget/Button;

    const v1, 0x7f0c01f8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 331
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->i:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 332
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->i:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    const v0, 0x7f040026

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->mFragmentLayout:Landroid/view/View;

    .line 101
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01a1

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/snapchat/android/util/emoji/Emoji;->CONFUSED_FACE:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v3}, Lbbj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->n:Ljava/lang/String;

    const v1, 0x7f0c019f

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/snapchat/android/util/emoji/Emoji;->OK_HAND_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v3}, Lbbj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->o:Ljava/lang/String;

    const v1, 0x7f0c01a0

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/snapchat/android/util/emoji/Emoji;->SMILING_FACE_WITH_SUNGLASSES:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v3}, Lbbj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->p:Ljava/lang/String;

    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->q:I

    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->r:I

    const v1, 0x7f08003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->s:I

    const v0, 0x7f0a00fe

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a:Landroid/widget/EditText;

    const v0, 0x7f0a0100

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->b:Landroid/widget/TextView;

    const v0, 0x7f0a00ff

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c:Landroid/view/View;

    const v0, 0x7f0a0102

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0101

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->e:Landroid/view/View;

    const v0, 0x7f0a0103

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->f:Landroid/widget/EditText;

    const v0, 0x7f0a0104

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->g:Landroid/view/View;

    const v0, 0x7f0a0105

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->h:Landroid/widget/TextView;

    const v0, 0x7f0a0106

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->i:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Lauh;->a(Landroid/view/View;)V

    const v0, 0x7f0a0107

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->j:Landroid/view/View;

    .line 102
    const v0, 0x7f0a00fa

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$6;-><init>(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->g:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$7;-><init>(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->i:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$8;-><init>(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->m:Laph;

    const/16 v1, 0x3fa

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->t:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->b(ILapg;)V

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->m:Laph;

    const/16 v1, 0x3f9

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->t:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->b(ILapg;)V

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 138
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->m:Laph;

    const/16 v1, 0x3fa

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->t:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->m:Laph;

    const/16 v1, 0x3f9

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->t:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 111
    return-void
.end method
