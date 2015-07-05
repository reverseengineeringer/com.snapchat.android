.class final Laom$2;
.super Lbgb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laom;->b(Lcom/snapchat/android/model/StorySnapLogbook;Laom$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/StorySnapLogbook;

.field final synthetic b:Laom$a;

.field final synthetic c:Laom;


# direct methods
.method constructor <init>(Laom;Landroid/content/Context;Lajr;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;Lcom/snapchat/android/model/StorySnapLogbook;Laom$a;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Laom$2;->c:Laom;

    iput-object p6, p0, Laom$2;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    iput-object p7, p0, Laom$2;->b:Laom$a;

    invoke-direct {p0, p2, p3, p4, p5}, Lbgb;-><init>(Landroid/content/Context;Lajr;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lbgb;->a()V

    .line 121
    iget-object v0, p0, Laom$2;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 122
    iget-object v0, p0, Laom$2;->b:Laom$a;

    invoke-interface {v0}, Laom$a;->d()V

    .line 123
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1}, Lbgb;->a(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Laom$2;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->SAVED:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 115
    iget-object v0, p0, Laom$2;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-static {v0}, Laop;->b(Lajr;)V

    .line 116
    iget-object v0, p0, Laom$2;->b:Laom$a;

    invoke-interface {v0}, Laom$a;->c()V

    .line 117
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lbgb;->onPreExecute()V

    .line 108
    iget-object v0, p0, Laom$2;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->SAVING:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 109
    iget-object v0, p0, Laom$2;->b:Laom$a;

    invoke-interface {v0}, Laom$a;->a()V

    .line 110
    return-void
.end method
