.class final Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;
.super Lbhb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t()V
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
    .line 1074
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {p0, p2, p3}, Lbhb;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProfilePictureView;->b(Z)V

    .line 1093
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c00de

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1095
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProfilePictureView;->b(Z)V

    .line 1081
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1082
    const-string v1, "android.intent.extra.STREAM"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1083
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 1086
    return-void
.end method
