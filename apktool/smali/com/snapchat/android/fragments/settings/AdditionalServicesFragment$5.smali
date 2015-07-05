.class final Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$5;
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
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$5;->b:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$5;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$5;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$5;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
