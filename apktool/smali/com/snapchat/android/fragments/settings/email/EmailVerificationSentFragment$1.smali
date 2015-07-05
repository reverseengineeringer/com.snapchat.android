.class final Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laok;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamk;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-static {p1}, Laol;->a(Lamk;)I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->a(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lanc;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->a(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 48
    check-cast p1, Lanc;

    iget-object v0, p1, Lanc;->b:Lanc$c;

    .line 51
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->b(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->c(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-boolean v1, v0, Lanc$c;->a:Z

    if-eqz v1, :cond_1

    .line 55
    new-instance v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;

    sget-object v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->ONE_BUTTON:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;)V

    const v1, 0x7f0c0120

    iput v1, v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mTitleResId:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Lajx;

    invoke-static {}, Lajx;->bn()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const v3, 0x7f0c011f

    invoke-static {v2, v3, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mMessage:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->a()Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    move-result-object v0

    .line 60
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v3, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    iget-object v0, v0, Lanc$c;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
