.class final Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laok;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamk;)V
    .locals 3

    .prologue
    .line 49
    invoke-static {p1}, Laol;->a(Lamk;)I

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 52
    instance-of v0, p1, Lana;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;

    check-cast p1, Lana;

    invoke-static {v0, p1}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;Lana;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    instance-of v0, p1, Lamy;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;

    check-cast p1, Lamy;

    invoke-static {v0, p1}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;Lamy;)V

    goto :goto_0
.end method
