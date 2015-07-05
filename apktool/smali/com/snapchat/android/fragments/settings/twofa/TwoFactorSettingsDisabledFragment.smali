.class public Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/Button;

.field private final c:Lajx;

.field private final d:Latr;

.field private final e:Laol;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

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

.field private i:Laok;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    new-instance v1, Latr;

    invoke-direct {v1}, Latr;-><init>()V

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;-><init>(Laol;Latr;Lajx;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Laol;Latr;Lajx;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation build Lcf;
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->h:Ljava/util/Set;

    .line 50
    new-instance v0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->i:Laok;

    .line 73
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->e:Laol;

    .line 74
    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->d:Latr;

    .line 75
    iput-object p3, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->c:Lajx;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->h:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;Lanc$c;)V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->b:Landroid/widget/Button;

    const v1, 0x7f0c01ec

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-boolean v0, p1, Lanc$c;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdw;

    new-instance v2, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;-><init>()V

    invoke-direct {v1, v2}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    iget-object v3, p1, Lanc$c;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)Latr;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->d:Latr;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)Laol;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->e:Laol;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i()V
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdw;

    new-instance v2, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAMobileSettingFragment;-><init>()V

    invoke-direct {v1, v2}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->tag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .prologue
    const v6, 0x7f0c02ac

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 80
    const v0, 0x7f0400be

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->mFragmentLayout:Landroid/view/View;

    .line 82
    const v0, 0x7f0a03ec

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x7f0a03ef

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->f:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0a03f0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->g:Landroid/widget/TextView;

    .line 92
    invoke-static {}, Lajx;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->f:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    const v4, 0x7f0c02c6

    invoke-static {v5, v4, v2}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v5, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :goto_0
    const v0, 0x7f0a03f1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->b:Landroid/widget/Button;

    .line 111
    const v0, 0x7f0a03f2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->a:Landroid/widget/ProgressBar;

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->b:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->f:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lajx;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v5, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->g:Landroid/widget/TextView;

    const v1, 0x7f0c02a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v4, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->g:Landroid/widget/TextView;

    new-instance v5, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$3;

    invoke-direct {v5, p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    array-length v6, v1

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_2

    aget-object v7, v1, v2

    invoke-interface {v0, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v0, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v0, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    new-instance v10, Lcom/snapchat/android/ui/LinkTextViewUtils$CustomURLSpan;

    invoke-virtual {v7}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7, v5}, Lcom/snapchat/android/ui/LinkTextViewUtils$CustomURLSpan;-><init>(Ljava/lang/String;Lcom/snapchat/android/ui/LinkTextViewUtils$a;)V

    invoke-interface {v0, v10, v8, v9, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 144
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->e:Laol;

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->i:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->b(ILaok;)V

    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 147
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->e:Laol;

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->i:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->a(ILaok;)V

    .line 140
    return-void
.end method
