.class public Lbgf;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveVideoToGalleryTask"


# instance fields
.field private final mCameraEventAnalytics:Lcom/snapchat/android/analytics/CameraEventAnalytics;

.field private final mContext:Landroid/content/Context;

.field private mDecryptedSnapVideo:Laip;

.field private final mNotifications:Lbgc;

.field private final mNotificationsToShow:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

.field private final mSaveSnapContext:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

.field private final mSnapVideoDecryptor:Lawz;

.field private final mStorySnap:Lajr;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lajr;Landroid/net/Uri;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;Lawz;Lbgc;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p5    # Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Lawz;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p7    # Lbgc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lbgf;->mDecryptedSnapVideo:Laip;

    .line 74
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "storySnap and videoUri are both null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lbgf;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lbgf;->mStorySnap:Lajr;

    .line 80
    iput-object p3, p0, Lbgf;->mUri:Landroid/net/Uri;

    .line 81
    iput-object p4, p0, Lbgf;->mSaveSnapContext:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    .line 82
    iput-object p5, p0, Lbgf;->mNotificationsToShow:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    .line 83
    iput-object p6, p0, Lbgf;->mSnapVideoDecryptor:Lawz;

    .line 84
    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v0

    iput-object v0, p0, Lbgf;->mCameraEventAnalytics:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 85
    iput-object p7, p0, Lbgf;->mNotifications:Lbgc;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lajr;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 48
    const/4 v3, 0x0

    new-instance v6, Lawz;

    invoke-direct {v6}, Lawz;-><init>()V

    invoke-static {}, Lbgc;->a()Lbgc;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lbgf;-><init>(Landroid/content/Context;Lajr;Landroid/net/Uri;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;Lawz;Lbgc;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 63
    const/4 v2, 0x0

    new-instance v6, Lawz;

    invoke-direct {v6}, Lawz;-><init>()V

    invoke-static {}, Lbgc;->a()Lbgc;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lbgf;-><init>(Landroid/content/Context;Lajr;Landroid/net/Uri;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;Lawz;Lbgc;)V

    .line 65
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lbgf;->mSaveSnapContext:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x1

    iget-object v1, p0, Lbgf;->mSaveSnapContext:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(ZLcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;)V

    .line 146
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lbgf;->mDecryptedSnapVideo:Laip;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lbgf;->mDecryptedSnapVideo:Laip;

    invoke-virtual {v0}, Laip;->e()V

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {p0}, Lbgf;->a()V

    .line 131
    iget-object v0, p0, Lbgf;->mNotificationsToShow:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    sget-object v1, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->ALL:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    if-ne v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lbgf;->mNotifications:Lbgc;

    invoke-virtual {v0}, Lbgc;->c()V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    invoke-virtual {p0}, Lbgf;->b()V

    .line 136
    iget-object v0, p0, Lbgf;->mNotificationsToShow:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    sget-object v1, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->NONE:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    if-eq v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lbgf;->mNotifications:Lbgc;

    invoke-virtual {v0}, Lbgc;->d()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lbgf;->mSaveSnapContext:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x1

    iget-object v1, p0, Lbgf;->mSaveSnapContext:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->b(ZLcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;)V

    .line 152
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 23
    iget-object v1, p0, Lbgf;->mStorySnap:Lajr;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbgf;->mStorySnap:Lajr;

    invoke-virtual {v1}, Lajr;->J()Lawy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lbgf;->mSnapVideoDecryptor:Lawz;

    iget-object v3, p0, Lbgf;->mStorySnap:Lajr;

    invoke-virtual {v3}, Lajr;->h()Z

    move-result v3

    invoke-virtual {v2, v1, v3, v0}, Lawz;->a(Lawy;ZZ)Laip;

    move-result-object v1

    iput-object v1, p0, Lbgf;->mDecryptedSnapVideo:Laip;

    iget-object v1, p0, Lbgf;->mDecryptedSnapVideo:Laip;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbgf;->mDecryptedSnapVideo:Laip;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbgf;->mDecryptedSnapVideo:Laip;

    invoke-virtual {v1}, Laip;->a()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lbgf;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lawt;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lbgf;->mUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lbgf;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lbgf;->mNotificationsToShow:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    sget-object v1, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->ALL:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lbgf;->mNotifications:Lbgc;

    invoke-virtual {v0}, Lbgc;->b()V

    .line 121
    :cond_0
    return-void
.end method
