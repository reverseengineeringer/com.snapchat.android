.class final Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$7;
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
    .line 244
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$7;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$7;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->f:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$7;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->e(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V

    .line 249
    return-void
.end method
