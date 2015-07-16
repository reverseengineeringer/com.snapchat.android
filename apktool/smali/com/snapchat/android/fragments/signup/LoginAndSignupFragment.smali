.class public Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v4/app/FragmentActivity;

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

.field private final c:Lakr;

.field private final d:Laph;

.field private final e:Lcom/snapchat/android/analytics/RegistrationAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    invoke-static {}, Laph;->a()Laph;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a()Lcom/snapchat/android/analytics/RegistrationAnalytics;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;-><init>(Lakr;Laph;Lcom/snapchat/android/analytics/RegistrationAnalytics;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Lakr;Laph;Lcom/snapchat/android/analytics/RegistrationAnalytics;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->b:Ljava/util/Set;

    .line 40
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->c:Lakr;

    .line 41
    iput-object p2, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->d:Laph;

    .line 42
    iput-object p3, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->e:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 27
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;)Lcom/snapchat/android/ui/window/WindowConfiguration;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;)Lcom/snapchat/android/ui/window/WindowConfiguration;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;)Lcom/snapchat/android/analytics/RegistrationAnalytics;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->e:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onAttach(Landroid/app/Activity;)V

    .line 54
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 77
    const v0, 0x7f040079

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->mFragmentLayout:Landroid/view/View;

    .line 79
    const v0, 0x7f0a0270

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->c(I)Landroid/view/View;

    move-result-object v0

    .line 80
    const v1, 0x7f0a0271

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->c(I)Landroid/view/View;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Lauh;->a(Landroid/view/View;)V

    .line 83
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v1}, Lauh;->a(Landroid/view/View;)V

    .line 85
    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment$1;

    invoke-direct {v2, p0, p2}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment$1;-><init>(Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment$2;-><init>(Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDetach()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    .line 73
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;

    .line 121
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->a(I)V

    .line 123
    :cond_0
    return-void
.end method
