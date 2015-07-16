.class final Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Landroid/widget/CheckBox;

.field final synthetic d:Landroid/widget/CheckBox;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Landroid/view/View;

.field final synthetic h:Landroid/view/View;

.field final synthetic i:Landroid/view/View;

.field final synthetic j:Landroid/view/View;

.field final synthetic k:Landroid/view/View;

.field final synthetic l:Landroid/view/View;

.field final synthetic m:Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->m:Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->c:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->d:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->e:Landroid/view/View;

    iput-object p7, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->f:Landroid/view/View;

    iput-object p8, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->g:Landroid/view/View;

    iput-object p9, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->h:Landroid/view/View;

    iput-object p10, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->i:Landroid/view/View;

    iput-object p11, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->j:Landroid/view/View;

    iput-object p12, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->k:Landroid/view/View;

    iput-object p13, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->l:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->m:Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)Lakr;

    invoke-static {p2}, Lakr;->D(Z)V

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->e:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->f:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->g:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->h:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->i:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->j:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->k:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;->l:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 117
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "NOTIFICATIONS_"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "ENABLED"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 118
    return-void

    .line 117
    :cond_0
    const-string v0, "DISABLED"

    goto :goto_0
.end method
