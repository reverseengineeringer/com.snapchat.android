.class final Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;
.super Lbgo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;IJLandroid/os/Handler;)V
    .locals 1

    .prologue
    .line 752
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    .line 753
    invoke-direct {p0, p2, p3, p4, p5}, Lbgo;-><init>(IJLandroid/os/Handler;)V

    .line 754
    invoke-static {p1, p2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;I)I

    .line 755
    invoke-virtual {p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t()V

    .line 756
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 763
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->r(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)I

    .line 762
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    :goto_0
    return-void

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;

    .line 769
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t()V

    goto :goto_0
.end method
