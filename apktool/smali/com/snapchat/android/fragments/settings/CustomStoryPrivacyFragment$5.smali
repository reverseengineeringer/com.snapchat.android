.class final Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$5;->a:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$5;->a:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->d(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method
