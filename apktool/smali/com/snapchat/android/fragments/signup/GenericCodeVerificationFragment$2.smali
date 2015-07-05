.class final Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$2;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$2;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$2;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->t()V

    .line 106
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method
