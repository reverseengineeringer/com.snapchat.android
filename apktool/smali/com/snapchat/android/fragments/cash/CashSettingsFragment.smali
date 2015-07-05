.class public Lcom/snapchat/android/fragments/cash/CashSettingsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field public a:Lqh;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Landroid/app/AlertDialog;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/CheckBox;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 74
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Lsu$b;)Lsq;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Lsu$b;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 351
    new-instance v0, Lsu;

    invoke-direct {v0, p0, p1}, Lsu;-><init>(Ljava/lang/String;Lsu$b;)V

    return-object v0
.end method

.method protected static a(Lsu$b;)Lsq;
    .locals 1
    .param p0    # Lsu$b;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 344
    new-instance v0, Lsu;

    invoke-direct {v0, p0}, Lsu;-><init>(Lsu$b;)V

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Landroid/widget/CompoundButton;Landroid/view/View;Landroid/widget/ProgressBar;ZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 50
    new-instance v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;ZLandroid/widget/CompoundButton;Landroid/widget/ProgressBar;Landroid/view/View;Ljava/lang/String;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 462
    new-instance v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Ljava/lang/Integer;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 477
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->n()V

    return-void
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->o()V

    return-void
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->p()V

    return-void
.end method

.method protected static i()Lqv;
    .locals 1

    .prologue
    .line 333
    new-instance v0, Lrf;

    invoke-direct {v0}, Lrf;-><init>()V

    return-object v0
.end method

.method protected static l()Lrv;
    .locals 1

    .prologue
    .line 338
    new-instance v0, Lrv;

    invoke-direct {v0}, Lrv;-><init>()V

    return-object v0
.end method

.method protected static m()Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;
    .locals 1

    .prologue
    .line 434
    new-instance v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;-><init>()V

    return-object v0
.end method

.method private n()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 280
    invoke-static {}, Lajx;->at()Ljava/lang/String;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    .line 282
    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_0
    invoke-static {}, Lajx;->as()Ljava/lang/String;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_1

    .line 286
    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->getDrawable(Lcom/snapchat/android/api2/cash/square/data/CardBrand;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 294
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 295
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 296
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 299
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    return-void
.end method

.method private o()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const v2, -0x777778

    .line 305
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d:Landroid/widget/TextView;

    const v1, 0x7f0c0236

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 306
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 312
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 316
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 322
    invoke-static {}, Lajx;->av()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 324
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->m:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 329
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->m:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 327
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->m:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Z)Lsu$b;
    .locals 1
    .param p1    # Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 382
    new-instance v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;

    invoke-direct {v0, p0, p2, p1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;ZLcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 79
    const v0, 0x7f040022

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->mFragmentLayout:Landroid/view/View;

    .line 81
    const v0, 0x7f0a00e9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a00ea

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d:Landroid/widget/TextView;

    const v0, 0x7f0a00e8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00eb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->f:Landroid/widget/ImageView;

    const v0, 0x7f0a00ec

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->g:Landroid/widget/ProgressBar;

    const v0, 0x7f0a00ed

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00ee

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->j:Landroid/widget/TextView;

    const v0, 0x7f0a00f0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->k:Landroid/widget/TextView;

    const v0, 0x7f0a00f1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->l:Landroid/widget/ProgressBar;

    const v0, 0x7f0a00f3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->m:Landroid/view/View;

    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$1;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    invoke-static {}, Lajx;->aw()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$6;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->m:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00f4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lajx;->ar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a:Lqh;

    invoke-static {}, Lajx;->ap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqh;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->n()V

    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->p()V

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->o()V

    goto :goto_0
.end method

.method public updateCardDetailsViewOnDetailsProvided(Lbbf;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Ljava/lang/Integer;)V

    .line 430
    return-void
.end method
