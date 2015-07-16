.class final Larw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Larw;


# direct methods
.method constructor <init>(Larw;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Larw$1;->a:Larw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 82
    iget-object v2, p0, Larw$1;->a:Larw;

    iget-object v0, p0, Larw$1;->a:Larw;

    iget-boolean v0, v0, Larw;->e:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Larw;->e:Z

    .line 83
    iget-object v0, p0, Larw$1;->a:Larw;

    iget-object v0, v0, Larw;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_TEMPERATURE_SCALE_IMPERIAL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Larw$1;->a:Larw;

    iget-boolean v3, v3, Larw;->e:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    iget-object v0, p0, Larw$1;->a:Larw;

    invoke-virtual {v0}, Larw;->b()V

    .line 87
    return v1

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
