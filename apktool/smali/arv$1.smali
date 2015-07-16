.class final Larv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Larv;


# direct methods
.method constructor <init>(Larv;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Larv$1;->a:Larv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 89
    iget-object v2, p0, Larv$1;->a:Larv;

    iget-object v0, p0, Larv$1;->a:Larv;

    invoke-static {v0}, Larv;->a(Larv;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Larv;->a(Larv;Z)Z

    .line 90
    iget-object v0, p0, Larv$1;->a:Larv;

    invoke-static {v0}, Larv;->b(Larv;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->SPEED_USE_MPH:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Larv$1;->a:Larv;

    invoke-static {v3}, Larv;->a(Larv;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    iget-object v0, p0, Larv$1;->a:Larv;

    iget-object v2, p0, Larv$1;->a:Larv;

    invoke-static {v2}, Larv;->c(Larv;)F

    move-result v2

    invoke-static {v0, v2}, Larv;->a(Larv;F)V

    .line 94
    return v1

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
