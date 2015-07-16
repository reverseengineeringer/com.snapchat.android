.class final Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 127
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$6;->a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$6;->a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->b(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)Z

    .line 131
    invoke-static {p2}, Lakr;->k(Z)V

    .line 132
    const-string v0, "TOGGLE_SETTING_FLASH"

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;Z)V

    .line 133
    return-void
.end method
