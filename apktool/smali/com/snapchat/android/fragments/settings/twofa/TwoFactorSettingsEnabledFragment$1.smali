.class final Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laok;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamk;)V
    .locals 3

    .prologue
    .line 44
    invoke-static {p1}, Laol;->a(Lamk;)I

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 47
    instance-of v0, p1, Lanc;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    check-cast p1, Lanc;

    iget-object v1, p1, Lanc;->b:Lanc$c;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;Lanc$c;)V

    .line 51
    :cond_0
    return-void
.end method
