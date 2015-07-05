.class final Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->a(Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;)Lcom/snapchat/android/ui/TextureVideoView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setLooping(Z)V

    .line 74
    return-void
.end method
