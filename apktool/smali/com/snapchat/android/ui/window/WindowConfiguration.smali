.class public final Lcom/snapchat/android/ui/window/WindowConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;,
        Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;
    }
.end annotation


# instance fields
.field public a:Landroid/view/Window;

.field public b:Landroid/view/View;

.field private final c:Landroid/content/res/Resources;

.field private final d:Lasq;

.field private final e:Lauw;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lasq;

    invoke-direct {v1}, Lasq;-><init>()V

    invoke-static {}, Lauw;->a()Lauw;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/ui/window/WindowConfiguration;-><init>(Landroid/content/res/Resources;Lasq;Lauw;)V

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Lasq;Lauw;)V
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->c:Landroid/content/res/Resources;

    .line 83
    iput-object p2, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->d:Lasq;

    .line 84
    iput-object p3, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->e:Lauw;

    .line 85
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/snapchat/android/ui/window/WindowConfiguration;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const-string v0, "WindowConfiguration"

    const-string v2, "Attempt to set window configuration on uninitialized window"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BACKGROUND_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    if-ne p1, v0, :cond_4

    :cond_1
    move v0, v2

    .line 125
    :goto_1
    iget-object v3, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->a:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x200

    const/16 v6, 0x13

    if-lt v5, v6, :cond_2

    const v3, 0x4000200

    :cond_2
    and-int/2addr v4, v3

    if-eqz v4, :cond_5

    :goto_2
    if-nez v2, :cond_6

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->a:Landroid/view/Window;

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 126
    :cond_3
    :goto_3
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->e:Lauw;

    invoke-virtual {v0}, Lauw;->b()V

    :goto_4
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BACKGROUND_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->c:Landroid/content/res/Resources;

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 124
    goto :goto_1

    :cond_5
    move v2, v1

    .line 125
    goto :goto_2

    :cond_6
    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->a:Landroid/view/Window;

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_3

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->e:Lauw;

    invoke-virtual {v0}, Lauw;->c()V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->a:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/window/WindowConfiguration;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
