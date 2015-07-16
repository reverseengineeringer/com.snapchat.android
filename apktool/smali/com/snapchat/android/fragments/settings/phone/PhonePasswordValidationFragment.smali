.class public Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;
.super Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;
.source "SourceFile"


# instance fields
.field private final f:Laph;

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

.field private h:Lapg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;-><init>(Laph;)V

    .line 46
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
    .line 49
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->g:Ljava/util/Set;

    .line 33
    new-instance v0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->h:Lapg;

    .line 50
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->f:Laph;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;Lanz$c;)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    .line 29
    iget-boolean v0, p1, Lanz$c;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0c0213

    invoke-static {v3, v4, v2}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;->a(Ljava/lang/String;)Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;

    move-result-object v2

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lanz$c;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Laph;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->f:Laph;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->c:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 56
    const v0, 0x7f0a0372

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c024c

    invoke-static {v4, v2, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v0, 0x7f0a0373

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c0174

    invoke-static {v4, v2, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->b:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onPause()V

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->f:Laph;

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->h:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->b(ILapg;)V

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 88
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->f:Laph;

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->h:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 81
    return-void
.end method
