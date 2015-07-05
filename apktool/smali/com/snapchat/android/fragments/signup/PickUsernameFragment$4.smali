.class final Lcom/snapchat/android/fragments/signup/PickUsernameFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$4;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 302
    if-eqz p2, :cond_1

    .line 303
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$4;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->k(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Lcom/snapchat/android/analytics/RegistrationAnalytics;

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$4;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->i(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$4;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->j(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$4;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lkm;

    invoke-direct {v1}, Lkm;-><init>()V

    iput-object v0, v1, Lkm;->usernameSuggestion:Ljava/lang/String;

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->B()V

    .line 309
    :goto_1
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$4;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Z)Z

    goto :goto_1
.end method
