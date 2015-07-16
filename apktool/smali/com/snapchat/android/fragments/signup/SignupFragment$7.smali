.class final Lcom/snapchat/android/fragments/signup/SignupFragment$7;
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
    .line 359
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$7;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$7;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    .line 369
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$7;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->h(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    .line 371
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$7;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->i(Lcom/snapchat/android/fragments/signup/SignupFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->t()V

    .line 373
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$7;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/signup/SignupFragment;->b(Lcom/snapchat/android/fragments/signup/SignupFragment;Z)Z

    .line 375
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 364
    return-void
.end method
