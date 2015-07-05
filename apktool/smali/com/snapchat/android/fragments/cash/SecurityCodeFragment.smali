.class public Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$5;,
        Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;,
        Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$b;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field public b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;
    .annotation build Lcgc;
    .end annotation
.end field

.field private c:Lcom/snapchat/android/ui/cash/CardCvvEditText;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->g:Z

    .line 45
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->h:Z

    .line 244
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 32
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Lcom/snapchat/android/ui/cash/CardCvvEditText;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->c:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x7f0c0154

    const v6, 0x7f0c01c2

    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c0036

    invoke-static {v4, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-eqz p0, :cond_0

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->UNKNOWN:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$5;->a:[I

    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    return-object v0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v7, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c02a0

    invoke-static {v4, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c01c3

    invoke-static {v4, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v7, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c02a0

    invoke-static {v4, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c01c3

    invoke-static {v4, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c0065

    invoke-static {v4, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c01c1

    invoke-static {v4, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x199 -> :sswitch_1
        0x1a6 -> :sswitch_0
        0x1ad -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)V
    .locals 1
    .param p1    # Lcom/snapchat/android/api2/cash/square/data/ErrorType;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 127
    new-instance v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;-><init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 53
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdg;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbdg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;

    if-eqz v0, :cond_0

    .line 89
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->h:Z

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;->b()V

    .line 95
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;

    .line 97
    const/4 v0, 0x0

    return v0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;->a()V

    goto :goto_0
.end method

.method public final g_()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method protected final i()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->mFragmentLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 103
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 104
    return-void
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$2;-><init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    const v0, 0x7f04001d

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->mFragmentLayout:Landroid/view/View;

    .line 60
    const v0, 0x7f0a00b9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/CardCvvEditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->c:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->c:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$b;

    invoke-direct {v1, p0, v2}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$b;-><init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;B)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setValidatedInputCallback(Lye;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->c:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->c:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    new-instance v2, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$4;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$4;-><init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->c:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setAlpha(F)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->c:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lavh;->g(Landroid/content/Context;)V

    :cond_0
    const v0, 0x7f0a00bb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->d:Landroid/view/View;

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->e:Landroid/widget/TextView;

    const v0, 0x7f0a00bd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$1;-><init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method
