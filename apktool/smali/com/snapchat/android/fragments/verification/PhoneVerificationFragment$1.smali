.class final Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$1;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanh;)V
    .locals 5

    .prologue
    .line 106
    invoke-static {p1}, Laph;->a(Lanh;)I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$1;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$1;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 109
    instance-of v0, p1, Laoc;

    if-eqz v0, :cond_1

    .line 110
    check-cast p1, Laoc;

    .line 111
    iget-object v0, p1, Laoc;->b:Lblu;

    .line 113
    iget-boolean v1, p1, Laoc;->a:Z

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$1;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$1;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const v3, 0x7f0c02b7

    invoke-virtual {v2, v3}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$1;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const v4, 0x7f0c02b6

    invoke-virtual {v3, v4}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-virtual {v0}, Lblu;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$1;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lblu;)V

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$1;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lblu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
