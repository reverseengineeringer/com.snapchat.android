.class public Lcom/snapchat/android/fragments/settings/SettingsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/settings/SettingsFragment$a;,
        Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Laol;

.field private final c:Lajx;

.field private d:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private e:Latr;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 81
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->EMAIL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_IS_EMAIL_VERIFIED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_IS_PHONE_PASSWORD_CONFIRMED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->PHONE_NUMBER:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_PENDING_EMAIL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v4}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/database/SharedPreferenceKey;->DISPLAY_NAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v5}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Ldi;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ldi;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/settings/SettingsFragment;-><init>(Laol;Lajx;)V

    .line 119
    return-void
.end method

.method private constructor <init>(Laol;Lajx;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 95
    new-instance v0, Latr;

    invoke-direct {v0}, Latr;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->e:Latr;

    .line 445
    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$10;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$10;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->r:Landroid/view/View$OnClickListener;

    .line 459
    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$11;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$11;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->s:Landroid/view/View$OnClickListener;

    .line 467
    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$13;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$13;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->t:Landroid/view/View$OnClickListener;

    .line 475
    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$14;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$14;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->v:Landroid/view/View$OnClickListener;

    .line 500
    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$15;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$15;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->x:Landroid/view/View$OnClickListener;

    .line 123
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->b:Laol;

    .line 124
    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c:Lajx;

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/SettingsFragment;)Lajx;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c:Lajx;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/SettingsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/SettingsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V
    .locals 3

    .prologue
    .line 67
    const-string v0, "SettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User logging out: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->USER_INITIATED:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;)V

    invoke-static {}, Lajx;->n()V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->b:Laol;

    invoke-virtual {v0}, Laol;->e()I

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lasr;->a(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 572
    invoke-static {}, Latr;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    invoke-static {}, Lajx;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->g:Landroid/widget/TextView;

    invoke-static {}, Lajx;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->g:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->q:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 581
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 594
    :goto_1
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 586
    invoke-static {}, Lajx;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->g:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 591
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->g:Landroid/widget/TextView;

    invoke-static {}, Lajx;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private m()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 598
    invoke-static {}, Latr;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 600
    invoke-static {}, Lajx;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->m:Landroid/widget/TextView;

    invoke-static {}, Lajx;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->m:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->q:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 604
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->l:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 621
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->l:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 609
    invoke-static {}, Lajx;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lajx;->bn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 612
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->m:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 614
    invoke-static {}, Lajx;->bn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 615
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->m:Landroid/widget/TextView;

    invoke-static {}, Lajx;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 617
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->m:Landroid/widget/TextView;

    invoke-static {}, Lajx;->bn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private n()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 624
    invoke-static {}, Lajx;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->i:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 628
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    invoke-static {}, Lajx;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->j:Landroid/widget/TextView;

    invoke-static {}, Lajx;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->q:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 650
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->i:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 639
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 641
    invoke-static {}, Lajx;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 647
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->j:Landroid/widget/TextView;

    invoke-static {}, Lajx;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected final e()V
    .locals 3

    .prologue
    const v2, 0x7f0a0353

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 151
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 153
    invoke-static {}, Lajx;->aq()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :goto_0
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b()V

    .line 160
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final k()Lalw;
    .locals 1

    .prologue
    .line 666
    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$16;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$16;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f0a035f

    const v4, 0x7f0a035c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 130
    const v0, 0x7f040096

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->mFragmentLayout:Landroid/view/View;

    .line 132
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080065

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->o:I

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080064

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->p:I

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080051

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->q:I

    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0366

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0364

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$12;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$12;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0365

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$17;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$17;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0a0342

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0343

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0344

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->h:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->i()V

    const v0, 0x7f0a02f5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$18;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$18;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0347

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->i:Landroid/widget/TextView;

    const v0, 0x7f0a0348

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->j:Landroid/widget/TextView;

    const v0, 0x7f0a0349

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->k:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->n()V

    const v0, 0x7f0a0345

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a034c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->l:Landroid/widget/TextView;

    const v0, 0x7f0a034d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->m:Landroid/widget/TextView;

    const v0, 0x7f0a034e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->n:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->m()V

    const v0, 0x7f0a034a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a034f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$19;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$19;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a035b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$20;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$20;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v4}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$21;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$21;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->d(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    const-wide/16 v6, 0x7

    cmp-long v0, v4, v6

    if-ltz v0, :cond_5

    invoke-static {}, Lajx;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v3, 0x3e8

    if-lt v0, v3, :cond_5

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    const v0, 0x7f0a035e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$23;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$23;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f0a0360

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0361

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0362

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0363

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0356

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$6;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0351

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$7;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0353

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$8;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const v0, 0x7f0a0367

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c02d5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a0368

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, ""

    const-string v2, ""

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "\nGit Commit: "

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Compiled with love on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Llw;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$9;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f0a0358

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lajx;->g()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0357

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a035a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->w:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lajx;->h()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0359

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 132
    :cond_4
    const v0, 0x7f0a035d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0c024a

    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$22;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$22;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SettingsFragment"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v0, "SettingsFragment"

    const-string v1, "getPackageName failed. Continuing."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public onPhoneNumberVerifiedEvent(Lbcm;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->n()V

    .line 662
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 654
    sget-object v0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->i()V

    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->m()V

    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->n()V

    .line 657
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStart()V

    .line 139
    invoke-static {p0}, Lajx;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 140
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStop()V

    .line 145
    invoke-static {p0}, Lajx;->b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 146
    return-void
.end method
