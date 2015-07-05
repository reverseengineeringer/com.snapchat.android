.class public Lcom/snapchat/android/util/debug/BugReportFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$a;


# static fields
.field public static final LOG_FILES_KEY:Ljava/lang/String; = "logs"

.field private static final PROJECT_NAMES:[Ljava/lang/CharSequence;

.field public static final SCREENSHOT_FILE_KEY:Ljava/lang/String; = "screenshots"

.field private static final SHAKE_TO_REPORT_SEND_TO_SELF_EMAIL:Ljava/lang/String; = "SHAKE_TO_REPORT_SEND_TO_SELF_EMAIL"

.field private static final TAG:Ljava/lang/String; = "BugReportFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAddRemoteLogButton:Landroid/widget/Button;

.field private mBugDescription:Landroid/widget/EditText;

.field private mClickToSendToSelfTextView:Landroid/widget/TextView;

.field private mDidUserTapEnter:Z

.field private mImageFile:Ljava/lang/String;

.field private mIsReportSubmittable:Z

.field private mLogFiles:[Ljava/lang/String;

.field private mPickProjectDialog:Landroid/app/AlertDialog$Builder;

.field private mProjectName:Ljava/lang/String;

.field private mProjectNameButton:Landroid/widget/Button;

.field private mRemoteLogRecipient:Ljava/lang/String;

.field private mScreenshotThumbnailCover:Landroid/widget/ImageView;

.field private mShouldIncludeScreenshot:Z

.field private mShouldSendReportToSelfOnly:Z

.field private mStepsToRepro:Landroid/widget/EditText;

.field private mSubmitButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "Ads"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Looksery Lens"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Cash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Chat"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Design/UI"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Discover"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Discover Sharing"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Feed"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Friends"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Here"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Send To Page"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Snap preview"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Snap receiving/opening"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Stories"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Live Story"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Login"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Registration"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Settings"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Profile"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Performance"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Localization"

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/util/debug/BugReportFragment;->PROJECT_NAMES:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mDidUserTapEnter:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mShouldIncludeScreenshot:Z

    .line 65
    iput-boolean v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mIsReportSubmittable:Z

    .line 67
    iput-boolean v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mShouldSendReportToSelfOnly:Z

    .line 74
    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/util/debug/BugReportFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mProjectName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/util/debug/BugReportFragment;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mShouldSendReportToSelfOnly:Z

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mShouldSendReportToSelfOnly:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mClickToSendToSelfTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mShouldIncludeScreenshot:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mDidUserTapEnter:Z

    return p1
.end method

.method static synthetic d(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f0a0087

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mIsReportSubmittable:Z

    return p1
.end method

.method static synthetic e(Lcom/snapchat/android/util/debug/BugReportFragment;)V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/snapchat/android/util/debug/BugReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/util/debug/BugReportFragment;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mShouldIncludeScreenshot:Z

    return v0
.end method

.method static synthetic g(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mScreenshotThumbnailCover:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mStepsToRepro:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/util/debug/BugReportFragment;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mDidUserTapEnter:Z

    return v0
.end method

.method static synthetic i()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/snapchat/android/util/debug/BugReportFragment;->PROJECT_NAMES:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/util/debug/BugReportFragment;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mIsReportSubmittable:Z

    return v0
.end method

.method static synthetic k(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mSubmitButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mRemoteLogRecipient:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mRemoteLogRecipient:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mAddRemoteLogButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic o(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mPickProjectDialog:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic p(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mProjectName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mImageFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/snapchat/android/util/debug/BugReportFragment;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mLogFiles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mBugDescription:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic t(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mProjectNameButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 403
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mAddRemoteLogButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 404
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mRemoteLogRecipient:Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mAddRemoteLogButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 408
    :cond_0
    return-void
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onAttach(Landroid/app/Activity;)V

    .line 79
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mActivity:Landroid/app/Activity;

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 90
    const v0, 0x7f040010

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 91
    iput-object v1, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mFragmentLayout:Landroid/view/View;

    .line 93
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "screenshots"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mImageFile:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "logs"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mLogFiles:[Ljava/lang/String;

    .line 96
    const v0, 0x7f0a0085

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mActivity:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0086

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mClickToSendToSelfTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mClickToSendToSelfTextView:Landroid/widget/TextView;

    const-string v2, "Send this report only to yourself?"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mClickToSendToSelfTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mClickToSendToSelfTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mClickToSendToSelfTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportFragment$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$1;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0088

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mScreenshotThumbnailCover:Landroid/widget/ImageView;

    const v0, 0x7f0a0087

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mImageFile:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mImageFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    new-instance v2, Lcom/snapchat/android/util/debug/BugReportFragment$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$3;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a008c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mStepsToRepro:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mStepsToRepro:Landroid/widget/EditText;

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportFragment$4;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$4;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mStepsToRepro:Landroid/widget/EditText;

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportFragment$5;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$5;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mBugDescription:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mBugDescription:Landroid/widget/EditText;

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportFragment$6;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$6;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mBugDescription:Landroid/widget/EditText;

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportFragment$7;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$7;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a008e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mAddRemoteLogButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mAddRemoteLogButton:Landroid/widget/Button;

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportFragment$8;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$8;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a008f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mProjectNameButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mProjectNameButton:Landroid/widget/Button;

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportFragment$9;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$9;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0090

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mSubmitButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mSubmitButton:Landroid/widget/Button;

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportFragment$10;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$10;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Which project?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/util/debug/BugReportFragment;->PROJECT_NAMES:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/snapchat/android/util/debug/BugReportFragment$2;

    invoke-direct {v3, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$2;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mPickProjectDialog:Landroid/app/AlertDialog$Builder;

    .line 98
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDetach()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->mActivity:Landroid/app/Activity;

    .line 86
    return-void
.end method
