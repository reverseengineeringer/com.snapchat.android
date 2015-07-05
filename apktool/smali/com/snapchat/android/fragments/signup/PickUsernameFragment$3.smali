.class final Lcom/snapchat/android/fragments/signup/PickUsernameFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 274
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$3;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 283
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$3;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$3;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    sget-object v1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->CLEAR:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;)V

    .line 285
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$3;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->e(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$3;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Ljava/util/List;)V

    .line 287
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$3;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0, v2}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Z)Z

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$3;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    .line 292
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$3;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->C()V

    .line 294
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$3;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0, v2}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Z)Z

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$3;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->h(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Z

    .line 297
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 280
    return-void
.end method
