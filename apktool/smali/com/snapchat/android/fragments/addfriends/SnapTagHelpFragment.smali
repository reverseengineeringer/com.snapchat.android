.class public Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/snapchat/android/ui/TextureVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;)Lcom/snapchat/android/ui/TextureVideoView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->b:Lcom/snapchat/android/ui/TextureVideoView;

    return-object v0
.end method


# virtual methods
.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method protected final e()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lnw;->d()V

    .line 41
    const v0, 0x7f0400a8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->mFragmentLayout:Landroid/view/View;

    .line 42
    const v0, 0x7f0a03a8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/TextureVideoView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->b:Lcom/snapchat/android/ui/TextureVideoView;

    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->mFragmentLayout:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    invoke-static {}, Lnw;->e()V

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->b:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->a()V

    .line 93
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbq;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 65
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbq;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->CLOSE:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->b:Lcom/snapchat/android/ui/TextureVideoView;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->b:Lcom/snapchat/android/ui/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->seekTo(I)V

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->b:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->b:Lcom/snapchat/android/ui/TextureVideoView;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment$2;-><init>(Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 76
    return-void
.end method
