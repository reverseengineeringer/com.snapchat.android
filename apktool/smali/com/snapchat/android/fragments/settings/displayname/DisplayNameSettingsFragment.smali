.class public Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lqg$a;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/Button;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Lakr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;-><init>(Lakr;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Lakr;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->f:Lakr;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->a:Landroid/widget/EditText;

    return-object v0
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

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)Lakr;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->f:Lakr;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/FriendAction;ZLjava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 190
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 194
    :cond_0
    if-eqz p2, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 197
    :cond_1
    invoke-direct {p0, p3}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->a(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 149
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->i()V

    .line 150
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 155
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->J()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 156
    return-void
.end method

.method protected final h_()Z
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method protected final i()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 172
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lakr;->x()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->b:Landroid/widget/Button;

    const v1, 0x7f0c0260

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 181
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 57
    const v0, 0x7f040053

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->mFragmentLayout:Landroid/view/View;

    .line 58
    const v0, 0x7f0a01e7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01ee

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Lauh;->a(Landroid/view/View;)V

    const v0, 0x7f0a01ef

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->c:Landroid/view/View;

    const v0, 0x7f0a01ec

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->d:Landroid/view/View;

    const v0, 0x7f0a01ed

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->d:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01eb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->a:Landroid/widget/EditText;

    invoke-static {}, Lakr;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->a:Landroid/widget/EditText;

    invoke-static {}, Lakr;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->b:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->i()V

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method
