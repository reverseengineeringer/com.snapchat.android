.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$7;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 326
    invoke-static {}, Lajx;->ai()V

    .line 327
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$7;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->a:Lxn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxn;->a(Lxq;)V

    .line 328
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$7;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b:Lxr;

    invoke-virtual {v0}, Lxr;->b()V

    .line 329
    new-instance v0, Lqq;

    invoke-direct {v0}, Lqq;-><init>()V

    invoke-virtual {v0}, Lqq;->f()V

    .line 330
    return-void
.end method
