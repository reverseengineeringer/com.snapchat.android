.class final Lcom/snapchat/android/SnapkidzSettingsActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/SnapkidzSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapkidzSettingsActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapkidzSettingsActivity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/snapchat/android/SnapkidzSettingsActivity$6;->a:Lcom/snapchat/android/SnapkidzSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity$6;->a:Lcom/snapchat/android/SnapkidzSettingsActivity;

    new-instance v1, Lcom/snapchat/android/fragments/settings/WebFragment;

    const-string v2, "https://www.snapchat.com/terms"

    iget-object v3, p0, Lcom/snapchat/android/SnapkidzSettingsActivity$6;->a:Lcom/snapchat/android/SnapkidzSettingsActivity;

    const v4, 0x7f0c0269

    invoke-virtual {v3, v4}, Lcom/snapchat/android/SnapkidzSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/fragments/settings/WebFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "WebFragment"

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/SnapkidzSettingsActivity;->a(Lcom/snapchat/android/SnapkidzSettingsActivity;Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;)V

    .line 59
    return-void
.end method
