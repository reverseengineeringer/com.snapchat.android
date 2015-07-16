.class public final Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbgx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1204
    if-eqz p1, :cond_1

    .line 1205
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/ProfilePictureView;->f:Z

    if-nez v0, :cond_2

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iput-object p1, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    .line 1211
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(Ljava/util/List;)V

    .line 1218
    :cond_1
    :goto_0
    return-void

    .line 1214
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "profile images - pictures were loaded but user is capturing pictures now with mProfileImagesList size: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method
