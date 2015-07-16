.class public Lcom/snapchat/android/fragments/signup/LoginFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/LoginTask$a;


# static fields
.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:Lavm;


# instance fields
.field public a:Laze;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/Button;

.field private n:Z

.field private o:J

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private final r:Lcom/squareup/otto/Bus;

.field private final s:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Layy;

.field private final u:Lcom/snapchat/android/analytics/RegistrationAnalytics;

.field private final v:Landroid/view/View$OnClickListener;

.field private final w:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 75
    sput v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->b:I

    .line 76
    sput v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->c:I

    .line 77
    sput v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 102
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    sget-object v2, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Layy;->a()Layy;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a()Lcom/snapchat/android/analytics/RegistrationAnalytics;

    move-result-object v4

    new-instance v5, Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v5}, Lcom/snapchat/android/ui/window/WindowConfiguration;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/signup/LoginFragment;-><init>(Lcom/squareup/otto/Bus;Ljavax/inject/Provider;Layy;Lcom/snapchat/android/analytics/RegistrationAnalytics;Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    sget-object v2, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Layy;->a()Layy;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a()Lcom/snapchat/android/analytics/RegistrationAnalytics;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/signup/LoginFragment;-><init>(Lcom/squareup/otto/Bus;Ljavax/inject/Provider;Layy;Lcom/snapchat/android/analytics/RegistrationAnalytics;Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 110
    return-void
.end method

.method private constructor <init>(Lcom/squareup/otto/Bus;Ljavax/inject/Provider;Layy;Lcom/snapchat/android/analytics/RegistrationAnalytics;Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/otto/Bus;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Layy;",
            "Lcom/snapchat/android/analytics/RegistrationAnalytics;",
            "Lcom/snapchat/android/ui/window/WindowConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p5}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->n:Z

    .line 125
    new-instance v0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/signup/LoginFragment$1;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->v:Landroid/view/View$OnClickListener;

    .line 149
    new-instance v0, Lcom/snapchat/android/fragments/signup/LoginFragment$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/signup/LoginFragment$2;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->w:Landroid/text/TextWatcher;

    .line 117
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    .line 118
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->r:Lcom/squareup/otto/Bus;

    .line 119
    iput-object p2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->s:Ljavax/inject/Provider;

    .line 120
    iput-object p3, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->t:Layy;

    .line 121
    iput-object p4, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->u:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/LoginFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lakr;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lakp;->a(Lakp$b;)V

    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/snapchat/android/SnapkidzHomeActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/signup/LoginFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 442
    if-nez p1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 454
    if-nez p1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/signup/LoginFragment;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-static {v0}, Lakr;->c(Z)V

    new-instance v0, Lcom/snapchat/android/api2/LoginTask;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->a:Laze;

    iget-object v6, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->s:Ljavax/inject/Provider;

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/api2/LoginTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/LoginTask$a;Ljava/lang/String;Laze;Ljavax/inject/Provider;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/LoginTask;->execute()V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/signup/LoginFragment;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->p()V

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/signup/LoginFragment;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/signup/LoginFragment;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i()Lavm;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->e:Lavm;

    return-object v0
.end method

.method static synthetic m()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->d:I

    return v0
.end method

.method static synthetic n()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->c:I

    return v0
.end method

.method private o()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 243
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    return-void
.end method

.method private p()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 404
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    const v1, 0x7f0c0159

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 406
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 407
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 408
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->n:Z

    if-eqz v0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iput-boolean v5, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->n:Z

    .line 410
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/snapchat/android/fragments/signup/LoginFragment;->c:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/snapchat/android/fragments/signup/LoginFragment;->d:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 414
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v1

    .line 415
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 416
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 417
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 418
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->o:J

    goto :goto_0

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 421
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->n:Z

    if-eqz v0, :cond_0

    .line 422
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->n:Z

    .line 423
    new-instance v0, Lcom/snapchat/android/fragments/signup/LoginFragment$7;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/signup/LoginFragment$7;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    .line 435
    const-wide/16 v2, 0x190

    const-wide/32 v4, 0xf4240

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->o:J

    sub-long/2addr v6, v8

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 436
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 257
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->o()V

    .line 263
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 264
    new-instance v1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    iget-object v2, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v1, v2}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 265
    iget v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->q:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "PickUsernameFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 314
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->o()V

    .line 319
    const/16 v0, -0x65

    if-ne p1, v0, :cond_1

    .line 320
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/signup/LoginFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_1
    const/16 v0, -0x64

    if-ne p1, v0, :cond_2

    .line 322
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/signup/LoginFragment;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->p()V

    .line 327
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c016d

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lbjg;)V
    .locals 4

    .prologue
    .line 296
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->o()V

    .line 303
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 304
    invoke-virtual {p1}, Lbjg;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbjg;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lbjg;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    move-result-object v1

    .line 306
    iget v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->q:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "TwoFactorCodeVerificationFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 206
    sget-boolean v0, Latt;->SUPPORTS_TRANSPARENT_STATUS_BAR:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    goto :goto_0
.end method

.method public final b(Lbjg;)V
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/signup/LoginFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected final h_()Z
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 168
    invoke-static {}, Lavm;->a()Lavm;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->e:Lavm;

    .line 169
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 173
    const v0, 0x7f04007a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->mFragmentLayout:Landroid/view/View;

    .line 174
    sget v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->b:I

    if-ne v0, v2, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->b:I

    .line 178
    :cond_0
    sget v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->c:I

    if-ne v0, v2, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->c:I

    .line 182
    :cond_1
    sget v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->d:I

    if-ne v0, v2, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->d:I

    .line 186
    :cond_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->q:I

    .line 187
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v0, 0x7f0a0274

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->w:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a0276

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0275

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->i:Landroid/widget/ImageView;

    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginFragment$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/LoginFragment$3;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0277

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->w:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginFragment$4;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/LoginFragment$4;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0a0279

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->h:Landroid/widget/TextView;

    const v0, 0x7f0a0278

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->j:Landroid/widget/ImageView;

    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginFragment$5;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/LoginFragment$5;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a027b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Lauh;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginFragment$6;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/LoginFragment$6;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a027c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->l:Landroid/view/View;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_SUCCESSFUL_LOGIN_USERNAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lawf;->f(Landroid/content/Context;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020259

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->p:Landroid/graphics/drawable/Drawable;

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 187
    :cond_4
    new-instance v0, Llh;

    invoke-direct {v0}, Llh;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lawf;->f(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroyView()V

    .line 215
    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    .line 216
    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    .line 217
    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->l:Landroid/view/View;

    .line 218
    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    .line 219
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 196
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 197
    instance-of v1, v0, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;

    if-eqz v1, :cond_0

    .line 198
    check-cast v0, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;

    sget v1, Lcom/snapchat/android/fragments/signup/LoginFragment;->b:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->a(I)V

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->K()V

    .line 203
    return-void
.end method

.method public final w_()V
    .locals 3

    .prologue
    .line 276
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->o()V

    .line 282
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 283
    new-instance v1, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;

    iget-object v2, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v1, v2}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 284
    iget v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->q:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "NewUserPhoneVerificationFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    goto :goto_0
.end method
