.class final Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laim$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->i()V
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
    .line 146
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$7;->a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$7;->a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->a(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v0, "TOGGLE_SETTING_FILTERS"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;Z)V

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$7;->a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->b(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)Z

    goto :goto_0
.end method
