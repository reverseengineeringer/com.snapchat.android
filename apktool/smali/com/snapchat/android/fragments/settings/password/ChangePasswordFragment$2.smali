.class final Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$2;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$2;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$2;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$2;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 183
    return-void
.end method
