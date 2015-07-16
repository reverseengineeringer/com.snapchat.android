.class final Lcom/snapchat/android/fragments/cash/CardLinkFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 185
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$10;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$10;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$10;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$10;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Landroid/widget/EditText;)V

    .line 190
    return-void
.end method
