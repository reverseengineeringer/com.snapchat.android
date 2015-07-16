.class public Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$c;,
        Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$b;,
        Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$a;
    }
.end annotation


# instance fields
.field public a:Lyj;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Lyn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final c:Lbam;

.field private final d:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

.field private final e:Lbal;

.field private final f:Lakr;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Lbam;->a()Lbam;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    move-result-object v1

    invoke-static {}, Lbal;->a()Lbal;

    move-result-object v2

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;-><init>(Lbam;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Lbal;Lakr;)V

    .line 76
    return-void
.end method

.method private constructor <init>(Lbam;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Lbal;Lakr;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 83
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    .line 84
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c:Lbam;

    .line 85
    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    .line 86
    iput-object p3, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->e:Lbal;

    .line 87
    iput-object p4, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->f:Lakr;

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)Lakr;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->f:Lakr;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)Lbam;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c:Lbam;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)Lbal;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->e:Lbal;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7f0a01a3

    const/4 v8, 0x1

    const v7, 0x7f0400af

    const/4 v6, 0x0

    .line 92
    const v0, 0x7f04004b

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->mFragmentLayout:Landroid/view/View;

    .line 93
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const v0, 0x7f0a0067

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01a2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v5}, Lbal;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v1

    iget-object v1, v1, Lbgr;->mProxyEndpoint:Lajz;

    iget-object v1, v1, Lajz;->mBaseUrl:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;

    invoke-direct {v2, p0, v1, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01a9

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a01a8

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c:Lbam;

    invoke-virtual {v4}, Lbam;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;

    invoke-direct {v4, p0, v3, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01ab

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a01aa

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c:Lbam;

    invoke-virtual {v3}, Lbam;->d()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c:Lbam;

    invoke-virtual {v3}, Lbam;->d()I

    move-result v3

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;

    invoke-direct {v3, p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01ad

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v2, 0x7f0a01ac

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    invoke-static {}, Lbal;->d()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$17;

    invoke-direct {v4, p0, v3}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$17;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v3, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$18;

    invoke-direct {v3, p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$18;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01ae

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$23;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$23;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01c3

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c:Lbam;

    invoke-virtual {v2}, Lbam;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$21;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$21;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, v9}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22;

    invoke-direct {v3, p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01a4

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-static {}, Lbal;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;

    invoke-direct {v2, p0, v5, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/content/SharedPreferences;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, v9}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$26;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$26;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Default (phone, no captcha)"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Only captcha"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Phone and captcha"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Neither phone nor captcha"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v7, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v0, 0x7f0a01a5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->REGISTRATION_TESTING_ENDPOINT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0a01b0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_UPGRADE_PROMPT_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lava;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$27;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$27;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f0a01af

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$28;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$28;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01b2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_FAKE_FRIENDMOJI_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lava;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$29;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$29;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f0a01b1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$30;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$30;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01b4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "let server decide"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "treatment 1"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "treatment 2"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "treatment 3"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->REGISTRATION_CONTACTBOOK_EXPERIMENT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lava;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0a01b6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_ADD_FRIENDS_FROM_SCREENSHOT_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lava;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f0a01b5

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01b8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a01b9

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$5;

    invoke-direct {v2, p0, v0, v5}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/TextView;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_RELEASE_DELAY_TIMER:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x258

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    const v0, 0x7f0a01bb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$6;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01ba

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$7;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01bc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$8;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01bd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01be

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$10;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$10;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01bf

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$11;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$11;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01c0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$13;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$13;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01c1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$14;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$14;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01a7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c:Lbam;

    invoke-virtual {v1}, Lbam;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$15;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$15;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f0a01a6

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$16;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$16;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 93
    :cond_1
    const-string v3, ""

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x3

    goto/16 :goto_1

    :cond_3
    move-object v3, v4

    goto/16 :goto_0
.end method
