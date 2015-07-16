.class public Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private final a:Laim;

.field private final b:Lauv;

.field private c:Z

.field private d:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Laim;

    invoke-direct {v0}, Laim;-><init>()V

    new-instance v1, Lauv;

    invoke-direct {v1}, Lauv;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;-><init>(Laim;Lauv;)V

    .line 41
    return-void
.end method

.method private constructor <init>(Laim;Lauv;)V
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
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->a:Laim;

    .line 48
    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->b:Lauv;

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

    .line 140
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    new-instance v1, Laim;

    invoke-direct {v1}, Laim;-><init>()V

    .line 142
    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->ALLOWED_GPS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lakr;->aa()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$7;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$7;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v1, v0, v2}, Laim;->a(Landroid/content/Context;Laim$a;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 168
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-static {v3}, Lakr;->i(Z)V

    .line 159
    invoke-static {v4}, Laim;->a(Z)V

    .line 160
    const-string v0, "TOGGLE_SETTING_FILTERS"

    invoke-static {v0, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;Z)V

    .line 161
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c:Z

    goto :goto_0

    .line 164
    :cond_2
    invoke-static {v3}, Laim;->a(Z)V

    .line 165
    const-string v0, "TOGGLE_SETTING_FILTERS"

    invoke-static {v0, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;Z)V

    .line 166
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 53
    const v0, 0x7f040008

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->mFragmentLayout:Landroid/view/View;

    .line 54
    const v0, 0x7f0a0067

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

    const v0, 0x7f0a006e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d:Landroid/widget/CheckBox;

    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d:Landroid/widget/CheckBox;

    invoke-static {}, Lakr;->aa()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Lakr;->ab()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v1, 0x7f0a006a

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0070

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d:Landroid/widget/CheckBox;

    new-instance v2, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$5;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$6;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f0c02df

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lauv;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c026c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lauv;->a(I[Ljava/lang/Object;)Ljava/lang/String;

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
    new-instance v0, Lpw;

    invoke-direct {v0}, Lpw;-><init>()V

    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpw;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    invoke-static {}, Lakr;->aa()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-static {}, Laio;->c()Laio;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    const-string v1, "{}"

    iput-object v1, v0, Laio;->d:Ljava/lang/String;

    iget-object v1, v0, Laio;->a:Laiz;

    iget-object v2, v1, Laiz;->a:Laja;

    invoke-virtual {v2}, Laja;->d()V

    iget-object v1, v1, Laiz;->b:Laix;

    iget-boolean v2, v1, Laix;->g:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Laix;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Laix;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v1, Laix;->d:Laxn;

    invoke-virtual {v1}, Laxn;->b()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Laio;->c:Landroid/location/Location;

    iget-object v0, v0, Laio;->b:Lakk;

    iget-object v0, v0, Lakk;->mPostToStories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdo;

    invoke-direct {v1}, Lbdo;-><init>()V

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
    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a006d

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lakr;->aa()Z

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
