.class final Landroid/support/v4/view/ViewCompat$Api21ViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1107
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getElevation(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1130
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatApi21;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1115
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatApi21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTranslationZ(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1140
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatApi21;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final requestApplyInsets(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1120
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatApi21;->requestApplyInsets(Landroid/view/View;)V

    .line 1121
    return-void
.end method

.method public final setElevation(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1125
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatApi21;->setElevation(Landroid/view/View;F)V

    .line 1126
    return-void
.end method

.method public final setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0

    .prologue
    .line 1145
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatApi21;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 1146
    return-void
.end method

.method public final setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1110
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatApi21;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 1111
    return-void
.end method

.method public final setTranslationZ(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1135
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatApi21;->setTranslationZ(Landroid/view/View;F)V

    .line 1136
    return-void
.end method
