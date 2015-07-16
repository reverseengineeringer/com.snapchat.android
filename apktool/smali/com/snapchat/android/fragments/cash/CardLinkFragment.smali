.class public Lcom/snapchat/android/fragments/cash/CardLinkFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lrm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/cash/CardLinkFragment$6;,
        Lcom/snapchat/android/fragments/cash/CardLinkFragment$a;,
        Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;
    }
.end annotation


# instance fields
.field public a:Lcom/snapchat/android/fragments/cash/CardLinkFragment$a;

.field private b:Landroid/widget/ScrollView;

.field private c:Lcom/snapchat/android/ui/cash/CardNumberEditText;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/snapchat/android/ui/cash/CardCvvEditText;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/snapchat/android/ui/cash/ZipEditText;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/ProgressBar;

.field private r:Z

.field private s:Z

.field private t:Landroid/view/animation/Animation;

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->r:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->s:Z

    .line 570
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lawf;->g(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b:Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->pageScroll(I)Z

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->requestFocus()Z

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardNumberEditText;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    return-object v0
.end method

.method private static b(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)Ljava/lang/String;
    .locals 6
    .param p0    # Lcom/snapchat/android/api2/cash/blockers/CardInputError;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const v5, 0x7f0c01c2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 503
    sget-object v0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$6;->a:[I

    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c0036

    invoke-static {v4, v2, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 506
    :pswitch_0
    new-array v0, v3, [Ljava/lang/Object;

    const v1, 0x7f0c006c

    invoke-static {v4, v1, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 508
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c0153

    invoke-static {v4, v2, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 512
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c0155

    invoke-static {v4, v2, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 515
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c0156

    invoke-static {v4, v2, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 518
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c029e

    invoke-static {v4, v2, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c01c3

    invoke-static {v4, v2, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 521
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c0065

    invoke-static {v4, v2, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c01c1

    invoke-static {v4, v2, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 524
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c0182

    invoke-static {v4, v2, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0c01d0

    invoke-static {v4, v2, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->requestFocus()Z

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->requestFocus()Z

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 44
    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->getUnformattedText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laua;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v2, v2, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->c:Z

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v2, v2, Lcom/snapchat/android/ui/cash/CardCvvEditText;->a:Z

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->m:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/cash/ZipEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v2, v2, Lcom/snapchat/android/ui/cash/ZipEditText;->a:Z

    if-eqz v2, :cond_3

    move v2, v0

    :goto_2
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/Button;

    const v3, 0x7f0c01ec

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->r:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b:Landroid/widget/ScrollView;

    new-instance v2, Lcom/snapchat/android/fragments/cash/CardLinkFragment$5;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$5;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_3
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardExpiryEditText;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->m:Lcom/snapchat/android/ui/cash/ZipEditText;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->m:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ZipEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->pageScroll(I)Z

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardCvvEditText;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$6;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-array v0, v3, [Ljava/lang/Object;

    const v2, 0x7f0c0036

    invoke-static {v4, v2, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    new-array v0, v3, [Ljava/lang/Object;

    const v2, 0x7f0c006b

    invoke-static {v4, v2, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/ZipEditText;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->m:Lcom/snapchat/android/ui/cash/ZipEditText;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x4

    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/Button;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 293
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 295
    :try_start_0
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 296
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->q:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/fragments/cash/CardLinkFragment$a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment$a;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->u:Z

    return v0
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->mIsVisible:Z

    return v0
.end method

.method static synthetic n(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->r:Z

    return v0
.end method

.method static synthetic o(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b:Landroid/widget/ScrollView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->s:Z

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->k(Z)V

    .line 317
    new-instance v0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$3;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method public final a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 1

    .prologue
    .line 331
    new-instance v0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$4;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 92
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lawf;->g(Landroid/content/Context;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->s:Z

    .line 94
    invoke-static {}, Lakr;->aq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c01f1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c01f2

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->S()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->s:Z

    .line 100
    :cond_0
    return-void
.end method

.method public final f_()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->u:Z

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment$a;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$a;->e()V

    .line 282
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment$a;

    .line 284
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->mFragmentLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 285
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 287
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i()V

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v2, 0x2000

    .line 73
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 76
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i()V

    .line 78
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 81
    const v0, 0x7f04001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->mFragmentLayout:Landroid/view/View;

    .line 83
    const v0, 0x7f0a00c1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0020

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a00c4

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "use_default_green"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f020010

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/Button;

    const v1, 0x7f020259

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    const v0, 0x7f0a00c3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b:Landroid/widget/ScrollView;

    const v0, 0x7f0a00c0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$1;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00c5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/CardNumberEditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$7;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->setValidatedInputCallback(Lza;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    new-instance v1, Larh;

    invoke-direct {v1}, Larh;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    const v0, 0x7f0a00c6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$8;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00c7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->requestFocus()Z

    const v0, 0x7f0a00c8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$9;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->setValidatedInputCallback(Lza;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    new-instance v1, Larh;

    invoke-direct {v1}, Larh;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    const v0, 0x7f0a00c9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$10;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$10;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00ca

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a00b9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/CardCvvEditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setValidatedInputCallback(Lza;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    new-instance v1, Larh;

    invoke-direct {v1}, Larh;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    const v0, 0x7f0a00cc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00cd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l:Landroid/widget/TextView;

    const v0, 0x7f0a00cb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->k:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/ZipEditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->m:Lcom/snapchat/android/ui/cash/ZipEditText;

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->m:Lcom/snapchat/android/ui/cash/ZipEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$13;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$13;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->setValidatedInputCallback(Lza;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->m:Lcom/snapchat/android/ui/cash/ZipEditText;

    new-instance v1, Larh;

    invoke-direct {v1}, Larh;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    const v0, 0x7f0a00ce

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->n:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$14;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$14;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00cf

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->m:Lcom/snapchat/android/ui/cash/ZipEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->n:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Lauh;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00d1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->q:Landroid/widget/ProgressBar;

    .line 84
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f050002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->t:Landroid/view/animation/Animation;

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0200a1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/Button;

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method
