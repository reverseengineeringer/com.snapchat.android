.class final Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$3;->a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$3;->a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->a(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$3;->a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->a(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$3;->a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->i()V

    .line 110
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
