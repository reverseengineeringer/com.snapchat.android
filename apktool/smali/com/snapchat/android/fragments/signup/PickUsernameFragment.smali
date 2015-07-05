.class public Lcom/snapchat/android/fragments/signup/PickUsernameFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;,
        Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:I

.field private final D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private E:Laok;

.field private final F:Laol;

.field private final a:Lcom/snapchat/android/analytics/RegistrationAnalytics;

.field private final b:Lajx;

.field private final c:I

.field private final d:I

.field private final e:J

.field private f:Landroid/support/v4/app/FragmentActivity;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/ProgressBar;

.field private i:Lajv;

.field private j:Landroid/widget/Button;

.field private k:I

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ProgressBar;

.field private q:Landroid/widget/HorizontalScrollView;

.field private r:Landroid/widget/LinearLayout;

.field private s:Z

.field private t:Landroid/os/Handler;

.field private u:Landroid/content/res/Resources;

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 147
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a()Lcom/snapchat/android/analytics/RegistrationAnalytics;

    move-result-object v1

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v3}, Lcom/snapchat/android/ui/window/WindowConfiguration;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;-><init>(Laol;Lcom/snapchat/android/analytics/RegistrationAnalytics;Lajx;Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 149
    return-void
.end method

.method private constructor <init>(Laol;Lcom/snapchat/android/analytics/RegistrationAnalytics;Lajx;Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-direct {p0, p4}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c:I

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->d:I

    .line 77
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->e:J

    .line 92
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->s:Z

    .line 99
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->x:Z

    .line 100
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->y:Z

    .line 101
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->z:Z

    .line 102
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->A:Z

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->B:Ljava/lang/String;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->C:I

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->D:Ljava/util/Set;

    .line 132
    new-instance v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$1;-><init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->E:Laok;

    .line 161
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->F:Laol;

    .line 162
    iput-object p2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    .line 163
    iput-object p3, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b:Lajx;

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a()Lcom/snapchat/android/analytics/RegistrationAnalytics;

    move-result-object v1

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;-><init>(Laol;Lcom/snapchat/android/analytics/RegistrationAnalytics;Lajx;Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 155
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;I)I
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->C:I

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->B:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->D:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Land;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 67
    iget-object v1, p1, Land;->b:Lbkm;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Z)V

    sget-object v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->CLEAR:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lbkm;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbkm;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lbkm;->c()Ljava/util/List;

    move-result-object v2

    iget-boolean v5, p1, Land;->a:Z

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Ljava/lang/String;)V

    if-nez v4, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Z)V

    if-eqz v0, :cond_3

    sget-object v1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->VALID:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;)V

    if-eqz v5, :cond_0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->INVALID:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_3
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 417
    if-eqz p1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->j:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->j:Landroid/widget/Button;

    const v1, 0x7f0c01ec

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 420
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->j:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->j:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Z)Z
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->A:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Z)Z
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->y:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Z)Z
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->s:Z

    return p1
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Laol;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->F:Laol;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->s:Z

    return v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->i()V

    return-void
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->y:Z

    return v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->z:Z

    return v0
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 405
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->t:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->t:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 407
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->t:Landroid/os/Handler;

    iget-boolean v3, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->s:Z

    if-nez v3, :cond_1

    :goto_0
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 413
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 408
    goto :goto_0
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->x:Z

    return v0
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->z:Z

    return v0
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Lcom/snapchat/android/analytics/RegistrationAnalytics;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->r:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->v:I

    return v0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 513
    iget v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->k:I

    new-instance v2, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;

    iget-object v3, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v2, v3}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    const-string v0, "PickUsernameFragment"

    const-string v1, "Attempted to go to PhoneVerificationFragment"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->q:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic o(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->t:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic q(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic r(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Lajx;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b:Lajx;

    return-object v0
.end method

.method static synthetic s(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->m()V

    return-void
.end method

.method static synthetic t(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->A:Z

    return v0
.end method

.method static synthetic u(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->C:I

    return v0
.end method


# virtual methods
.method protected final a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;)V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->VALID:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->INVALID:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    if-ne p1, v0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->n:Landroid/widget/TextView;

    iget v1, p1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->thumbsUpVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->o:Landroid/widget/TextView;

    iget v1, p1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->thumbsDownVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->p:Landroid/widget/ProgressBar;

    iget v1, p1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->progressBarVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->m:Landroid/view/View;

    iget v1, p1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->redXVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 428
    if-nez p1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, -0x2

    .line 452
    if-nez p1, :cond_1

    .line 483
    :cond_0
    return-void

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 456
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 458
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const v6, 0x7f0b0002

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 459
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    new-instance v3, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;

    invoke-direct {v3, p0, v2, v0, p1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;-><init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Landroid/widget/TextView;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->r:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final g()Z
    .locals 3

    .prologue
    .line 213
    new-instance v0, Lapy;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f:Landroid/support/v4/app/FragmentActivity;

    iget v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->k:I

    invoke-direct {v0, v1, v2}, Lapy;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lapy;->show()V

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onAttach(Landroid/app/Activity;)V

    .line 171
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f:Landroid/support/v4/app/FragmentActivity;

    .line 172
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lajv;->a(Landroid/content/Context;)Lajv;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->i:Lajv;

    .line 173
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 219
    const v0, 0x7f040084

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->mFragmentLayout:Landroid/view/View;

    .line 221
    const v0, 0x7f0a02ef

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->h:Landroid/widget/ProgressBar;

    .line 223
    const v0, 0x7f0a02e6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g:Landroid/widget/EditText;

    .line 225
    const v0, 0x7f0a02ea

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->p:Landroid/widget/ProgressBar;

    .line 226
    const v0, 0x7f0a02e8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->n:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->n:Landroid/widget/TextView;

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->THUMBS_UP_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v1}, Lbaj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const v0, 0x7f0a02e9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->o:Landroid/widget/TextView;

    .line 229
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->o:Landroid/widget/TextView;

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->THUMBS_DOWN_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v1}, Lbaj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$2;-><init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->t:Landroid/os/Handler;

    .line 247
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 248
    const-string v0, ""

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 251
    if-eqz v4, :cond_8

    .line 252
    const-string v1, "defaultUsername"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const-string v0, "defaultUsername"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_0
    const-string v1, "defaultUsernameStatus"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 256
    const-string v1, "defaultUsernameStatus"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 258
    :goto_0
    const-string v5, "usernameSuggestions"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 259
    const-string v3, "usernameSuggestions"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v7, v3

    move v3, v1

    move-object v1, v7

    .line 263
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 264
    invoke-static {}, Lajx;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[^a-z0-9-_\\.]"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_1
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 269
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 271
    iput-boolean v6, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->x:Z

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g:Landroid/widget/EditText;

    new-instance v2, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$3;-><init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 299
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g:Landroid/widget/EditText;

    new-instance v2, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$4;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$4;-><init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 311
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g:Landroid/widget/EditText;

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 312
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lavh;->f(Landroid/content/Context;)V

    .line 316
    :cond_3
    const v0, 0x7f0a02ec

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->l:Landroid/widget/TextView;

    .line 317
    const v0, 0x7f0a02eb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->m:Landroid/view/View;

    .line 318
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->m:Landroid/view/View;

    new-instance v2, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$5;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$5;-><init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    const v0, 0x7f0a02ed

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->q:Landroid/widget/HorizontalScrollView;

    .line 328
    const v0, 0x7f0a02ee

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->r:Landroid/widget/LinearLayout;

    .line 330
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->u:Landroid/content/res/Resources;

    .line 331
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->u:Landroid/content/res/Resources;

    const v2, 0x7f090031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->v:I

    .line 332
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 333
    new-instance v2, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$6;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$6;-><init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 358
    const v0, 0x7f0a02e3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->j:Landroid/widget/Button;

    .line 359
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->j:Landroid/widget/Button;

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Latj;->a(Landroid/view/View;)V

    .line 360
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->j:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->j:Landroid/widget/Button;

    new-instance v2, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$7;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$7;-><init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    if-eqz v3, :cond_5

    .line 375
    sget-object v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->VALID:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;)V

    .line 376
    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Ljava/util/List;)V

    .line 377
    invoke-direct {p0, v6}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Z)V

    .line 382
    :goto_3
    new-instance v0, Lla;

    invoke-direct {v0}, Lla;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 384
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->u:Landroid/content/res/Resources;

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->w:I

    .line 386
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->k:I

    .line 387
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 264
    :cond_4
    const-string v0, ""

    goto/16 :goto_2

    .line 379
    :cond_5
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->i()V

    goto :goto_3

    :cond_6
    move-object v7, v3

    move v3, v1

    move-object v1, v7

    goto/16 :goto_1

    :cond_7
    move v1, v2

    goto/16 :goto_0

    :cond_8
    move-object v1, v3

    move v3, v2

    goto/16 :goto_1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDetach()V

    .line 178
    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f:Landroid/support/v4/app/FragmentActivity;

    .line 179
    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->i:Lajv;

    .line 180
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 206
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 207
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->F:Laol;

    const/16 v1, 0x3fc

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->E:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->b(ILaok;)V

    .line 208
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->D:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 209
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 184
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;

    iget v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->w:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->a(I)V

    .line 192
    :cond_0
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->m()V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->F:Laol;

    const/16 v1, 0x3fc

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->E:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->a(ILaok;)V

    .line 197
    return-void
.end method
