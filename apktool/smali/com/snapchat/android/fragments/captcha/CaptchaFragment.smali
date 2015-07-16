.class public Lcom/snapchat/android/fragments/captcha/CaptchaFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lago$a;
.implements Lpd$b;
.implements Lpu$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/ProgressBar;

.field private f:I

.field private g:Landroid/widget/GridView;

.field private h:Landroid/widget/RelativeLayout;

.field private final i:Lcom/snapchat/android/analytics/RegistrationAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    new-instance v1, Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v1}, Lcom/snapchat/android/ui/window/WindowConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;-><init>(Ljava/lang/String;Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/snapchat/android/analytics/RegistrationAnalytics;Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p3}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 73
    iput-object p1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->i:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a()Lcom/snapchat/android/analytics/RegistrationAnalytics;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;-><init>(Ljava/lang/String;Lcom/snapchat/android/analytics/RegistrationAnalytics;Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->g:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 158
    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    const v1, 0x7f0c005b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    const v1, 0x7f0a00ab

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 161
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    iget-object v2, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    iget-object v2, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->h:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 166
    const v2, 0x7f0a00ac

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 167
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    new-instance v3, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;-><init>(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 185
    if-lez p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d:Landroid/widget/Button;

    const v1, 0x7f0c01ec

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 189
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 193
    :goto_0
    iput p1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c:I

    .line 194
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->h:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 111
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v1, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$1;

    invoke-direct {v1, p0, v0, p2, p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$1;-><init>(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;Landroid/content/Context;Ljava/util/List;Lago$a;)V

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->g:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->g:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->g:Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->g:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setClickable(Z)V

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->g:Landroid/widget/GridView;

    new-instance v2, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$2;-><init>(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d:Landroid/widget/Button;

    new-instance v2, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;-><init>(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;Lago;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->t_()V

    .line 263
    return-void
.end method

.method public final g()Z
    .locals 3

    .prologue
    .line 103
    new-instance v0, Laqx;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->f:I

    invoke-direct {v0, v1, v2}, Laqx;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Laqx;->show()V

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    const v0, 0x7f040016

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->mFragmentLayout:Landroid/view/View;

    .line 80
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->mFragmentLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 82
    new-instance v0, Lpd;

    invoke-direct {v0, p0}, Lpd;-><init>(Lpd$b;)V

    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpd;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v0, 0x7f0a00ae

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Lauh;->a(Landroid/view/View;)V

    .line 87
    const v0, 0x7f0a00af

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->e:Landroid/widget/ProgressBar;

    .line 88
    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->h:Landroid/widget/RelativeLayout;

    .line 89
    const v0, 0x7f0a00a9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->g:Landroid/widget/GridView;

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->g:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 94
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->f:I

    .line 96
    new-instance v0, Lkq;

    invoke-direct {v0}, Lkq;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public final s_()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    invoke-static {v6}, Lakr;->c(Z)V

    .line 201
    iget v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->b:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c:I

    new-instance v2, Lkr;

    invoke-direct {v2}, Lkr;-><init>()V

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lkr;->attemptCount:Ljava/lang/Long;

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v2, Lkr;->imageCount:Ljava/lang/Long;

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lakp;->a(Landroid/content/Context;)Lakp;

    .line 204
    invoke-static {}, Lakr;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->f:I

    new-instance v2, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SHOULD_BOUNCE_TEAM_SNAPCHAT_CELL_IN_FEED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v6}, Lakr;->c(Z)V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->n()V

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final t_()V
    .locals 7

    .prologue
    const v4, 0x7f0a00aa

    const v2, 0x7f0a00a7

    const/4 v6, 0x4

    const/4 v3, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 239
    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0, v4}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 242
    invoke-virtual {p0, v4}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 243
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c005d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 245
    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->g:Landroid/widget/GridView;

    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setVisibility(I)V

    .line 248
    iget v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->b:I

    .line 249
    iget v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->b:I

    iget v1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c:I

    new-instance v2, Lkp;

    invoke-direct {v2}, Lkp;-><init>()V

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lkp;->attemptCount:Ljava/lang/Long;

    int-to-long v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lkp;->imageCount:Ljava/lang/Long;

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Z)V

    .line 251
    new-instance v0, Lpd;

    invoke-direct {v0, p0}, Lpd;-><init>(Lpd$b;)V

    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpd;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 253
    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a(I)V

    .line 254
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->h:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
