.class final Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;
.super Lbho;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;IJLandroid/os/Handler;)V
    .locals 1

    .prologue
    .line 183
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    .line 184
    invoke-direct {p0, p2, p3, p4, p5}, Lbho;-><init>(IJLandroid/os/Handler;)V

    .line 185
    invoke-static {p1, p2}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;I)I

    .line 186
    invoke-virtual {p1}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->t()V

    .line 187
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->c(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;)I

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->t()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->b(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;)Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->t()V

    goto :goto_0
.end method
