.class public final Lcom/snapchat/android/discover/ui/media/VideoProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;
    }
.end annotation


# instance fields
.field public final a:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Integer;

.field public final d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, -0x1

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snapchat/android/discover/ui/media/VideoProperties;-><init>(Ljava/lang/String;Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/VideoProperties;->b:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/media/VideoProperties;->a:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    .line 37
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/media/VideoProperties;->c:Ljava/lang/Integer;

    .line 38
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/media/VideoProperties;->d:Ljava/lang/Integer;

    .line 39
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    const-string v0, "[%s %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/media/VideoProperties;->a:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/media/VideoProperties;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
