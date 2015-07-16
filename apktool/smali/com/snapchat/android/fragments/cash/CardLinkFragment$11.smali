.class final Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lza;


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
    .line 197
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    .line 201
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/ZipEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ZipEditText;->requestFocus()Z

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->requestFocus()Z

    .line 215
    return-void
.end method
