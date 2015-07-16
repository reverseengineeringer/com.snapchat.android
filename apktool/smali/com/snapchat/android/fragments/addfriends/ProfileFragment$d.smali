.class final Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;B)V
    .locals 0

    .prologue
    .line 1221
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    .line 1225
    if-nez p1, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c00df

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1228
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->v()V

    .line 1229
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i()V

    .line 1248
    :goto_0
    return-void

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1233
    new-instance v1, Lawx;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)I

    move-result v2

    invoke-direct {v1, p1, v0, v2}, Lawx;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    sget-object v0, Lavf;->HIGH_PRIORITY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lawx;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1235
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/snapchat/android/ui/ProfilePictureView;->e:Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lcom/snapchat/android/ui/ProfilePictureView;->e:Landroid/animation/AnimatorSet;

    iget-object v2, v0, Lcom/snapchat/android/ui/ProfilePictureView;->a:Landroid/widget/ImageView;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, v0, Lcom/snapchat/android/ui/ProfilePictureView;->e:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lcom/snapchat/android/ui/ProfilePictureView;->e:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/snapchat/android/ui/ProfilePictureView$5;

    invoke-direct {v2, v0}, Lcom/snapchat/android/ui/ProfilePictureView$5;-><init>(Lcom/snapchat/android/ui/ProfilePictureView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v0, Lcom/snapchat/android/ui/ProfilePictureView;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1236
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->q(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)I

    .line 1237
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->v()V

    goto :goto_0

    .line 1241
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d$1;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1235
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
