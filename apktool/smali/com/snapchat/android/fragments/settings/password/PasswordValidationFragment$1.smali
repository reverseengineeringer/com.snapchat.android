.class final Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laok;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamk;)V
    .locals 3

    .prologue
    .line 37
    invoke-static {p1}, Laol;->a(Lamk;)I

    move-result v0

    .line 38
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->a(Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->a(Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 40
    instance-of v0, p1, Lana;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;

    check-cast p1, Lana;

    invoke-static {v0, p1}, Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;->a(Lcom/snapchat/android/fragments/settings/password/PasswordValidationFragment;Lana;)V

    .line 44
    :cond_0
    return-void
.end method
