.class public Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lakr;

.field private final m:Laph;

.field private n:Lapg;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    invoke-static {}, Laph;->a()Laph;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;-><init>(Lakr;Laph;)V

    .line 78
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
    .line 71
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->k:Ljava/util/Set;

    .line 80
    new-instance v0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->n:Lapg;

    .line 72
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->l:Lakr;

    .line 73
    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m:Laph;

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->k:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;Lanp;)V
    .locals 4

    .prologue
    .line 49
    iget-boolean v0, p1, Lanp;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lanp;->a:Lblm;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lblm;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lakr;->bk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m()V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;-><init>()V

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m()V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i()V

    invoke-virtual {v0}, Lblm;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;Lanz$c;)V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p1, Lanz$c;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;-><init>()V

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m()V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i()V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    iget-object v3, p1, Lanz$c;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

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

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m()V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Laph;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m:Laph;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    return-object v0
.end method

.method private m()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 246
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {}, Lakr;->G()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lakr;->bj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :goto_1
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private n()Z
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {}, Lakr;->bk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lakr;->bk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {}, Lakr;->G()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lakr;->bj()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 208
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 209
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i()V

    .line 210
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 211
    const-string v1, "change_email_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    const-string v2, "change_email_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const-string v1, "change_email_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 214
    const-string v1, "change_email_message_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a(Ljava/lang/String;)V

    .line 215
    const-string v1, "change_email_message_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 222
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->J()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 223
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->tag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 304
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g()Z

    move-result v0

    goto :goto_0
.end method

.method protected final i()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 267
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 271
    invoke-static {}, Lakr;->bk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lakr;->G()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lakr;->bj()Z

    move-result v0

    if-nez v0, :cond_3

    .line 274
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    const v1, 0x7f0c02d2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 280
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 281
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lawf;->f(Landroid/content/Context;)V

    .line 297
    :cond_1
    :goto_1
    return-void

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    const v1, 0x7f0c01ec

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 287
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 97
    const v0, 0x7f04005b

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->mFragmentLayout:Landroid/view/View;

    .line 98
    new-array v0, v5, [Ljava/lang/Object;

    const v1, 0x7f0c0123

    invoke-static {v2, v1, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/Object;

    const v1, 0x7f0c0126

    invoke-static {v2, v1, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->j:Ljava/lang/String;

    const v0, 0x7f0a0212

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0125

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/snapchat/android/util/emoji/Emoji;->OK_HAND_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v4}, Lbbj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a020b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a020e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0215

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Lauh;->a(Landroid/view/View;)V

    const v0, 0x7f0a0216

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->e:Landroid/view/View;

    const v0, 0x7f0a0214

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Lauh;->a(Landroid/view/View;)V

    const v0, 0x7f0a0210

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->f:Landroid/view/View;

    const v0, 0x7f0a0211

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->f:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a020f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-static {}, Lakr;->bk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-static {}, Lakr;->bk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$6;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m()V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i()V

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 98
    :cond_1
    invoke-static {}, Lakr;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-static {}, Lakr;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 227
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 228
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m:Laph;

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->n:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->b(ILapg;)V

    .line 229
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m:Laph;

    const/16 v1, 0x3f7

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->n:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->b(ILapg;)V

    .line 230
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 231
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 196
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m:Laph;

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->n:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m:Laph;

    const/16 v1, 0x3f7

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->n:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 199
    return-void
.end method
