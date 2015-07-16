.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;)V
    .locals 0

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$f$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$f$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;)Lahz;

    move-result-object v0

    invoke-virtual {v0}, Lahz;->u()Z

    .line 1089
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$f$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter$f;)Lahz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lahz;->d(Z)V

    .line 1090
    return-void
.end method
