.class final Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->a(Ljava/lang/String;)V

    .line 87
    return-void
.end method
