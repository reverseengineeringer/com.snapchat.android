.class public Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Laph;

.field private d:Lapg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;-><init>(Laph;)V

    .line 56
    return-void
.end method

.method private constructor <init>(Laph;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation build Lcf;
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->b:Ljava/util/Set;

    .line 41
    new-instance v0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->d:Lapg;

    .line 62
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->c:Laph;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->b:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;Lanz$c;)V
    .locals 4

    .prologue
    .line 34
    iget-boolean v0, p1, Lanz$c;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;-><init>()V

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    iget-object v3, p1, Lanz$c;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->a:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;)Laph;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->c:Laph;

    return-object v0
.end method


# virtual methods
.method public final g()Z
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->tag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 67
    const v0, 0x7f0400c2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->mFragmentLayout:Landroid/view/View;

    .line 68
    const v0, 0x7f0a03f1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03f5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, 0x7f0a03f6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03f7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->a:Landroid/widget/CheckBox;

    new-instance v1, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->c:Laph;

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->d:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->b(ILapg;)V

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 137
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->c:Laph;

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->d:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 130
    return-void
.end method
