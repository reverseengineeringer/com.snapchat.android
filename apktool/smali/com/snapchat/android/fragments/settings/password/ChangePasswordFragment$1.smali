.class final Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laok;


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
    .line 73
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$1;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamk;)V
    .locals 3

    .prologue
    .line 76
    invoke-static {p1}, Laol;->a(Lamk;)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$1;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$1;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 79
    instance-of v0, p1, Lamz;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$1;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    check-cast p1, Lamz;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a(Lamz;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    instance-of v0, p1, Lamt;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$1;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    check-cast p1, Lamt;

    invoke-static {v0, p1}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;Lamt;)V

    goto :goto_0
.end method
