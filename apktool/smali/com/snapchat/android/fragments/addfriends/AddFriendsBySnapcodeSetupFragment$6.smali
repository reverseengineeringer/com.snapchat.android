.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$6;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$6;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->b(Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;)Lcom/snapchat/android/ui/TextureVideoView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setAlpha(F)V

    .line 166
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
