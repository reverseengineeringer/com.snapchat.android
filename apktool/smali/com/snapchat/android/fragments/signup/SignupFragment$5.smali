.class final Lcom/snapchat/android/fragments/signup/SignupFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/signup/SignupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/SignupFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$5;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$5;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    .line 318
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$5;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->e(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    .line 320
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$5;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->f(Lcom/snapchat/android/fragments/signup/SignupFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->p()V

    .line 322
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$5;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/signup/SignupFragment;->a(Lcom/snapchat/android/fragments/signup/SignupFragment;Z)Z

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$5;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->g(Lcom/snapchat/android/fragments/signup/SignupFragment;)Z

    .line 325
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 313
    return-void
.end method
