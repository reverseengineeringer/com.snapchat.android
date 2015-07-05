.class final Laqw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqw;


# direct methods
.method constructor <init>(Laqw;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Laqw$1;->a:Laqw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    iget-object v3, p0, Laqw$1;->a:Laqw;

    iget-object v0, p0, Laqw$1;->a:Laqw;

    invoke-static {v0}, Laqw;->a(Laqw;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Laqw;->a(Laqw;Z)Z

    .line 90
    iget-object v0, p0, Laqw$1;->a:Laqw;

    invoke-static {v0}, Laqw;->b(Laqw;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->SPEED_USE_MPH:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Laqw$1;->a:Laqw;

    invoke-static {v4}, Laqw;->a(Laqw;)Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    iget-object v0, p0, Laqw$1;->a:Laqw;

    iget-object v3, p0, Laqw$1;->a:Laqw;

    invoke-static {v3}, Laqw;->c(Laqw;)F

    move-result v3

    invoke-static {v0, v3}, Laqw;->a(Laqw;F)V

    .line 94
    iget-object v0, p0, Laqw$1;->a:Laqw;

    invoke-static {v0}, Laqw;->a(Laqw;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MPH"

    .line 95
    :goto_1
    const-string v3, "SpeedometerView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "User switched unit preference to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    return v1

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    .line 94
    :cond_1
    const-string v0, "KPH"

    goto :goto_1
.end method
