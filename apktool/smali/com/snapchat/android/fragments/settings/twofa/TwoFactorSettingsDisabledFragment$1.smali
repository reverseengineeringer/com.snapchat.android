.class final Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laok;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamk;)V
    .locals 3

    .prologue
    .line 53
    invoke-static {p1}, Laol;->a(Lamk;)I

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 56
    instance-of v0, p1, Lanc;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;

    check-cast p1, Lanc;

    iget-object v1, p1, Lanc;->b:Lanc$c;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;Lanc$c;)V

    .line 60
    :cond_0
    return-void
.end method
