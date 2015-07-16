.class final Laqw$3;
.super Lbhb;
.source "SourceFile"


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
.method constructor <init>(Laqw;Landroid/content/Context;Lakl;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Laqw$3;->a:Laqw;

    invoke-direct {p0, p2, p3, p4, p5}, Lbhb;-><init>(Landroid/content/Context;Lakl;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lbhb;->a()V

    .line 149
    iget-object v0, p0, Laqw$3;->a:Laqw;

    iget-object v0, v0, Laqw;->d:Lbhc;

    invoke-virtual {v0}, Lbhc;->d()V

    .line 150
    iget-object v0, p0, Laqw$3;->a:Laqw;

    iget-object v0, v0, Laqw;->b:Lcom/snapchat/android/model/StoryGroup;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    .line 151
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0, p1}, Lbhb;->a(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Laqw$3;->a:Laqw;

    iget-object v0, v0, Laqw;->b:Lcom/snapchat/android/model/StoryGroup;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->SAVED:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    .line 145
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lbhb;->onPreExecute()V

    .line 139
    iget-object v0, p0, Laqw$3;->a:Laqw;

    iget-object v0, v0, Laqw;->b:Lcom/snapchat/android/model/StoryGroup;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->SAVING:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    .line 140
    return-void
.end method
