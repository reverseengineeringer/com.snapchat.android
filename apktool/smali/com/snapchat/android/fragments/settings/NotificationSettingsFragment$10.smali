.class final Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$10;
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
.field final synthetic a:Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$10;->a:Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$10;->a:Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)Lakr;

    invoke-static {p2}, Lakr;->z(Z)V

    .line 131
    return-void
.end method
