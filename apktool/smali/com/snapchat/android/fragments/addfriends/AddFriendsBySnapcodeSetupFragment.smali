.class public Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/snapchat/android/ui/TextureVideoView;

.field private d:Landroid/widget/CheckBox;

.field private e:Lcom/squareup/otto/Bus;

.field private f:Lagi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->a:Ljava/lang/String;

    .line 42
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

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-static {}, Lagi;->a()Lagi;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;-><init>(Lcom/squareup/otto/Bus;Lagi;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/squareup/otto/Bus;Lagi;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->e:Lcom/squareup/otto/Bus;

    .line 56
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->f:Lagi;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->e:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;)Lcom/snapchat/android/ui/TextureVideoView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c:Lcom/snapchat/android/ui/TextureVideoView;

    return-object v0
.end method


# virtual methods
.method protected final e()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f0a0022

    const/4 v4, 0x0

    const/high16 v0, 0x43660000    # 230.0f

    .line 61
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 62
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 63
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 64
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 66
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 67
    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 70
    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v1, v3

    .line 71
    cmpg-float v3, v1, v0

    if-gez v3, :cond_1

    .line 74
    :goto_0
    mul-float/2addr v0, v2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v1, v0

    .line 76
    const/high16 v0, 0x7f040000

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->mFragmentLayout:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->e:Lcom/squareup/otto/Bus;

    new-instance v2, Lbfk;

    sget-object v3, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v2, v3}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 79
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/TextureVideoView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c:Lcom/snapchat/android/ui/TextureVideoView;

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$2;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->d:Landroid/widget/CheckBox;

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->d:Landroid/widget/CheckBox;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$3;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->d:Landroid/widget/CheckBox;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->AUTO_LIBRARY_SCANNING_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, v5}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    :goto_1
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$4;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c:Lcom/snapchat/android/ui/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setAlpha(F)V

    .line 141
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 125
    :cond_0
    invoke-virtual {p0, v5}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroy()V

    .line 182
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->f:Lagi;

    invoke-virtual {v0}, Lagi;->b()V

    .line 183
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 187
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->a()V

    .line 189
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->e:Lcom/squareup/otto/Bus;

    new-instance v1, Lbbq;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 146
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->e:Lcom/squareup/otto/Bus;

    new-instance v1, Lbbq;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->CLOSE:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c:Lcom/snapchat/android/ui/TextureVideoView;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c:Lcom/snapchat/android/ui/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->seekTo(I)V

    .line 154
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c:Lcom/snapchat/android/ui/TextureVideoView;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$5;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c:Lcom/snapchat/android/ui/TextureVideoView;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$6;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 169
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 171
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->f:Lagi;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lagi;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 172
    return-void
.end method
