.class public Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lajx;

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
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v0

    invoke-static {}, Laol;->a()Laol;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;-><init>(Lajx;Laol;)V

    .line 71
    return-void
.end method

.method private constructor <init>(Lajx;Laol;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->f:Ljava/util/Set;

    .line 42
    new-instance v0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->h:Laok;

    .line 75
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->e:Lajx;

    .line 76
    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->g:Laol;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Lajx;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->e:Lajx;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Laol;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->g:Laol;

    return-object v0
.end method


# virtual methods
.method public final g()Z
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->tag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    const v0, 0x7f040097

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->mFragmentLayout:Landroid/view/View;

    .line 83
    const v0, 0x7f0a036d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->c:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->c:Landroid/widget/TextView;

    invoke-static {}, Lajx;->bn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v0, 0x7f0a036e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d:Landroid/widget/TextView;

    .line 87
    invoke-static {}, Lajx;->bm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lajx;->G()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x0

    const v3, 0x7f0c0122

    invoke-static {v2, v3, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_0
    const v0, 0x7f0a036f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->b:Landroid/view/View;

    const v0, 0x7f0a0370

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->a:Landroid/view/View;

    const v0, 0x7f0a0369

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->b:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->g:Laol;

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->h:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->b(ILaok;)V

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->g:Laol;

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->h:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->a(ILaok;)V

    .line 102
    return-void
.end method
