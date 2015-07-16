.class public abstract Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;,
        Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lapg;

.field private a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field protected final c:Lcom/snapchat/android/analytics/RegistrationAnalytics;

.field protected final d:Lakr;

.field public e:Landroid/support/v4/app/FragmentActivity;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/EditText;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/view/View;

.field protected j:Landroid/widget/EditText;

.field public k:Landroid/widget/Button;

.field protected l:Landroid/widget/ProgressBar;

.field protected m:Ljava/lang/String;

.field protected n:Z

.field public o:Z

.field private p:Landroid/widget/TextView;

.field private q:Landroid/os/Handler;

.field private r:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;

.field private s:Landroid/app/AlertDialog;

.field private t:I

.field private u:Lcom/snapchat/android/receiver/SmsReceiver;

.field private final v:Laph;

.field private final w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v0}, Lcom/snapchat/android/ui/window/WindowConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/analytics/RegistrationAnalytics;Lakr;Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;-><init>(Lcom/snapchat/android/analytics/RegistrationAnalytics;Lakr;Lcom/snapchat/android/ui/window/WindowConfiguration;Laph;)V

    .line 141
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/RegistrationAnalytics;Lakr;Lcom/snapchat/android/ui/window/WindowConfiguration;Laph;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p3}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->w:Ljava/util/Set;

    .line 92
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->x:Z

    .line 93
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->y:Z

    .line 94
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->z:Z

    .line 95
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->A:Z

    .line 96
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->B:Z

    .line 99
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->n:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->o:Z

    .line 103
    new-instance v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$1;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->C:Lapg;

    .line 148
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    .line 149
    iput-object p2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d:Lakr;

    .line 150
    iput-object p4, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->v:Laph;

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a()Lcom/snapchat/android/analytics/RegistrationAnalytics;

    move-result-object v0

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v1

    invoke-static {}, Laph;->a()Laph;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;-><init>(Lcom/snapchat/android/analytics/RegistrationAnalytics;Lakr;Lcom/snapchat/android/ui/window/WindowConfiguration;Laph;)V

    .line 136
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;I)I
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t:I

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->r:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->w:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 65
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->x:Z

    return p1
.end method

.method private static a([Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 567
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    .line 568
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 569
    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 570
    aget-object v3, p0, v0

    .line 571
    new-instance v4, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_0
    return-object v1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->r:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->y:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->x:Z

    return v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 401
    if-nez p1, :cond_1

    .line 402
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    :goto_1
    return-void

    .line 403
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->y:Z

    return v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->B:Z

    return v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Laph;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->v:Laph;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->B:Z

    return v0
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V
    .locals 8

    .prologue
    .line 65
    new-instance v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$13;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$13;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    new-instance v2, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$3;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c01b4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c00c8

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c0058

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00c3

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->z:Z

    return v0
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->u:Lcom/snapchat/android/receiver/SmsReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/snapchat/android/receiver/SmsReceiver;

    invoke-direct {v0}, Lcom/snapchat/android/receiver/SmsReceiver;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->u:Lcom/snapchat/android/receiver/SmsReceiver;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->u:Lcom/snapchat/android/receiver/SmsReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->A:Z

    return v0
.end method

.method static synthetic n(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->s:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic o(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->A:Z

    return v0
.end method

.method static synthetic p(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic r(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)I
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t:I

    return v0
.end method


# virtual methods
.method public abstract a(Lbls;)V
.end method

.method protected final a(Lblu;)V
    .locals 3

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    sget-object v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;->VERIFIED_NUMBER:Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    .line 724
    :goto_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "FORCE_PHONE_VERIFICATION_SUCCESS"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-static {v0}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 725
    invoke-static {}, Lakr;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Llo;

    invoke-direct {v0}, Llo;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    invoke-static {}, Lakr;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_REGISTER_PHONE_NUMBER_VERIFICATION_SUCCESS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 727
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m:Ljava/lang/String;

    invoke-static {v0}, Lakr;->a(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p1}, Lblu;->e()Lbls;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lbls;)V

    .line 730
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->v()V

    .line 732
    :cond_1
    return-void

    .line 719
    :cond_2
    invoke-static {}, Lakr;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 720
    sget-object v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;->VERIFIED_NEW_NUMBER:Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    goto :goto_0

    .line 722
    :cond_3
    sget-object v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;->REGISTERED_NUMBER:Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 579
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 735
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t()V

    .line 738
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->l:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 740
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 742
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e(Ljava/lang/String;)V

    .line 745
    :cond_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Ljava/lang/String;)V

    .line 746
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->k()V

    .line 747
    invoke-static {}, Lakr;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lll;

    invoke-direct {v0}, Lll;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 748
    :cond_1
    return-void
.end method

.method public abstract i()V
.end method

.method public final j_()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public m()Lblt$a;
    .locals 1

    .prologue
    .line 785
    sget-object v0, Lblt$a;->DEFAULT_TYPE:Lblt$a;

    return-object v0
.end method

.method public final n()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$6;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$8;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->c()V

    .line 232
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 314
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$10;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$10;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 326
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->i:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$11;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$11;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onAttach(Landroid/app/Activity;)V

    .line 171
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    .line 172
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 155
    const v0, 0x7f040085

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->mFragmentLayout:Landroid/view/View;

    .line 157
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q()V

    .line 158
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p()V

    .line 159
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->u()V

    .line 160
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->n()V

    .line 161
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->o()V

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDetach()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    .line 218
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->J()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 190
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->s:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->s:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->v:Laph;

    const/16 v1, 0x400

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->C:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->b(ILapg;)V

    .line 194
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 195
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->u:Lcom/snapchat/android/receiver/SmsReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->u:Lcom/snapchat/android/receiver/SmsReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->u:Lcom/snapchat/android/receiver/SmsReceiver;

    .line 196
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 183
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 184
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->v:Laph;

    const/16 v1, 0x400

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->C:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 185
    return-void
.end method

.method public onVerificationCodeReceivedEvent(Lbfs;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 791
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 792
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Landroid/widget/EditText;

    iget-object v1, p1, Lbfs;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->B:Z

    .line 795
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 797
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Lauh;->a(Landroid/view/View;)V

    .line 340
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 365
    const v0, 0x7f0a00db

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    .line 366
    const v0, 0x7f0a00dd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p:Landroid/widget/TextView;

    .line 367
    const v0, 0x7f0a00dc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/view/View;

    .line 369
    const v0, 0x7f0a00de

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Landroid/widget/EditText;

    .line 370
    const v0, 0x7f0a00e0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Landroid/widget/TextView;

    .line 372
    const v0, 0x7f0a00df

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->i:Landroid/view/View;

    .line 374
    const v0, 0x7f0a00e2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    .line 375
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Lauh;->a(Landroid/view/View;)V

    .line 376
    const v0, 0x7f0a00e3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->l:Landroid/widget/ProgressBar;

    .line 378
    const v0, 0x7f0a02e0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/view/View;

    .line 381
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/view/View;

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->o:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 385
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q:Landroid/os/Handler;

    .line 386
    return-void

    .line 382
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected final r()Z
    .locals 2

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {}, Lakr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected t()V
    .locals 7

    .prologue
    const v2, 0x7f0c01ba

    const v6, 0x7f0c00cb

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 419
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {}, Lakr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 422
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->z:Z

    .line 456
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 424
    invoke-static {}, Ley;->a()Ley;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ley;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 430
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 431
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 435
    :goto_1
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->z:Z

    goto :goto_0

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 437
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 438
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->z:Z

    .line 439
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 440
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 441
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 442
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 444
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->r:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;

    if-nez v0, :cond_6

    .line 445
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 446
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 447
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 453
    :goto_2
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->z:Z

    goto :goto_0

    .line 449
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method public final u()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 513
    const v0, 0x7f0a00da

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 515
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v3

    .line 516
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    move v1, v2

    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    aget-object v5, v3, v1

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 517
    :goto_1
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a:Ljava/lang/String;

    .line 518
    invoke-static {v3}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a([Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 520
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v6, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$4;

    invoke-direct {v6, p0, v3, v0, v4}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$4;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;[Ljava/lang/String;Landroid/widget/TextView;[Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4, v1, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c00c7

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->s:Landroid/app/AlertDialog;

    .line 539
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$5;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    return-void

    .line 516
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v2, v3, v2

    invoke-direct {v1, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v1

    goto/16 :goto_1
.end method

.method protected v()V
    .locals 0

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->i()V

    .line 583
    return-void
.end method

.method protected final w()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 702
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 703
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 704
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 706
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->r:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->r:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;->c()V

    .line 709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->r:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;

    .line 711
    :cond_0
    return-void
.end method

.method protected x()Z
    .locals 1

    .prologue
    .line 781
    const/4 v0, 0x1

    return v0
.end method
