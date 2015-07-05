.class public Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private final a:Lahq;

.field private final b:Latx;

.field private c:Z

.field private d:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lahq;

    invoke-direct {v0}, Lahq;-><init>()V

    new-instance v1, Latx;

    invoke-direct {v1}, Latx;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;-><init>(Lahq;Latx;)V

    .line 41
    return-void
.end method

.method private constructor <init>(Lahq;Latx;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->a:Lahq;

    .line 48
    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->b:Latx;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c:Z

    return v0
.end method


# virtual methods
.method public final i()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 159
    new-instance v1, Lahq;

    invoke-direct {v1}, Lahq;-><init>()V

    .line 160
    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->ALLOWED_GPS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lajx;->ab()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$9;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$9;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v1, v0, v2}, Lahq;->a(Landroid/content/Context;Lahq$a;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 186
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-static {v3}, Lajx;->i(Z)V

    .line 177
    invoke-static {v4}, Lahq;->a(Z)V

    .line 178
    const-string v0, "TOGGLE_SETTING_FILTERS"

    invoke-static {v0, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;Z)V

    .line 179
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c:Z

    goto :goto_0

    .line 182
    :cond_2
    invoke-static {v3}, Lahq;->a(Z)V

    .line 183
    const-string v0, "TOGGLE_SETTING_FILTERS"

    invoke-static {v0, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;Z)V

    .line 184
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 53
    const v0, 0x7f040007

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->mFragmentLayout:Landroid/view/View;

    .line 54
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d:Landroid/widget/CheckBox;

    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a0071

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d:Landroid/widget/CheckBox;

    invoke-static {}, Lajx;->ab()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Lajx;->ac()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Lajx;->aa()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v2, 0x7f0a0068

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$3;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a006e

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$4;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0070

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$5;

    invoke-direct {v3, p0, v1}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d:Landroid/widget/CheckBox;

    new-instance v3, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$6;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$6;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$7;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$7;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f0c02e1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Latx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c026c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Latx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 68
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c:Z

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Lpf;

    invoke-direct {v0}, Lpf;-><init>()V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpf;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    invoke-static {}, Lajx;->ab()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-static {}, Lahs;->c()Lahs;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    const-string v1, "{}"

    iput-object v1, v0, Lahs;->d:Ljava/lang/String;

    iget-object v1, v0, Lahs;->a:Laid;

    iget-object v2, v1, Laid;->a:Laie;

    invoke-virtual {v2}, Laie;->d()V

    iget-object v1, v1, Laid;->b:Laib;

    iget-boolean v2, v1, Laib;->g:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Laib;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Laib;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v1, Laib;->d:Lawp;

    invoke-virtual {v1}, Lawp;->b()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lahs;->c:Landroid/location/Location;

    iget-object v0, v0, Lahs;->b:Lajq;

    iget-object v0, v0, Lajq;->mPostToStories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbco;

    invoke-direct {v1}, Lbco;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 77
    :cond_1
    return-void

    .line 73
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 60
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 61
    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a006b

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lajx;->ab()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
