.class final Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/cash/CardLinkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;->a:Landroid/widget/TextView;

    .line 532
    iput-object p2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;->b:Landroid/widget/ImageView;

    .line 533
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 548
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$b;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    :cond_0
    return-void
.end method
