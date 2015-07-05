.class final Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;
.super Lbgb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {p0, p2, p3}, Lbgb;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1029
    const-string v0, "ProfileFragment"

    const-string v1, "profile images - shared image failed to be inserted into media store"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/ProfilePictureView;->b(Z)V

    .line 1032
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c00de

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1034
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1016
    const-string v0, "ProfileFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "profile images - shared image was inserted into media store successfully! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1019
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/ProfilePictureView;->b(Z)V

    .line 1020
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1021
    const-string v1, "android.intent.extra.STREAM"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1022
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1024
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->k(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 1025
    return-void
.end method
