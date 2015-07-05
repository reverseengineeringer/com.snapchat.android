.class final Lcom/snapchat/android/fragments/cash/CardLinkFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lye;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/cash/CardLinkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$7;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$7;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$7;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardNumberEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->getCardInputError()Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$7;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    .line 132
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$7;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$7;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->requestFocus()Z

    .line 139
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method
