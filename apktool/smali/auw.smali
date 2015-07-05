.class public final Lauw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final INSTANCE:Lauw;

.field private static final TAG:Ljava/lang/String; = "SoftNavigationBarManager"


# instance fields
.field public mDecorView:Landroid/view/View;

.field public mDefaultBottomPadding:I

.field public mDefaultFlags:I

.field public mDefaultRightPadding:I

.field private mIsImmersiveModeEnabled:Z

.field public mIsImmersiveModeOn:Z

.field public final mIsImmersiveModeSupported:Z

.field private final mUtils:Lauv;

.field public mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lauw;

    invoke-direct {v0}, Lauw;-><init>()V

    sput-object v0, Lauw;->INSTANCE:Lauw;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lauv;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lauv;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lauw;-><init>(ZLauv;)V

    .line 49
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(ZLauv;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lauw;->mIsImmersiveModeOn:Z

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lauw;->mIsImmersiveModeEnabled:Z

    .line 53
    iput-boolean p1, p0, Lauw;->mIsImmersiveModeSupported:Z

    .line 54
    iput-object p2, p0, Lauw;->mUtils:Lauv;

    .line 55
    return-void
.end method

.method public static a()Lauw;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lauw;->INSTANCE:Lauw;

    return-object v0
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 228
    if-eqz p1, :cond_1

    .line 229
    iget v2, p0, Lauw;->mDefaultRightPadding:I

    .line 230
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    move v7, v2

    move v2, v0

    move v0, v7

    .line 239
    :goto_1
    const-string v3, "SoftNavigationBarManager"

    const-string v4, "Setting padding bottom %d right %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v1, p0, Lauw;->mDecorView:Landroid/view/View;

    iget-object v3, p0, Lauw;->mDecorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lauw;->mDecorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 241
    return-void

    .line 230
    :cond_0
    iget v0, p0, Lauw;->mDefaultBottomPadding:I

    iget-object v3, p0, Lauw;->mUtils:Lauv;

    invoke-virtual {v3}, Lauv;->b()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lauw;->mUtils:Lauv;

    iget-boolean v0, v0, Lauv;->mIsDockedBottomInLandscape:Z

    if-eqz v0, :cond_4

    .line 232
    iget v2, p0, Lauw;->mDefaultRightPadding:I

    .line 233
    if-eqz p2, :cond_2

    move v0, v1

    :goto_2
    move v7, v2

    move v2, v0

    move v0, v7

    goto :goto_1

    :cond_2
    iget v3, p0, Lauw;->mDefaultBottomPadding:I

    iget-object v0, p0, Lauw;->mUtils:Lauv;

    invoke-virtual {v0}, Lauv;->a()Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    goto :goto_2

    :cond_3
    iget v0, v0, Lauv;->mLandscapeNavHeight:I

    goto :goto_3

    .line 235
    :cond_4
    if-eqz p2, :cond_5

    move v0, v1

    .line 236
    :goto_4
    iget v2, p0, Lauw;->mDefaultBottomPadding:I

    goto :goto_1

    .line 235
    :cond_5
    iget v2, p0, Lauw;->mDefaultRightPadding:I

    iget-object v0, p0, Lauw;->mUtils:Lauv;

    invoke-virtual {v0}, Lauv;->a()Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    goto :goto_4

    :cond_6
    iget v0, v0, Lauv;->mNavWidth:I

    goto :goto_5
.end method

.method public final b()V
    .locals 5
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 174
    iget-boolean v0, p0, Lauw;->mIsImmersiveModeSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lauw;->mDecorView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-boolean v0, p0, Lauw;->mIsImmersiveModeEnabled:Z

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lauw;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 180
    iget-object v0, p0, Lauw;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, -0x401

    .line 181
    iget-object v1, p0, Lauw;->mDecorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 182
    iget-object v0, p0, Lauw;->mDecorView:Landroid/view/View;

    iget-object v1, p0, Lauw;->mDecorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lauw;->mDecorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lauw;->mDefaultRightPadding:I

    iget v4, p0, Lauw;->mDefaultBottomPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 186
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lauw;->mIsImmersiveModeEnabled:Z

    goto :goto_0
.end method

.method public final c()V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 195
    iget-boolean v0, p0, Lauw;->mIsImmersiveModeSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lauw;->mDecorView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-boolean v0, p0, Lauw;->mIsImmersiveModeEnabled:Z

    if-nez v0, :cond_2

    .line 200
    iget-object v0, p0, Lauw;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 201
    iget-object v0, p0, Lauw;->mDecorView:Landroid/view/View;

    iget v1, p0, Lauw;->mDefaultFlags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 202
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Lavh;->e(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lauw;->mIsImmersiveModeOn:Z

    invoke-virtual {p0, v0, v1}, Lauw;->a(ZZ)V

    .line 205
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lauw;->mIsImmersiveModeEnabled:Z

    goto :goto_0
.end method
