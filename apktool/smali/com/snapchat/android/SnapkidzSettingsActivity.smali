.class public Lcom/snapchat/android/SnapkidzSettingsActivity;
.super Lcom/snapchat/android/SnapchatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/SnapkidzSettingsActivity$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/view/View$OnClickListener;

.field private final c:Landroid/view/View$OnClickListener;

.field private final d:Landroid/view/View$OnClickListener;

.field private final e:Landroid/view/View$OnClickListener;

.field private final f:Landroid/view/View$OnClickListener;

.field private g:Lcom/snapchat/android/SnapkidzSettingsActivity;

.field private h:Landroid/content/SharedPreferences;

.field private i:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatActivity;-><init>()V

    .line 23
    new-instance v0, Lcom/snapchat/android/SnapkidzSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/SnapkidzSettingsActivity$1;-><init>(Lcom/snapchat/android/SnapkidzSettingsActivity;)V

    iput-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->a:Landroid/view/View$OnClickListener;

    .line 29
    new-instance v0, Lcom/snapchat/android/SnapkidzSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/SnapkidzSettingsActivity$2;-><init>(Lcom/snapchat/android/SnapkidzSettingsActivity;)V

    iput-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->b:Landroid/view/View$OnClickListener;

    .line 35
    new-instance v0, Lcom/snapchat/android/SnapkidzSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/SnapkidzSettingsActivity$3;-><init>(Lcom/snapchat/android/SnapkidzSettingsActivity;)V

    iput-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->c:Landroid/view/View$OnClickListener;

    .line 42
    new-instance v0, Lcom/snapchat/android/SnapkidzSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/SnapkidzSettingsActivity$4;-><init>(Lcom/snapchat/android/SnapkidzSettingsActivity;)V

    iput-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->d:Landroid/view/View$OnClickListener;

    .line 48
    new-instance v0, Lcom/snapchat/android/SnapkidzSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/SnapkidzSettingsActivity$5;-><init>(Lcom/snapchat/android/SnapkidzSettingsActivity;)V

    iput-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->e:Landroid/view/View$OnClickListener;

    .line 55
    new-instance v0, Lcom/snapchat/android/SnapkidzSettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/SnapkidzSettingsActivity$6;-><init>(Lcom/snapchat/android/SnapkidzSettingsActivity;)V

    iput-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->f:Landroid/view/View$OnClickListener;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/SnapkidzSettingsActivity;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Lajx;->f(Z)V

    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lajv;->a(Landroid/content/Context;)Lajv;

    move-result-object v0

    invoke-virtual {v0}, Lajv;->v()V

    const/16 v0, 0x2c3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/SnapkidzSettingsActivity;Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a0340

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/SnapkidzSettingsActivity;)Lcom/snapchat/android/SnapkidzSettingsActivity;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->g:Lcom/snapchat/android/SnapkidzSettingsActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/SnapkidzSettingsActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->h:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/SnapkidzSettingsActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->i:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f0400ab

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->h:Landroid/content/SharedPreferences;

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->i:Landroid/content/SharedPreferences$Editor;

    .line 72
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03b1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0366

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03b2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0361

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0362

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iput-object p0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity;->g:Lcom/snapchat/android/SnapkidzSettingsActivity;

    .line 74
    return-void
.end method
