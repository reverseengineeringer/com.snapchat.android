.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$10;
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
    .line 362
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$10;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 366
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    invoke-static {}, Lcom/addlive/platform/ADL;->r()Lcom/addlive/service/Responder;

    move-result-object v1

    const-string v2, "global.die"

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->setProperty(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method
