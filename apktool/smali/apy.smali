.class public final Lapy;
.super Laqb;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/SnapchatActivity;

.field private b:I

.field private final c:Lcom/snapchat/android/analytics/RegistrationAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a()Lcom/snapchat/android/analytics/RegistrationAnalytics;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lapy;-><init>(Landroid/content/Context;ILcom/snapchat/android/analytics/RegistrationAnalytics;)V

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/snapchat/android/analytics/RegistrationAnalytics;)V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    check-cast p1, Lcom/snapchat/android/SnapchatActivity;

    iput-object p1, p0, Lapy;->a:Lcom/snapchat/android/SnapchatActivity;

    .line 31
    iput p2, p0, Lapy;->b:I

    .line 32
    iput-object p3, p0, Lapy;->c:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    .line 33
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    invoke-virtual {v0}, Lajv;->w()V

    .line 39
    iget-object v0, p0, Lapy;->a:Lcom/snapchat/android/SnapchatActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 40
    iget v1, p0, Lapy;->b:I

    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 41
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->c(Z)V

    .line 42
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->c(Z)V

    .line 48
    return-void
.end method
